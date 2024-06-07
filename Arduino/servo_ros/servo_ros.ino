#include <PololuMaestro.h>
#include <ros.h>
#include <voice_recognition_pkg/VerbNounPair.h>
#include <sensor_msgs/JointState.h>

ros::NodeHandle nh;

#ifdef SERIAL_PORT_HARDWARE_OPEN
  #define maestroSerial SERIAL_PORT_HARDWARE_OPEN
#else
  #include <SoftwareSerial.h>
  SoftwareSerial maestroSerial(10, 11);
#endif

MicroMaestro maestro(maestroSerial);

bool finger_joint_received = false;  // Flag to check if finger joint states have been received 
int closePositionMotor0 = 7500; //close position for motor 0
int closePositionMotor1 = 7000; //close position for motor 1
int openPositionMotor0 = 10000; //open position for motor 0
int openPositionMotor1 = 2000; //open position for motor 1
int closeDelay = 5000;
int openDelay = 5000;


// Handler function for received VerbNounPair messages
void verbNounCallback(const voice_recognition_pkg::VerbNounPair& msg) {
  if (!finger_joint_received) return;  // Only process if finger joints have been received
  maestro.setTarget(0, openPositionMotor0);
  maestro.setTarget(1, openPositionMotor1);
  delay(openDelay);
  switch (msg.noun) {
    case 0: // Apple
      maestro.setSpeed(1, 15);
      maestro.setAcceleration(1, 10);
      maestro.setTarget(0, 8000);
      delay(closeDelay);
      maestro.setTarget(1, 4000);
      break;
    case 1: // Banana
      maestro.setTarget(0, 7500);
      maestro.setTarget(1, 4000);
      break;
    case 2: // Bottle
      maestro.setTarget(0, 7000);
      maestro.setTarget(1, 4000);
      break;
    case 3: // Cell
      maestro.setTarget(0, 7500);
      maestro.setTarget(1, 4000);
      break;
    case 4: // Computer
      maestro.setTarget(0, 7200);
      maestro.setTarget(1, 4000);
      break;
    //case 5: // Scissor
      //maestro.setTarget(0, 7400);
      //break;
    case 6: // Tennis
      maestro.setTarget(0, 8000);
      maestro.setTarget(1, 4000);
      break;
    default:
      break;
  }
  delay(closeDelay);
  //open 
  maestro.setTarget(0, openPositionMotor0);
  maestro.setTarget(1, openPositionMotor1);
  delay(openDelay);
  //close
  maestro.setTarget(0, closePositionMotor0);
  maestro.setTarget(1, closePositionMotor1);
  finger_joint_received = false;  // Reset the flag after action
}

// Handler function for finger joint states
void fingerJointCallback(const sensor_msgs::JointState& msg) {
  finger_joint_received = true;  // Set the flag when finger joint states are received
}

// Subscriber to the verb_noun topic
ros::Subscriber<voice_recognition_pkg::VerbNounPair> subVerbNoun("verb_noun", &verbNounCallback);
// Subscriber to the finger joint states topic
ros::Subscriber<sensor_msgs::JointState> subFingerJoints("joint_states", &fingerJointCallback);

void setup()
{
  maestroSerial.begin(9600);
  nh.initNode();
  nh.subscribe(subVerbNoun);
  nh.subscribe(subFingerJoints);
}

void loop() {
  nh.spinOnce();
}
