#ifndef _ROS_my_subscriber_example_pkg_Age_h
#define _ROS_my_subscriber_example_pkg_Age_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace my_subscriber_example_pkg
{

  class Age : public ros::Msg
  {
    public:
      typedef float _years_type;
      _years_type years;
      typedef float _months_type;
      _months_type months;
      typedef float _days_type;
      _days_type days;

    Age():
      years(0),
      months(0),
      days(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_years;
      u_years.real = this->years;
      *(outbuffer + offset + 0) = (u_years.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_years.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_years.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_years.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->years);
      union {
        float real;
        uint32_t base;
      } u_months;
      u_months.real = this->months;
      *(outbuffer + offset + 0) = (u_months.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_months.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_months.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_months.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->months);
      union {
        float real;
        uint32_t base;
      } u_days;
      u_days.real = this->days;
      *(outbuffer + offset + 0) = (u_days.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_days.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_days.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_days.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->days);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_years;
      u_years.base = 0;
      u_years.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_years.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_years.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_years.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->years = u_years.real;
      offset += sizeof(this->years);
      union {
        float real;
        uint32_t base;
      } u_months;
      u_months.base = 0;
      u_months.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_months.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_months.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_months.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->months = u_months.real;
      offset += sizeof(this->months);
      union {
        float real;
        uint32_t base;
      } u_days;
      u_days.base = 0;
      u_days.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_days.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_days.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_days.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->days = u_days.real;
      offset += sizeof(this->days);
     return offset;
    }

    virtual const char * getType() override { return "my_subscriber_example_pkg/Age"; };
    virtual const char * getMD5() override { return "e8088e290d061dabc94e1feafd4db363"; };

  };

}
#endif
