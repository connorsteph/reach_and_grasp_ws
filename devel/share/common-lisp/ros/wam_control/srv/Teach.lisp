; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude Teach-request.msg.html

(cl:defclass <Teach-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass Teach-request (<Teach-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Teach-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Teach-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<Teach-request> is deprecated: use wam_control-srv:Teach-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Teach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:path-val is deprecated.  Use wam_control-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Teach-request>) ostream)
  "Serializes a message object of type '<Teach-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Teach-request>) istream)
  "Deserializes a message object of type '<Teach-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Teach-request>)))
  "Returns string type for a service object of type '<Teach-request>"
  "wam_control/TeachRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Teach-request)))
  "Returns string type for a service object of type 'Teach-request"
  "wam_control/TeachRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Teach-request>)))
  "Returns md5sum for a message object of type '<Teach-request>"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Teach-request)))
  "Returns md5sum for a message object of type 'Teach-request"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Teach-request>)))
  "Returns full string definition for message of type '<Teach-request>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Teach-request)))
  "Returns full string definition for message of type 'Teach-request"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Teach-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Teach-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Teach-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude Teach-response.msg.html

(cl:defclass <Teach-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Teach-response (<Teach-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Teach-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Teach-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<Teach-response> is deprecated: use wam_control-srv:Teach-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Teach-response>) ostream)
  "Serializes a message object of type '<Teach-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Teach-response>) istream)
  "Deserializes a message object of type '<Teach-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Teach-response>)))
  "Returns string type for a service object of type '<Teach-response>"
  "wam_control/TeachResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Teach-response)))
  "Returns string type for a service object of type 'Teach-response"
  "wam_control/TeachResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Teach-response>)))
  "Returns md5sum for a message object of type '<Teach-response>"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Teach-response)))
  "Returns md5sum for a message object of type 'Teach-response"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Teach-response>)))
  "Returns full string definition for message of type '<Teach-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Teach-response)))
  "Returns full string definition for message of type 'Teach-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Teach-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Teach-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Teach-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Teach)))
  'Teach-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Teach)))
  'Teach-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Teach)))
  "Returns string type for a service object of type '<Teach>"
  "wam_control/Teach")