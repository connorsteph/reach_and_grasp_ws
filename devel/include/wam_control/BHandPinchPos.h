// Generated by gencpp from file wam_control/BHandPinchPos.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_BHANDPINCHPOS_H
#define WAM_CONTROL_MESSAGE_BHANDPINCHPOS_H

#include <ros/service_traits.h>


#include <wam_control/BHandPinchPosRequest.h>
#include <wam_control/BHandPinchPosResponse.h>


namespace wam_control
{

struct BHandPinchPos
{

typedef BHandPinchPosRequest Request;
typedef BHandPinchPosResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BHandPinchPos
} // namespace wam_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_control::BHandPinchPos > {
  static const char* value()
  {
    return "718158cfca4f89c6952f799c53697f42";
  }

  static const char* value(const ::wam_control::BHandPinchPos&) { return value(); }
};

template<>
struct DataType< ::wam_control::BHandPinchPos > {
  static const char* value()
  {
    return "wam_control/BHandPinchPos";
  }

  static const char* value(const ::wam_control::BHandPinchPos&) { return value(); }
};


// service_traits::MD5Sum< ::wam_control::BHandPinchPosRequest> should match 
// service_traits::MD5Sum< ::wam_control::BHandPinchPos > 
template<>
struct MD5Sum< ::wam_control::BHandPinchPosRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_control::BHandPinchPos >::value();
  }
  static const char* value(const ::wam_control::BHandPinchPosRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_control::BHandPinchPosRequest> should match 
// service_traits::DataType< ::wam_control::BHandPinchPos > 
template<>
struct DataType< ::wam_control::BHandPinchPosRequest>
{
  static const char* value()
  {
    return DataType< ::wam_control::BHandPinchPos >::value();
  }
  static const char* value(const ::wam_control::BHandPinchPosRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_control::BHandPinchPosResponse> should match 
// service_traits::MD5Sum< ::wam_control::BHandPinchPos > 
template<>
struct MD5Sum< ::wam_control::BHandPinchPosResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_control::BHandPinchPos >::value();
  }
  static const char* value(const ::wam_control::BHandPinchPosResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_control::BHandPinchPosResponse> should match 
// service_traits::DataType< ::wam_control::BHandPinchPos > 
template<>
struct DataType< ::wam_control::BHandPinchPosResponse>
{
  static const char* value()
  {
    return DataType< ::wam_control::BHandPinchPos >::value();
  }
  static const char* value(const ::wam_control::BHandPinchPosResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_CONTROL_MESSAGE_BHANDPINCHPOS_H