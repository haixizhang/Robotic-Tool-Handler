#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
import speech_recognition as sr
from pydub import AudioSegment
import os
import spacy

# Function to convert m4a file to wav
def convert_m4a_to_wav(m4a_file, wav_file):
    audio = AudioSegment.from_file(m4a_file, format="m4a")
    audio.export(wav_file, format="wav")

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

# Function to extract NLP information from text
def extract_nlp_info(text):
    nlp = spacy.load("en_core_web_sm")
    doc = nlp(text)

    verbs = [token.text for token in doc if token.pos_ == "VERB"]
    adjectives = [token.text for token in doc if token.pos_ == "ADJ"]
    nouns = [token.text for token in doc if token.pos_ == "NOUN"]

    return verbs, adjectives, nouns

if __name__ == "__main__":
    # Initialize ROS node
    rospy.init_node('speech_processing_node', anonymous=True)

    # Create publishers for verbs, adjectives, and nouns
    verbs_pub = rospy.Publisher('verbs', String, queue_size=10)
    adjectives_pub = rospy.Publisher('adjectives', String, queue_size=10)
    nouns_pub = rospy.Publisher('nouns', String, queue_size=10)

    # Set rate for publishing
    rate = rospy.Rate(1)  # 1hz

    while not rospy.is_shutdown():
    
        m4a_file_path = os.path.join(os.path.expanduser('~'), "ros_ws/src/voice_recognition_pkg/voice/chip.m4a")
        wav_file_path = os.path.join(os.getcwd(), "converted_audio.wav")

        # Convert audio file
        convert_m4a_to_wav(m4a_file_path, wav_file_path)

        # Recognize speech from the converted wav file
        command = recognize_from_wav(wav_file_path)

        if command:
            rospy.loginfo("Command: %s", command)

            # Extract linguistic elements from the command
            verbs, adjectives, nouns = extract_nlp_info(command)

            # Convert lists to string for publishing
            verbs_str = ', '.join(verbs)
            adjectives_str = ', '.join(adjectives)
            nouns_str = ', '.join(nouns)

            # Publish the extracted elements
            verbs_pub.publish(verbs_str)
            adjectives_pub.publish(adjectives_str)
            nouns_pub.publish(nouns_str)

            rospy.loginfo("Verbs: %s", verbs_str)
            rospy.loginfo("Adjectives: %s", adjectives_str)
            rospy.loginfo("Nouns: %s", nouns_str)

