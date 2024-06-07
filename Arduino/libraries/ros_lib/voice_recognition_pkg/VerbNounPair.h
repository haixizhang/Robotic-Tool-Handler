#ifndef _ROS_voice_recognition_pkg_VerbNounPair_h
#define _ROS_voice_recognition_pkg_VerbNounPair_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace voice_recognition_pkg
{

  class VerbNounPair : public ros::Msg
  {
    public:
      typedef int32_t _verb_type;
      _verb_type verb;
      typedef int32_t _noun_type;
      _noun_type noun;

    VerbNounPair():
      verb(0),
      noun(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      union {
        int32_t real;
        uint32_t base;
      } u_verb;
      u_verb.real = this->verb;
      *(outbuffer + offset + 0) = (u_verb.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_verb.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_verb.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_verb.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->verb);
      union {
        int32_t real;
        uint32_t base;
      } u_noun;
      u_noun.real = this->noun;
      *(outbuffer + offset + 0) = (u_noun.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_noun.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_noun.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_noun.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->noun);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      union {
        int32_t real;
        uint32_t base;
      } u_verb;
      u_verb.base = 0;
      u_verb.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_verb.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_verb.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_verb.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->verb = u_verb.real;
      offset += sizeof(this->verb);
      union {
        int32_t real;
        uint32_t base;
      } u_noun;
      u_noun.base = 0;
      u_noun.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_noun.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_noun.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_noun.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->noun = u_noun.real;
      offset += sizeof(this->noun);
     return offset;
    }

    virtual const char * getType() override { return "voice_recognition_pkg/VerbNounPair"; };
    virtual const char * getMD5() override { return "3bdf7358f298eae1a5f20bdac9f65d0e"; };

  };

}
#endif
