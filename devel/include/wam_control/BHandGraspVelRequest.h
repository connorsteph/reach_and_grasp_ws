// Generated by gencpp from file wam_control/BHandGraspVelRequest.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_BHANDGRASPVELREQUEST_H
#define WAM_CONTROL_MESSAGE_BHANDGRASPVELREQUEST_H


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
struct BHandGraspVelRequest_
{
  typedef BHandGraspVelRequest_<ContainerAllocator> Type;

  BHandGraspVelRequest_()
    : velocity(0.0)  {
    }
  BHandGraspVelRequest_(const ContainerAllocator& _alloc)
    : velocity(0.0)  {
  (void)_alloc;
    }



   typedef float _velocity_type;
  _velocity_type velocity;




  typedef boost::shared_ptr< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BHandGraspVelRequest_

typedef ::wam_control::BHandGraspVelRequest_<std::allocator<void> > BHandGraspVelRequest;

typedef boost::shared_ptr< ::wam_control::BHandGraspVelRequest > BHandGraspVelRequestPtr;
typedef boost::shared_ptr< ::wam_control::BHandGraspVelRequest const> BHandGraspVelRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_control::BHandGraspVelRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4ff88b32504f688719a85e0753f63ce";
  }

  static const char* value(const ::wam_control::BHandGraspVelRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4ff88b32504f688ULL;
  static const uint64_t static_value2 = 0x719a85e0753f63ceULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_control/BHandGraspVelRequest";
  }

  static const char* value(const ::wam_control::BHandGraspVelRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 velocity\n\
";
  }

  static const char* value(const ::wam_control::BHandGraspVelRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BHandGraspVelRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_control::BHandGraspVelRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_control::BHandGraspVelRequest_<ContainerAllocator>& v)
  {
    s << indent << "velocity: ";
    Printer<float>::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_CONTROL_MESSAGE_BHANDGRASPVELREQUEST_H