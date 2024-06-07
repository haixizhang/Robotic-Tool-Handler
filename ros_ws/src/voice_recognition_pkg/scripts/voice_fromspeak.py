#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
import speech_recognition as sr
import spacy

def listen():
    recognizer = sr.Recognizer()
    sr.Microphone.list_microphone_names()
    with sr.Microphone(device_index=13) as source:
        print("Listening for 5 seconds...")
        recognizer.adjust_for_ambient_noise(source)
        audio = recognizer.listen(source, timeout=5)

    try:
        print("Recognizing...")
        text = recognizer.recognize_google(audio)
        print("You said: {}".format(text))
        return text.lower()
    except sr.UnknownValueError:
        print("Could not understand audio.")
        return None
    except sr.RequestError as e:
        print("Google Speech Recognition request failed; {0}".format(e))
        return None

def extract_nlp_info(text):
    nlp = spacy.load("en_core_web_sm")
    doc = nlp(text)

    verbs = [token.text for token in doc if token.pos_ == "VERB"]
    adjectives = [token.text for token in doc if token.pos_ == "ADJ"]
    nouns = [token.text for token in doc if token.pos_ == "NOUN"]

    return verbs, adjectives, nouns

def voice_publisher():
    # Initialize the ROS node
    rospy.init_node('voice_publisher_node')

    # Create a publisher object for publishing String messages on the 'voice_commands' topic
    pub = rospy.Publisher('voice_commands', String, queue_size=10)

    # Set the rate of the loop
    rate = rospy.Rate(10)  # 10hz

    # Loop until the node is shut down
    while not rospy.is_shutdown():
        # Call your voice detection logic
        command = listen()

        if command:
            # Extract NLP information if needed
            verbs, adjectives, nouns = extract_nlp_info(command)
            print("Verbs:", verbs)
            print("Adjectives:", adjectives)
            print("Nouns:", nouns)

            # Publish the detected text to the 'voice_commands' topic
            pub.publish(command)

        # Sleep for the remainder of the loop rate
        rate.sleep()

if __name__ == '__main__':
    try:
        voice_publisher()
    except rospy.ROSInterruptException:
        pass
