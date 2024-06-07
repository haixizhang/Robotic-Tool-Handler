#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int32  # Import Int32 for both verbs and nouns
import speech_recognition as sr
from pydub import AudioSegment
import os
import spacy
from voice_recognition_pkg.msg import VerbNounPair
from pydub.playback import play
import random

# Dictionary for action verbs
action_dictionary = {
    "give": 0,
    "hand": 0,
    "pass": 0,
    "pick": 0,
    "return": 1,
    "put": 1,
}

# Dictionary for nouns
noun_dictionary = {
    # "wrench": 0,
    "banana": 1,
    # "chip": 2,
    # "brick": 3,
    # "hammer": 4,
    # "marker": 5,
    # "padlock": 6,
    # "meat": 7,
    # "screwdriver": 8,
    # "spatula": 9,
    "tennis": 10,
    # "block": 11,
    "apple": 12,
    "bottle": 13,
    "cell": 14,
    "scissor": 17,
}
selected_num = None
listening = True

# Subscriber callback function
def object_number_callback(msg):
    global selected_num, listening
    if listening:
        selected_num = msg.data
        rospy.loginfo("Received object number: %d", selected_num)
        listening = False

# Function to convert m4a file to wav
def convert_and_play_audio(m4a_file, wav_file):
    audio = AudioSegment.from_file(m4a_file, format="m4a")
    audio.export(wav_file, format="wav")
    play(audio)

# Function to recognize speech from a wav file
def recognize_from_wav(file_path):
    recognizer = sr.Recognizer()

    with sr.AudioFile(file_path) as source:
        audio = recognizer.record(source)

    try:
        rospy.loginfo("Recognizing...")
        text = recognizer.recognize_google(audio)
        rospy.loginfo("You said: %s", text)
        return text.lower()
    except sr.UnknownValueError:
        rospy.logwarn("Could not understand audio.")
        return None
    except sr.RequestError as e:
        rospy.logerr("Google Speech Recognition request failed; %s", e)
        return None

# Updated function to extract NLP information from text
def extract_nlp_info(text):
    nlp = spacy.load("en_core_web_sm")
    doc = nlp(text)

    # Extract verbs as integers
    verbs = [action_dictionary.get(token.text, token.text) for token in doc if token.pos_ == "VERB"]

    # Extract nouns as integers using the noun_dictionary
    nouns = [noun_dictionary.get(token.text, token.text) for token in doc if token.pos_ == "NOUN"]

    return verbs, nouns

if __name__ == "__main__":
    # Initialize ROS node
    rospy.init_node('speech_processing_node', anonymous=True)
 
    # Create publishers for verbs and nouns (Int32)
    verb_noun_pub = rospy.Publisher('verb_noun', VerbNounPair, queue_size=10)
    rospy.Subscriber("object_number", Int32, object_number_callback)

    rospy.loginfo("Waiting for object number...")
    rate = rospy.Rate(0.0000001)

    while not rospy.is_shutdown():
        if selected_num is not None:

            selected_object = next(name for name, num in noun_dictionary.items() if num == selected_num)
            rospy.loginfo("Selected object: %s", selected_object)          

            # Prepare file paths based on selected object
            base_path = os.path.join(os.path.expanduser('~'), "ros_ws/src/voice_recognition_pkg/voice")
            m4a_file_path = os.path.join(base_path, f"{selected_object}.m4a")
            wav_file_path = os.path.join(os.getcwd(), f"{selected_object}_converted.wav")

            # Play the audio file and convert it
            convert_and_play_audio(m4a_file_path, wav_file_path)

            # Recognize speech from the converted wav file
            command = recognize_from_wav(wav_file_path)
 

            if command:
                rospy.loginfo("Command: %s", command)

                # Extract linguistic elements from the command
                verbs, nouns = extract_nlp_info(command)

                # Directly publish the first verb and noun, assuming there's always one of each
                if verbs and isinstance(verbs[0], int) and nouns and isinstance(nouns[0], int):
                    verb_noun_msg = VerbNounPair()
                    verb_noun_msg.verb = verbs[0]
                    verb_noun_msg.noun = nouns[0]
                    verb_noun_pub.publish(verb_noun_msg)
                    rospy.loginfo("Published verb: %d, noun: %d", verbs[0], nouns[0])
                else:
                    rospy.logwarn("No valid verb-noun pair found in command.")
            selected_num =None
            listening = True
        rate.sleep()
    # Shut down the node after publishing the message
    rospy.signal_shutdown('Completed speech processing task.')
