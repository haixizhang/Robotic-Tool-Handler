#include <SoftwareSerial.h>

const int rxPin = 11;
const int txPin = 12;

SoftwareSerial maestroSerial(rxPin, txPin);

void setup() {
  // put your setup code here, to run once:
  maestroSerial.begin(57600);

  maestroSerial.write(0xAA);
}

void loop() {
  // put your main code here, to run repeatedly:
  setTargetRadian(0, 0.0);
  //setTarget(0, 4000);
  delay(2000);

  setTargetRadian(0, 3.1415);
  //setTarget(0, 8000);
  delay(2000);

 // setTargetRadian(0, 3.14159/2);

  //delay(2000);
}

void setTargetRadian(unsigned char channel, float angleRadians){
  const unsigned int minPulseWidth = 4000;
  const unsigned int maxPulseWidth = 8000;

  unsigned int target = minPulseWidth + (unsigned int)((angleRadians / 3.14159) * (maxPulseWidth - minPulseWidth));

  
  maestroSerial.write(0x84);
  maestroSerial.write(channel);
  maestroSerial.write(target & 0x7F);
  maestroSerial.write((target >> 7) & 0x7F);
}


void setTarget(unsigned char channel, unsigned int target) {
  maestroSerial.write(0x84);
  maestroSerial.write(channel);
  maestroSerial.write(target & 0x7F);
  maestroSerial.write((target >> 7) & 0x7F);
}