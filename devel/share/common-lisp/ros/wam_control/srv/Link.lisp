; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude Link-request.msg.html

(cl:defclass <Link-request> (roslisp-msg-protocol:ros-message)
  ((remote_ip
    :reader remote_ip
    :initarg :remote_ip
    :type cl:string
    :initform ""))
)

(cl:defclass Link-request (<Link-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Link-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Link-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<Link-request> is deprecated: use wam_control-srv:Link-request instead.")))

(cl:ensure-generic-function 'remote_ip-val :lambda-list '(m))
(cl:defmethod remote_ip-val ((m <Link-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:remote_ip-val is deprecated.  Use wam_control-srv:remote_ip instead.")
  (remote_ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Link-request>) ostream)
  "Serializes a message object of type '<Link-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remote_ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remote_ip))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Link-request>) istream)
  "Deserializes a message object of type '<Link-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remote_ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remote_ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Link-request>)))
  "Returns string type for a service object of type '<Link-request>"
  "wam_control/LinkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Link-request)))
  "Returns string type for a service object of type 'Link-request"
  "wam_control/LinkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Link-request>)))
  "Returns md5sum for a message object of type '<Link-request>"
  "a40ccb098e8ae81c40c4d8ba9679b483")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Link-request)))
  "Returns md5sum for a message object of type 'Link-request"
  "a40ccb098e8ae81c40c4d8ba9679b483")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Link-request>)))
  "Returns full string definition for message of type '<Link-request>"
  (cl:format cl:nil "string remote_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Link-request)))
  "Returns full string definition for message of type 'Link-request"
  (cl:format cl:nil "string remote_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Link-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'remote_ip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Link-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Link-request
    (cl:cons ':remote_ip (remote_ip msg))
))
;//! \htmlinclude Link-response.msg.html

(cl:defclass <Link-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Link-response (<Link-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Link-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Link-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<Link-response> is deprecated: use wam_control-srv:Link-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Link-response>) ostream)
  "Serializes a message object of type '<Link-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Link-response>) istream)
  "Deserializes a message object of type '<Link-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Link-response>)))
  "Returns string type for a service object of type '<Link-response>"
  "wam_control/LinkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Link-response)))
  "Returns string type for a service object of type 'Link-response"
  "wam_control/LinkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Link-response>)))
  "Returns md5sum for a message object of type '<Link-response>"
  "a40ccb098e8ae81c40c4d8ba9679b483")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Link-response)))
  "Returns md5sum for a message object of type 'Link-response"
  "a40ccb098e8ae81c40c4d8ba9679b483")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Link-response>)))
  "Returns full string definition for message of type '<Link-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Link-response)))
  "Returns full string definition for message of type 'Link-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Link-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Link-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Link-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Link)))
  'Link-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Link)))
  'Link-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Link)))
  "Returns string type for a service object of type '<Link>"
  "wam_control/Link")