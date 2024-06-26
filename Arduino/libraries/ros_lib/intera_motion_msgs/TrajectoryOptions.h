#ifndef _ROS_intera_motion_msgs_TrajectoryOptions_h
#define _ROS_intera_motion_msgs_TrajectoryOptions_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "intera_core_msgs/InteractionControlCommand.h"
#include "intera_motion_msgs/TrackingOptions.h"
#include "ros/time.h"

namespace intera_motion_msgs
{

  class TrajectoryOptions : public ros::Msg
  {
    public:
      typedef const char* _interpolation_type_type;
      _interpolation_type_type interpolation_type;
      typedef bool _interaction_control_type;
      _interaction_control_type interaction_control;
      typedef intera_core_msgs::InteractionControlCommand _interaction_params_type;
      _interaction_params_type interaction_params;
      typedef bool _nso_start_offset_allowed_type;
      _nso_start_offset_allowed_type nso_start_offset_allowed;
      typedef bool _nso_check_end_offset_type;
      _nso_check_end_offset_type nso_check_end_offset;
      typedef intera_motion_msgs::TrackingOptions _tracking_options_type;
      _tracking_options_type tracking_options;
      typedef ros::Time _end_time_type;
      _end_time_type end_time;
      typedef float _path_interpolation_step_type;
      _path_interpolation_step_type path_interpolation_step;
      enum { CARTESIAN = CARTESIAN };
      enum { JOINT = JOINT };

    TrajectoryOptions():
      interpolation_type(""),
      interaction_control(0),
      interaction_params(),
      nso_start_offset_allowed(0),
      nso_check_end_offset(0),
      tracking_options(),
      end_time(),
      path_interpolation_step(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      uint32_t length_interpolation_type = strlen(this->interpolation_type);
      varToArr(outbuffer + offset, length_interpolation_type);
      offset += 4;
      memcpy(outbuffer + offset, this->interpolation_type, length_interpolation_type);
      offset += length_interpolation_type;
      union {
        bool real;
        uint8_t base;
      } u_interaction_control;
      u_interaction_control.real = this->interaction_control;
      *(outbuffer + offset + 0) = (u_interaction_control.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->interaction_control);
      offset += this->interaction_params.serialize(outbuffer + offset);
      union {
        bool real;
        uint8_t base;
      } u_nso_start_offset_allowed;
      u_nso_start_offset_allowed.real = this->nso_start_offset_allowed;
      *(outbuffer + offset + 0) = (u_nso_start_offset_allowed.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->nso_start_offset_allowed);
      union {
        bool real;
        uint8_t base;
      } u_nso_check_end_offset;
      u_nso_check_end_offset.real = this->nso_check_end_offset;
      *(outbuffer + offset + 0) = (u_nso_check_end_offset.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->nso_check_end_offset);
      offset += this->tracking_options.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->end_time.sec >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->end_time.sec >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->end_time.sec >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->end_time.sec >> (8 * 3)) & 0xFF;
      offset += sizeof(this->end_time.sec);
      *(outbuffer + offset + 0) = (this->end_time.nsec >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->end_time.nsec >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->end_time.nsec >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->end_time.nsec >> (8 * 3)) & 0xFF;
      offset += sizeof(this->end_time.nsec);
      offset += serializeAvrFloat64(outbuffer + offset, this->path_interpolation_step);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      uint32_t length_interpolation_type;
      arrToVar(length_interpolation_type, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_interpolation_type; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_interpolation_type-1]=0;
      this->interpolation_type = (char *)(inbuffer + offset-1);
      offset += length_interpolation_type;
      union {
        bool real;
        uint8_t base;
      } u_interaction_control;
      u_interaction_control.base = 0;
      u_interaction_control.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->interaction_control = u_interaction_control.real;
      offset += sizeof(this->interaction_control);
      offset += this->interaction_params.deserialize(inbuffer + offset);
      union {
        bool real;
        uint8_t base;
      } u_nso_start_offset_allowed;
      u_nso_start_offset_allowed.base = 0;
      u_nso_start_offset_allowed.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->nso_start_offset_allowed = u_nso_start_offset_allowed.real;
      offset += sizeof(this->nso_start_offset_allowed);
      union {
        bool real;
        uint8_t base;
      } u_nso_check_end_offset;
      u_nso_check_end_offset.base = 0;
      u_nso_check_end_offset.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->nso_check_end_offset = u_nso_check_end_offset.real;
      offset += sizeof(this->nso_check_end_offset);
      offset += this->tracking_options.deserialize(inbuffer + offset);
      this->end_time.sec =  ((uint32_t) (*(inbuffer + offset)));
      this->end_time.sec |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->end_time.sec |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      this->end_time.sec |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      offset += sizeof(this->end_time.sec);
      this->end_time.nsec =  ((uint32_t) (*(inbuffer + offset)));
      this->end_time.nsec |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->end_time.nsec |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      this->end_time.nsec |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      offset += sizeof(this->end_time.nsec);
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->path_interpolation_step));
     return offset;
    }

    virtual const char * getType() override { return "intera_motion_msgs/TrajectoryOptions"; };
    virtual const char * getMD5() override { return "d6c6806743ac9695334265046d57235e"; };

  };

}
#endif
