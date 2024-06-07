#ifndef _ROS_motor_control_MotorCommand_h
#define _ROS_motor_control_MotorCommand_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace motor_control
{

  class MotorCommand : public ros::Msg
  {
    public:
      typedef uint8_t _channel_type;
      _channel_type channel;
      typedef float _angle_type;
      _angle_type angle;

    MotorCommand():
      channel(0),
      angle(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      *(outbuffer + offset + 0) = (this->channel >> (8 * 0)) & 0xFF;
      offset += sizeof(this->channel);
      union {
        float real;
        uint32_t base;
      } u_angle;
      u_angle.real = this->angle;
      *(outbuffer + offset + 0) = (u_angle.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_angle.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_angle.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_angle.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->angle);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      this->channel =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->channel);
      union {
        float real;
        uint32_t base;
      } u_angle;
      u_angle.base = 0;
      u_angle.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_angle.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_angle.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_angle.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->angle = u_angle.real;
      offset += sizeof(this->angle);
     return offset;
    }

    virtual const char * getType() override { return "motor_control/MotorCommand"; };
    virtual const char * getMD5() override { return "db68853cfad241b5e822c1fa82650502"; };

  };

}
#endif
