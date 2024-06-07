// This file is now modified by Enis Zuo
#include <PololuMaestro.h>
#include <ros.h>
#include <voice_recognition_pkg/VerbNounPair.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32MultiArray.h>

ros::NodeHandle nh;
std_msgs::String str_msg;
ros::Publisher pubTest("test_topic", &str_msg);

#ifdef SERIAL_PORT_HARDWARE_OPEN
  #define maestroSerial SERIAL_PORT_HARDWARE_OPEN
#else
  #include <SoftwareSerial.h>
  SoftwareSerial maestroSerial(10, 11);
#endif

MicroMaestro maestro(maestroSerial);

bool newCommandAvailable = false;  // Flag to check if a new command has been received
voice_recognition_pkg::VerbNounPair lastCommand;  // Store the last command received
std_msgs::Float32MultiArray angleCommand;

int closePositionMotor0 = 7000; // Close position for motor 0
int closePositionMotor1 = 7000; // Close position for motor 1
int openPositionMotor0 = 10000; // Open position for motor 0
int openPositionMotor1 = 10000; // Open position for motor 1

int minimum_angle = 0;

void verbNounCallback(const voice_recognition_pkg::VerbNounPair& msg) {
  lastCommand = msg;  // Store the received message
  setFingerJoint(lastCommand);
  return;
}

void angleCallback(const std_msgs::Float32MultiArray& msg){
  angleCommand = msg;
  moveFirstFingerJoint(angleCommand);
  moveSecondFingerJoint(angleCommand);
  return;
}

int first_finger_angle_to_ms(float angle){
  return abs(angle)/1.571 * (openPositionMotor0 - closePositionMotor0) + closePositionMotor0;
}

int second_finger_angle_to_ms(float angle){
  return abs(angle)/1.571 * (openPositionMotor1 - closePositionMotor1) + closePositionMotor1;
}

void moveFirstFingerJoint(const std_msgs::Float32MultiArray angleMsg){
  maestro.setSpeed(1, 15);
  maestro.setAcceleration(1, 10);
  int first_finger_angle = first_finger_angle_to_ms(angleMsg.data[0]);
  // char data[32];
  // sprintf(data, "%d", first_finger_angle);
  // str_msg.data = data;
  // pubTest.publish(&str_msg);
  if (first_finger_angle < minimum_angle){
    first_finger_angle = minimum_angle;
  }
  // int second_finger_angle = second_finger_angle_to_ms(angleMsg.data[1]);
  // if (second_finger_angle > 2500){
  //   second_finger_angle = 2500;
  // }
  maestro.setTarget(0, first_finger_angle);
  // maestro.setTarget(1, second_finger_angle);
}

void moveSecondFingerJoint(const std_msgs::Float32MultiArray angleMsg){
  maestro.setSpeed(1, 15);
  maestro.setAcceleration(1, 10);
  // int first_finger_angle = first_finger_angle_to_ms(angleMsg.data[0]);
  // char data[32];
  // sprintf(data, "%d", first_finger_angle);
  // str_msg.data = data;
  // pubTest.publish(&str_msg);
  // if (first_finger_angle < minimum_angle){
  //   first_finger_angle = minimum_angle;
  // }
  int second_finger_angle = second_finger_angle_to_ms(angleMsg.data[1]);
  if (second_finger_angle > 2500){
    second_finger_angle = 2500;
  }
  // maestro.setTarget(0, first_finger_angle);
  maestro.setTarget(1, second_finger_angle);
}

void setFingerJoint(const voice_recognition_pkg::VerbNounPair lastCommand) {

  switch (lastCommand.noun) {
    case 0: // Apple
      minimum_angle = 8000;
      break;
    case 1: // Banana
      minimum_angle = 7500;
      break;
    case 2: // Bottle
      minimum_angle = 7000;
      break;
    case 3: // Cell
      minimum_angle = 7500;
      break;
    case 4: // Computer
      minimum_angle = 7200;
      break;
    case 6: // Tennis
      minimum_angle = 8000;
      break;
    default:
      break;
  }
  return;
}

unsigned long lastTime = 0;
unsigned long interval = 50; 

ros::Subscriber<voice_recognition_pkg::VerbNounPair> subVerbNoun("verb_noun", &verbNounCallback);
ros::Subscriber<std_msgs::Float32MultiArray> subFingerJoints("finger_joint_states", &angleCallback);

void setup() {
  pinMode(13, OUTPUT);
  maestroSerial.begin(9600);
  nh.initNode();
  nh.subscribe(subFingerJoints);
  nh.subscribe(subVerbNoun);
  nh.advertise(pubTest);
}

void loop() {
    unsigned long currentTime = millis();
  if (currentTime - lastTime > interval) {
    lastTime = currentTime;
    nh.spinOnce(); // Process incoming messages
    // Additional periodic tasks here
  }
}
