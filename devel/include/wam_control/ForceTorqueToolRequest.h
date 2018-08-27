// Generated by gencpp from file wam_control/ForceTorqueToolRequest.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_FORCETORQUETOOLREQUEST_H
#define WAM_CONTROL_MESSAGE_FORCETORQUETOOLREQUEST_H


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
struct ForceTorqueToolRequest_
{
  typedef ForceTorqueToolRequest_<ContainerAllocator> Type;

  ForceTorqueToolRequest_()
    : force()
    , torque()  {
    }
  ForceTorqueToolRequest_(const ContainerAllocator& _alloc)
    : force(_alloc)
    , torque(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _force_type;
  _force_type force;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _torque_type;
  _torque_type torque;




  typedef boost::shared_ptr< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ForceTorqueToolRequest_

typedef ::wam_control::ForceTorqueToolRequest_<std::allocator<void> > ForceTorqueToolRequest;

typedef boost::shared_ptr< ::wam_control::ForceTorqueToolRequest > ForceTorqueToolRequestPtr;
typedef boost::shared_ptr< ::wam_control::ForceTorqueToolRequest const> ForceTorqueToolRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wam_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'wam_control': ['/home/fuego/reach_and_grasp_ws/src/wam_control/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58646800d530c83853f5e010d6ccce9c";
  }

  static const char* value(const ::wam_control::ForceTorqueToolRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58646800d530c838ULL;
  static const uint64_t static_value2 = 0x53f5e010d6ccce9cULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wam_control/ForceTorqueToolRequest";
  }

  static const char* value(const ::wam_control::ForceTorqueToolRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[]   force\n\
float32[]   torque\n\
";
  }

  static const char* value(const ::wam_control::ForceTorqueToolRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.force);
      stream.next(m.torque);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ForceTorqueToolRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_control::ForceTorqueToolRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wam_control::ForceTorqueToolRequest_<ContainerAllocator>& v)
  {
    s << indent << "force[]" << std::endl;
    for (size_t i = 0; i < v.force.size(); ++i)
    {
      s << indent << "  force[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.force[i]);
    }
    s << indent << "torque[]" << std::endl;
    for (size_t i = 0; i < v.torque.size(); ++i)
    {
      s << indent << "  torque[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.torque[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAM_CONTROL_MESSAGE_FORCETORQUETOOLREQUEST_H
