#include <ros.h>
#include <std_msgs/Float64.h>

ros::NodeHandle nh;

std_msgs::Float64 pot_msg;
ros::Publisher pub("touch_fb", &pot_msg);

const int SOFT_POT_PIN_1 = A0; // First potentiometer

const int GRAPH_LENGTH = 40;

void setup() {
  nh.initNode();
  nh.advertise(pub);

  pinMode(SOFT_POT_PIN_1, INPUT);
}

void loop() {
  //pot_msg.potvalues.length(2); // Specify the length of the array
  int first_raw = analogRead(SOFT_POT_PIN_1);
  
  pot_msg.data = first_raw/1023.0*10;
  pub.publish(&pot_msg);

  nh.spinOnce();
  delay(500);
}
