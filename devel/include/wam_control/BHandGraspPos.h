// Generated by gencpp from file wam_control/BHandGraspPos.msg
// DO NOT EDIT!


#ifndef WAM_CONTROL_MESSAGE_BHANDGRASPPOS_H
#define WAM_CONTROL_MESSAGE_BHANDGRASPPOS_H

#include <ros/service_traits.h>


#include <wam_control/BHandGraspPosRequest.h>
#include <wam_control/BHandGraspPosResponse.h>


namespace wam_control
{

struct BHandGraspPos
{

typedef BHandGraspPosRequest Request;
typedef BHandGraspPosResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BHandGraspPos
} // namespace wam_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wam_control::BHandGraspPos > {
  static const char* value()
  {
    return "718158cfca4f89c6952f799c53697f42";
  }

  static const char* value(const ::wam_control::BHandGraspPos&) { return value(); }
};

template<>
struct DataType< ::wam_control::BHandGraspPos > {
  static const char* value()
  {
    return "wam_control/BHandGraspPos";
  }

  static const char* value(const ::wam_control::BHandGraspPos&) { return value(); }
};


// service_traits::MD5Sum< ::wam_control::BHandGraspPosRequest> should match 
// service_traits::MD5Sum< ::wam_control::BHandGraspPos > 
template<>
struct MD5Sum< ::wam_control::BHandGraspPosRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wam_control::BHandGraspPos >::value();
  }
  static const char* value(const ::wam_control::BHandGraspPosRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_control::BHandGraspPosRequest> should match 
// service_traits::DataType< ::wam_control::BHandGraspPos > 
template<>
struct DataType< ::wam_control::BHandGraspPosRequest>
{
  static const char* value()
  {
    return DataType< ::wam_control::BHandGraspPos >::value();
  }
  static const char* value(const ::wam_control::BHandGraspPosRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wam_control::BHandGraspPosResponse> should match 
// service_traits::MD5Sum< ::wam_control::BHandGraspPos > 
template<>
struct MD5Sum< ::wam_control::BHandGraspPosResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wam_control::BHandGraspPos >::value();
  }
  static const char* value(const ::wam_control::BHandGraspPosResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wam_control::BHandGraspPosResponse> should match 
// service_traits::DataType< ::wam_control::BHandGraspPos > 
template<>
struct DataType< ::wam_control::BHandGraspPosResponse>
{
  static const char* value()
  {
    return DataType< ::wam_control::BHandGraspPos >::value();
  }
  static const char* value(const ::wam_control::BHandGraspPosResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAM_CONTROL_MESSAGE_BHANDGRASPPOS_H
