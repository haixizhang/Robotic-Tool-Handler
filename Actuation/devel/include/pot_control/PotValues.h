// Generated by gencpp from file pot_control/PotValues.msg
// DO NOT EDIT!


#ifndef POT_CONTROL_MESSAGE_POTVALUES_H
#define POT_CONTROL_MESSAGE_POTVALUES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pot_control/PotValue.h>

namespace pot_control
{
template <class ContainerAllocator>
struct PotValues_
{
  typedef PotValues_<ContainerAllocator> Type;

  PotValues_()
    : potvalues()  {
    }
  PotValues_(const ContainerAllocator& _alloc)
    : potvalues(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::pot_control::PotValue_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::pot_control::PotValue_<ContainerAllocator> >> _potvalues_type;
  _potvalues_type potvalues;





  typedef boost::shared_ptr< ::pot_control::PotValues_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pot_control::PotValues_<ContainerAllocator> const> ConstPtr;

}; // struct PotValues_

typedef ::pot_control::PotValues_<std::allocator<void> > PotValues;

typedef boost::shared_ptr< ::pot_control::PotValues > PotValuesPtr;
typedef boost::shared_ptr< ::pot_control::PotValues const> PotValuesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pot_control::PotValues_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pot_control::PotValues_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pot_control::PotValues_<ContainerAllocator1> & lhs, const ::pot_control::PotValues_<ContainerAllocator2> & rhs)
{
  return lhs.potvalues == rhs.potvalues;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pot_control::PotValues_<ContainerAllocator1> & lhs, const ::pot_control::PotValues_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pot_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pot_control::PotValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pot_control::PotValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pot_control::PotValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pot_control::PotValues_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pot_control::PotValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pot_control::PotValues_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pot_control::PotValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e183ac20561a041ec8e4a989a1a2404";
  }

  static const char* value(const ::pot_control::PotValues_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e183ac20561a041ULL;
  static const uint64_t static_value2 = 0xec8e4a989a1a2404ULL;
};

template<class ContainerAllocator>
struct DataType< ::pot_control::PotValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pot_control/PotValues";
  }

  static const char* value(const ::pot_control::PotValues_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pot_control::PotValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "PotValue[] potvalues\n"
"\n"
"================================================================================\n"
"MSG: pot_control/PotValue\n"
"float32[2] values\n"
;
  }

  static const char* value(const ::pot_control::PotValues_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pot_control::PotValues_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.potvalues);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PotValues_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pot_control::PotValues_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pot_control::PotValues_<ContainerAllocator>& v)
  {
    s << indent << "potvalues[]" << std::endl;
    for (size_t i = 0; i < v.potvalues.size(); ++i)
    {
      s << indent << "  potvalues[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pot_control::PotValue_<ContainerAllocator> >::stream(s, indent + "    ", v.potvalues[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POT_CONTROL_MESSAGE_POTVALUES_H