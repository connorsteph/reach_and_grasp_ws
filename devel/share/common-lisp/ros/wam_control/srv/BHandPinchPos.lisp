; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude BHandPinchPos-request.msg.html

(cl:defclass <BHandPinchPos-request> (roslisp-msg-protocol:ros-message)
  ((radians
    :reader radians
    :initarg :radians
    :type cl:float
    :initform 0.0))
)

(cl:defclass BHandPinchPos-request (<BHandPinchPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BHandPinchPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BHandPinchPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<BHandPinchPos-request> is deprecated: use wam_control-srv:BHandPinchPos-request instead.")))

(cl:ensure-generic-function 'radians-val :lambda-list '(m))
(cl:defmethod radians-val ((m <BHandPinchPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:radians-val is deprecated.  Use wam_control-srv:radians instead.")
  (radians m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BHandPinchPos-request>) ostream)
  "Serializes a message object of type '<BHandPinchPos-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radians))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BHandPinchPos-request>) istream)
  "Deserializes a message object of type '<BHandPinchPos-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radians) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BHandPinchPos-request>)))
  "Returns string type for a service object of type '<BHandPinchPos-request>"
  "wam_control/BHandPinchPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BHandPinchPos-request)))
  "Returns string type for a service object of type 'BHandPinchPos-request"
  "wam_control/BHandPinchPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BHandPinchPos-request>)))
  "Returns md5sum for a message object of type '<BHandPinchPos-request>"
  "718158cfca4f89c6952f799c53697f42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BHandPinchPos-request)))
  "Returns md5sum for a message object of type 'BHandPinchPos-request"
  "718158cfca4f89c6952f799c53697f42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BHandPinchPos-request>)))
  "Returns full string definition for message of type '<BHandPinchPos-request>"
  (cl:format cl:nil "float32 radians~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BHandPinchPos-request)))
  "Returns full string definition for message of type 'BHandPinchPos-request"
  (cl:format cl:nil "float32 radians~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BHandPinchPos-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BHandPinchPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BHandPinchPos-request
    (cl:cons ':radians (radians msg))
))
;//! \htmlinclude BHandPinchPos-response.msg.html

(cl:defclass <BHandPinchPos-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BHandPinchPos-response (<BHandPinchPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BHandPinchPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BHandPinchPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<BHandPinchPos-response> is deprecated: use wam_control-srv:BHandPinchPos-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BHandPinchPos-response>) ostream)
  "Serializes a message object of type '<BHandPinchPos-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BHandPinchPos-response>) istream)
  "Deserializes a message object of type '<BHandPinchPos-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BHandPinchPos-response>)))
  "Returns string type for a service object of type '<BHandPinchPos-response>"
  "wam_control/BHandPinchPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BHandPinchPos-response)))
  "Returns string type for a service object of type 'BHandPinchPos-response"
  "wam_control/BHandPinchPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BHandPinchPos-response>)))
  "Returns md5sum for a message object of type '<BHandPinchPos-response>"
  "718158cfca4f89c6952f799c53697f42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BHandPinchPos-response)))
  "Returns md5sum for a message object of type 'BHandPinchPos-response"
  "718158cfca4f89c6952f799c53697f42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BHandPinchPos-response>)))
  "Returns full string definition for message of type '<BHandPinchPos-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BHandPinchPos-response)))
  "Returns full string definition for message of type 'BHandPinchPos-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BHandPinchPos-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BHandPinchPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BHandPinchPos-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BHandPinchPos)))
  'BHandPinchPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BHandPinchPos)))
  'BHandPinchPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BHandPinchPos)))
  "Returns string type for a service object of type '<BHandPinchPos>"
  "wam_control/BHandPinchPos")