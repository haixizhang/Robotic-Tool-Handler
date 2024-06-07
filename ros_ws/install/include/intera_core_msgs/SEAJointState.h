// Generated by gencpp from file intera_core_msgs/SEAJointState.msg
// DO NOT EDIT!


#ifndef INTERA_CORE_MSGS_MESSAGE_SEAJOINTSTATE_H
#define INTERA_CORE_MSGS_MESSAGE_SEAJOINTSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace intera_core_msgs
{
template <class ContainerAllocator>
struct SEAJointState_
{
  typedef SEAJointState_<ContainerAllocator> Type;

  SEAJointState_()
    : header()
    , name()
    , commanded_position()
    , commanded_velocity()
    , commanded_acceleration()
    , commanded_effort()
    , actual_position()
    , actual_velocity()
    , actual_effort()
    , gravity_model_effort()
    , gravity_only()
    , interaction_torque()
    , hysteresis_model_effort()
    , crosstalk_model_effort()
    , hystState(0.0)  {
    }
  SEAJointState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , commanded_position(_alloc)
    , commanded_velocity(_alloc)
    , commanded_acceleration(_alloc)
    , commanded_effort(_alloc)
    , actual_position(_alloc)
    , actual_velocity(_alloc)
    , actual_effort(_alloc)
    , gravity_model_effort(_alloc)
    , gravity_only(_alloc)
    , interaction_torque(_alloc)
    , hysteresis_model_effort(_alloc)
    , crosstalk_model_effort(_alloc)
    , hystState(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _name_type;
  _name_type name;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _commanded_position_type;
  _commanded_position_type commanded_position;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _commanded_velocity_type;
  _commanded_velocity_type commanded_velocity;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _commanded_acceleration_type;
  _commanded_acceleration_type commanded_acceleration;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _commanded_effort_type;
  _commanded_effort_type commanded_effort;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _actual_position_type;
  _actual_position_type actual_position;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _actual_velocity_type;
  _actual_velocity_type actual_velocity;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _actual_effort_type;
  _actual_effort_type actual_effort;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _gravity_model_effort_type;
  _gravity_model_effort_type gravity_model_effort;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _gravity_only_type;
  _gravity_only_type gravity_only;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _interaction_torque_type;
  _interaction_torque_type interaction_torque;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _hysteresis_model_effort_type;
  _hysteresis_model_effort_type hysteresis_model_effort;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _crosstalk_model_effort_type;
  _crosstalk_model_effort_type crosstalk_model_effort;

   typedef double _hystState_type;
  _hystState_type hystState;





  typedef boost::shared_ptr< ::intera_core_msgs::SEAJointState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::intera_core_msgs::SEAJointState_<ContainerAllocator> const> ConstPtr;

}; // struct SEAJointState_

typedef ::intera_core_msgs::SEAJointState_<std::allocator<void> > SEAJointState;

typedef boost::shared_ptr< ::intera_core_msgs::SEAJointState > SEAJointStatePtr;
typedef boost::shared_ptr< ::intera_core_msgs::SEAJointState const> SEAJointStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::intera_core_msgs::SEAJointState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::intera_core_msgs::SEAJointState_<ContainerAllocator1> & lhs, const ::intera_core_msgs::SEAJointState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.name == rhs.name &&
    lhs.commanded_position == rhs.commanded_position &&
    lhs.commanded_velocity == rhs.commanded_velocity &&
    lhs.commanded_acceleration == rhs.commanded_acceleration &&
    lhs.commanded_effort == rhs.commanded_effort &&
    lhs.actual_position == rhs.actual_position &&
    lhs.actual_velocity == rhs.actual_velocity &&
    lhs.actual_effort == rhs.actual_effort &&
    lhs.gravity_model_effort == rhs.gravity_model_effort &&
    lhs.gravity_only == rhs.gravity_only &&
    lhs.interaction_torque == rhs.interaction_torque &&
    lhs.hysteresis_model_effort == rhs.hysteresis_model_effort &&
    lhs.crosstalk_model_effort == rhs.crosstalk_model_effort &&
    lhs.hystState == rhs.hystState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::intera_core_msgs::SEAJointState_<ContainerAllocator1> & lhs, const ::intera_core_msgs::SEAJointState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace intera_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::intera_core_msgs::SEAJointState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::intera_core_msgs::SEAJointState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::intera_core_msgs::SEAJointState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5df7bfe6612daccc934b34dad7800762";
  }

  static const char* value(const ::intera_core_msgs::SEAJointState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5df7bfe6612dacccULL;
  static const uint64_t static_value2 = 0x934b34dad7800762ULL;
};

template<class ContainerAllocator>
struct DataType< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "intera_core_msgs/SEAJointState";
  }

  static const char* value(const ::intera_core_msgs::SEAJointState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is a message that holds data to describe the state of a set of torque controlled joints.\n"
"#\n"
"# The state of each joint (revolute or prismatic) is defined by:\n"
"#  * the position of the joint (rad or m),\n"
"#  * the velocity of the joint (rad/s or m/s) and\n"
"#  * the effort that is applied in the joint (Nm or N).\n"
"#\n"
"# Each joint is uniquely identified by its name\n"
"# The header specifies the time at which the joint states were recorded. All the joint states\n"
"# in one message have to be recorded at the same time.\n"
"#\n"
"# This message consists of a multiple arrays, one for each part of the joint state.\n"
"# The goal is to make each of the fields optional. When e.g. your joints have no\n"
"# effort associated with them, you can leave the effort array empty.\n"
"#\n"
"# All arrays in this message should have the same size, or be empty.\n"
"# This is the only way to uniquely associate the joint name with the correct\n"
"# states.\n"
"\n"
"\n"
"Header header\n"
"\n"
"string[]  name\n"
"float64[] commanded_position\n"
"float64[] commanded_velocity\n"
"float64[] commanded_acceleration\n"
"float64[] commanded_effort\n"
"float64[] actual_position\n"
"float64[] actual_velocity\n"
"float64[] actual_effort\n"
"# This includes the inertial feed forward torques when applicable.\n"
"float64[] gravity_model_effort\n"
"# This is the torque required to hold the arm against gravity returned by KDL\n"
"# if the arm was stationary.  This does not include inertial feed forward\n"
"# torques (even when we have them) or any of the corrections (i.e. spring\n"
"# hysteresis, crosstalk, etc) we make to the KDL model.\n"
"float64[] gravity_only\n"
"# This is the torque produced by the interactionController plugin. When interaction\n"
"# control is on, this will be added to torque_bias in VelocityController7DOF.\n"
"float64[] interaction_torque\n"
"float64[] hysteresis_model_effort\n"
"float64[] crosstalk_model_effort\n"
"float64   hystState\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::intera_core_msgs::SEAJointState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.commanded_position);
      stream.next(m.commanded_velocity);
      stream.next(m.commanded_acceleration);
      stream.next(m.commanded_effort);
      stream.next(m.actual_position);
      stream.next(m.actual_velocity);
      stream.next(m.actual_effort);
      stream.next(m.gravity_model_effort);
      stream.next(m.gravity_only);
      stream.next(m.interaction_torque);
      stream.next(m.hysteresis_model_effort);
      stream.next(m.crosstalk_model_effort);
      stream.next(m.hystState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SEAJointState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::intera_core_msgs::SEAJointState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::intera_core_msgs::SEAJointState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "commanded_position[]" << std::endl;
    for (size_t i = 0; i < v.commanded_position.size(); ++i)
    {
      s << indent << "  commanded_position[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.commanded_position[i]);
    }
    s << indent << "commanded_velocity[]" << std::endl;
    for (size_t i = 0; i < v.commanded_velocity.size(); ++i)
    {
      s << indent << "  commanded_velocity[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.commanded_velocity[i]);
    }
    s << indent << "commanded_acceleration[]" << std::endl;
    for (size_t i = 0; i < v.commanded_acceleration.size(); ++i)
    {
      s << indent << "  commanded_acceleration[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.commanded_acceleration[i]);
    }
    s << indent << "commanded_effort[]" << std::endl;
    for (size_t i = 0; i < v.commanded_effort.size(); ++i)
    {
      s << indent << "  commanded_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.commanded_effort[i]);
    }
    s << indent << "actual_position[]" << std::endl;
    for (size_t i = 0; i < v.actual_position.size(); ++i)
    {
      s << indent << "  actual_position[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.actual_position[i]);
    }
    s << indent << "actual_velocity[]" << std::endl;
    for (size_t i = 0; i < v.actual_velocity.size(); ++i)
    {
      s << indent << "  actual_velocity[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.actual_velocity[i]);
    }
    s << indent << "actual_effort[]" << std::endl;
    for (size_t i = 0; i < v.actual_effort.size(); ++i)
    {
      s << indent << "  actual_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.actual_effort[i]);
    }
    s << indent << "gravity_model_effort[]" << std::endl;
    for (size_t i = 0; i < v.gravity_model_effort.size(); ++i)
    {
      s << indent << "  gravity_model_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.gravity_model_effort[i]);
    }
    s << indent << "gravity_only[]" << std::endl;
    for (size_t i = 0; i < v.gravity_only.size(); ++i)
    {
      s << indent << "  gravity_only[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.gravity_only[i]);
    }
    s << indent << "interaction_torque[]" << std::endl;
    for (size_t i = 0; i < v.interaction_torque.size(); ++i)
    {
      s << indent << "  interaction_torque[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.interaction_torque[i]);
    }
    s << indent << "hysteresis_model_effort[]" << std::endl;
    for (size_t i = 0; i < v.hysteresis_model_effort.size(); ++i)
    {
      s << indent << "  hysteresis_model_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.hysteresis_model_effort[i]);
    }
    s << indent << "crosstalk_model_effort[]" << std::endl;
    for (size_t i = 0; i < v.crosstalk_model_effort.size(); ++i)
    {
      s << indent << "  crosstalk_model_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.crosstalk_model_effort[i]);
    }
    s << indent << "hystState: ";
    Printer<double>::stream(s, indent + "  ", v.hystState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERA_CORE_MSGS_MESSAGE_SEAJOINTSTATE_H
