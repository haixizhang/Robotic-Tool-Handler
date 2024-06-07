#ifndef _ROS_vision_msgs_BoundingBox3DArray_h
#define _ROS_vision_msgs_BoundingBox3DArray_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"
#include "vision_msgs/BoundingBox3D.h"

namespace vision_msgs
{

  class BoundingBox3DArray : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      uint32_t boxes_length;
      typedef vision_msgs::BoundingBox3D _boxes_type;
      _boxes_type st_boxes;
      _boxes_type * boxes;

    BoundingBox3DArray():
      header(),
      boxes_length(0), st_boxes(), boxes(nullptr)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->boxes_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->boxes_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->boxes_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->boxes_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->boxes_length);
      for( uint32_t i = 0; i < boxes_length; i++){
      offset += this->boxes[i].serialize(outbuffer + offset);
      }
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      uint32_t boxes_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      boxes_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      boxes_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      boxes_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->boxes_length);
      if(boxes_lengthT > boxes_length)
        this->boxes = (vision_msgs::BoundingBox3D*)realloc(this->boxes, boxes_lengthT * sizeof(vision_msgs::BoundingBox3D));
      boxes_length = boxes_lengthT;
      for( uint32_t i = 0; i < boxes_length; i++){
      offset += this->st_boxes.deserialize(inbuffer + offset);
        memcpy( &(this->boxes[i]), &(this->st_boxes), sizeof(vision_msgs::BoundingBox3D));
      }
     return offset;
    }

    virtual const char * getType() override { return "vision_msgs/BoundingBox3DArray"; };
    virtual const char * getMD5() override { return "9e1a3932308592aa1b20232d818486db"; };

  };

}
#endif
