#ifndef _ROS_motor_control_MotorCommands_h
#define _ROS_motor_control_MotorCommands_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "motor_control/MotorCommand.h"

namespace motor_control
{

  class MotorCommands : public ros::Msg
  {
    public:
      uint32_t motorcommands_length;
      typedef motor_control::MotorCommand _motorcommands_type;
      _motorcommands_type st_motorcommands;
      _motorcommands_type * motorcommands;

    MotorCommands():
      motorcommands_length(0), st_motorcommands(), motorcommands(nullptr)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      *(outbuffer + offset + 0) = (this->motorcommands_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->motorcommands_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->motorcommands_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->motorcommands_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->motorcommands_length);
      for( uint32_t i = 0; i < motorcommands_length; i++){
      offset += this->motorcommands[i].serialize(outbuffer + offset);
      }
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      uint32_t motorcommands_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      motorcommands_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      motorcommands_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      motorcommands_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->motorcommands_length);
      if(motorcommands_lengthT > motorcommands_length)
        this->motorcommands = (motor_control::MotorCommand*)realloc(this->motorcommands, motorcommands_lengthT * sizeof(motor_control::MotorCommand));
      motorcommands_length = motorcommands_lengthT;
      for( uint32_t i = 0; i < motorcommands_length; i++){
      offset += this->st_motorcommands.deserialize(inbuffer + offset);
        memcpy( &(this->motorcommands[i]), &(this->st_motorcommands), sizeof(motor_control::MotorCommand));
      }
     return offset;
    }

    virtual const char * getType() override { return "motor_control/MotorCommands"; };
    virtual const char * getMD5() override { return "b2edb3d2f4d8f2a09fe7cbec56216411"; };

  };

}
#endif
