// Generated by gencpp from file wam_control/RTCartPos.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_RTCARTPOS_H
#define WAM_CONTROL_MESSAGE_RTCARTPOS_H


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
struct RTCartPos_
{
  typedef RTCartPos_<ContainerAllocator> Type;

  RTCartPos_()
    : position()
    , rate_limits()  {
      position.assign(0.0);

      rate_limits.assign(0.0);
  }
  RTCartPos_(const ContainerAllocator& _alloc)
    : position()
    , rate_limits()  {
  (void)_alloc;
      position.assign(0.0);

      rate_limits.assign(0.0);
  }



   typedef boost::array<float, 3>  _position_type;
  _position_type position;

   typedef boost::array<float, 3>  _rate_limits_type;
  _rate_limits_type rate_limits;




  typedef boost::shared_ptr< ::wam_control::RTCartPos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_control::RTCartPos_<ContainerAllocator> const> ConstPtr;

}; // struct RTCartPos_

typedef ::wam_control::RTCartPos_<std::allocator<void> > RTCartPos;

typedef boost::shared_ptr< ::wam_control::RTCartPos > RTCartPosPtr;
typedef boost::shared_ptr< ::wam_control::RTCartPos const> RTCartPosConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_control::RTCartPos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_control::RTCartPos_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'wam_control': ['/home/froglake/reach_and_grasp_ws/src/wam_control/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::RTCartPos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::RTCartPos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::RTCartPos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::RTCartPos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::RTCartPos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::RTCartPos_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_control::RTCartPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f40423d4ca09896785d982c621cba554";
  }

  static const char* value(const ::wam_control::RTCartPos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf40423d4ca098967ULL;
  static const uint64_t static_value2 = 0x85d982c621cba554ULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_control::RTCartPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_control/RTCartPos";
  }

  static const char* value(const ::wam_control::RTCartPos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_control::RTCartPos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[3] position\n\
float32[3] rate_limits\n\
";
  }

  static const char* value(const ::wam_control::RTCartPos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_control::RTCartPos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.rate_limits);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RTCartPos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_control::RTCartPos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_control::RTCartPos_<ContainerAllocator>& v)
  {
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position[i]);
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

#endif // WAM_CONTROL_MESSAGE_RTCARTPOS_H
