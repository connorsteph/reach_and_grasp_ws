// Generated by gencpp from file wam_control/Teach.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_TEACH_H
#define WAM_CONTROL_MESSAGE_TEACH_H

#include <ros/service_traits.h>


#include <wam_control/TeachRequest.h>
#include <wam_control/TeachResponse.h>


namespace wam_control
{

struct Teach
{

typedef TeachRequest Request;
typedef TeachResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Teach
} // namespace wam_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_control::Teach > {
  static const char* value()
  {
    return "1d00cd540af97efeb6b1589112fab63e";
  }

  static const char* value(const ::wam_control::Teach&) { return value(); }
};

template<>
struct DataType< ::wam_control::Teach > {
  static const char* value()
  {
    return "wam_control/Teach";
  }

  static const char* value(const ::wam_control::Teach&) { return value(); }
};


// service_traits::MD5Sum< ::wam_control::TeachRequest> should match 
// service_traits::MD5Sum< ::wam_control::Teach > 
template<>
struct MD5Sum< ::wam_control::TeachRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_control::Teach >::value();
  }
  static const char* value(const ::wam_control::TeachRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_control::TeachRequest> should match 
// service_traits::DataType< ::wam_control::Teach > 
template<>
struct DataType< ::wam_control::TeachRequest>
{
  static const char* value()
  {
    return DataType< ::wam_control::Teach >::value();
  }
  static const char* value(const ::wam_control::TeachRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_control::TeachResponse> should match 
// service_traits::MD5Sum< ::wam_control::Teach > 
template<>
struct MD5Sum< ::wam_control::TeachResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_control::Teach >::value();
  }
  static const char* value(const ::wam_control::TeachResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_control::TeachResponse> should match 
// service_traits::DataType< ::wam_control::Teach > 
template<>
struct DataType< ::wam_control::TeachResponse>
{
  static const char* value()
  {
    return DataType< ::wam_control::Teach >::value();
  }
  static const char* value(const ::wam_control::TeachResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_CONTROL_MESSAGE_TEACH_H
