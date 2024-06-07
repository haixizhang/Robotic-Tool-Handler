#ifndef _ROS_pot_control_PotValue_h
#define _ROS_pot_control_PotValue_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace pot_control
{

  class PotValue : public ros::Msg
  {
    public:
      float values[2];

    PotValue():
      values()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      for( uint32_t i = 0; i < 2; i++){
      union {
        float real;
        uint32_t base;
      } u_valuesi;
      u_valuesi.real = this->values[i];
      *(outbuffer + offset + 0) = (u_valuesi.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_valuesi.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_valuesi.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_valuesi.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->values[i]);
      }
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      for( uint32_t i = 0; i < 2; i++){
      union {
        float real;
        uint32_t base;
      } u_valuesi;
      u_valuesi.base = 0;
      u_valuesi.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_valuesi.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_valuesi.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_valuesi.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->values[i] = u_valuesi.real;
      offset += sizeof(this->values[i]);
      }
     return offset;
    }

    virtual const char * getType() override { return "pot_control/PotValue"; };
    virtual const char * getMD5() override { return "c334281ada2d017b8a6955b9529fd69a"; };

  };

}
#endif
