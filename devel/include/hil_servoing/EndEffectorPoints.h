// Generated by gencpp from file hil_servoing/EndEffectorPoints.msg
// DO NOT EDIT!


#ifndef HIL_SERVOING_MESSAGE_ENDEFFECTORPOINTS_H
#define HIL_SERVOING_MESSAGE_ENDEFFECTORPOINTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <hil_servoing/TrackPoint.h>

namespace hil_servoing
{
template <class ContainerAllocator>
struct EndEffectorPoints_
{
  typedef EndEffectorPoints_<ContainerAllocator> Type;

  EndEffectorPoints_()
    : points()  {
    }
  EndEffectorPoints_(const ContainerAllocator& _alloc)
    : points(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::hil_servoing::TrackPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::hil_servoing::TrackPoint_<ContainerAllocator> >::other >  _points_type;
  _points_type points;




  typedef boost::shared_ptr< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> const> ConstPtr;

}; // struct EndEffectorPoints_

typedef ::hil_servoing::EndEffectorPoints_<std::allocator<void> > EndEffectorPoints;

typedef boost::shared_ptr< ::hil_servoing::EndEffectorPoints > EndEffectorPointsPtr;
typedef boost::shared_ptr< ::hil_servoing::EndEffectorPoints const> EndEffectorPointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hil_servoing::EndEffectorPoints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hil_servoing

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'hil_servoing': ['/home/fuego/reach_and_grasp_ws/src/hil_servoing/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f02263beef99aa03117a577a3eb879d";
  }

  static const char* value(const ::hil_servoing::EndEffectorPoints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f02263beef99aa0ULL;
  static const uint64_t static_value2 = 0x3117a577a3eb879dULL;
};

template<class ContainerAllocator>
struct DataType< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hil_servoing/EndEffectorPoints";
  }

  static const char* value(const ::hil_servoing::EndEffectorPoints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TrackPoint[] points\n\
\n\
================================================================================\n\
MSG: hil_servoing/TrackPoint\n\
float64 x\n\
float64 y\n\
";
  }

  static const char* value(const ::hil_servoing::EndEffectorPoints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EndEffectorPoints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hil_servoing::EndEffectorPoints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hil_servoing::EndEffectorPoints_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::hil_servoing::TrackPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HIL_SERVOING_MESSAGE_ENDEFFECTORPOINTS_H
