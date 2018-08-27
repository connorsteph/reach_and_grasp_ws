// Generated by gencpp from file wam_control/RTOrtnPos.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_RTORTNPOS_H
#define WAM_CONTROL_MESSAGE_RTORTNPOS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wam_control
{
template <class ContainerAllocator>
struct RTOrtnPos_
{
  typedef RTOrtnPos_<ContainerAllocator> Type;

  RTOrtnPos_()
    : orientation()
    , rate_limits()  {
      orientation.assign(0.0);

      rate_limits.assign(0.0);
  }
  RTOrtnPos_(const ContainerAllocator& _alloc)
    : orientation()
    , rate_limits()  {
  (void)_alloc;
      orientation.assign(0.0);

      rate_limits.assign(0.0);
  }



   typedef boost::array<float, 4>  _orientation_type;
  _orientation_type orientation;

   typedef boost::array<float, 4>  _rate_limits_type;
  _rate_limits_type rate_limits;




  typedef boost::shared_ptr< ::wam_control::RTOrtnPos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_control::RTOrtnPos_<ContainerAllocator> const> ConstPtr;

}; // struct RTOrtnPos_

typedef ::wam_control::RTOrtnPos_<std::allocator<void> > RTOrtnPos;

typedef boost::shared_ptr< ::wam_control::RTOrtnPos > RTOrtnPosPtr;
typedef boost::shared_ptr< ::wam_control::RTOrtnPos const> RTOrtnPosConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_control::RTOrtnPos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_control::RTOrtnPos_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'wam_control': ['/home/fuego/reach_and_grasp_ws/src/wam_control/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::RTOrtnPos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::RTOrtnPos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::RTOrtnPos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::RTOrtnPos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::RTOrtnPos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::RTOrtnPos_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_control::RTOrtnPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b352081db430205c87e0e439f09a0b2";
  }

  static const char* value(const ::wam_control::RTOrtnPos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b352081db430205ULL;
  static const uint64_t static_value2 = 0xc87e0e439f09a0b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_control::RTOrtnPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_control/RTOrtnPos";
  }

  static const char* value(const ::wam_control::RTOrtnPos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_control::RTOrtnPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[4] orientation\n\
float32[4] rate_limits\n\
";
  }

  static const char* value(const ::wam_control::RTOrtnPos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_control::RTOrtnPos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.orientation);
      stream.next(m.rate_limits);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RTOrtnPos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_control::RTOrtnPos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_control::RTOrtnPos_<ContainerAllocator>& v)
  {
    s << indent << "orientation[]" << std::endl;
    for (size_t i = 0; i < v.orientation.size(); ++i)
    {
      s << indent << "  orientation[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.orientation[i]);
    }
    s << indent << "rate_limits[]" << std::endl;
    for (size_t i = 0; i < v.rate_limits.size(); ++i)
    {
      s << indent << "  rate_limits[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.rate_limits[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_CONTROL_MESSAGE_RTORTNPOS_H