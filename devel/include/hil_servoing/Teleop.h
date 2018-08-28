// Generated by gencpp from file hil_servoing/Teleop.msg
// DO NOT EDIT!


#ifndef HIL_SERVOING_MESSAGE_TELEOP_H
#define HIL_SERVOING_MESSAGE_TELEOP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hil_servoing
{
template <class ContainerAllocator>
struct Teleop_
{
  typedef Teleop_<ContainerAllocator> Type;

  Teleop_()
    : dir_2D()  {
    }
  Teleop_(const ContainerAllocator& _alloc)
    : dir_2D(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dir_2D_type;
  _dir_2D_type dir_2D;




  typedef boost::shared_ptr< ::hil_servoing::Teleop_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hil_servoing::Teleop_<ContainerAllocator> const> ConstPtr;

}; // struct Teleop_

typedef ::hil_servoing::Teleop_<std::allocator<void> > Teleop;

typedef boost::shared_ptr< ::hil_servoing::Teleop > TeleopPtr;
typedef boost::shared_ptr< ::hil_servoing::Teleop const> TeleopConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hil_servoing::Teleop_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hil_servoing::Teleop_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hil_servoing

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'hil_servoing': ['/home/froglake/reach_and_grasp_ws/src/hil_servoing/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hil_servoing::Teleop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hil_servoing::Teleop_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hil_servoing::Teleop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hil_servoing::Teleop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hil_servoing::Teleop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hil_servoing::Teleop_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hil_servoing::Teleop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1e5c4f3d30b301acd82ac238f760cdb9";
  }

  static const char* value(const ::hil_servoing::Teleop_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1e5c4f3d30b301acULL;
  static const uint64_t static_value2 = 0xd82ac238f760cdb9ULL;
};

template<class ContainerAllocator>
struct DataType< ::hil_servoing::Teleop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hil_servoing/Teleop";
  }

  static const char* value(const ::hil_servoing::Teleop_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hil_servoing::Teleop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] dir_2D\n\
";
  }

  static const char* value(const ::hil_servoing::Teleop_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hil_servoing::Teleop_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dir_2D);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Teleop_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hil_servoing::Teleop_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hil_servoing::Teleop_<ContainerAllocator>& v)
  {
    s << indent << "dir_2D[]" << std::endl;
    for (size_t i = 0; i < v.dir_2D.size(); ++i)
    {
      s << indent << "  dir_2D[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dir_2D[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HIL_SERVOING_MESSAGE_TELEOP_H
