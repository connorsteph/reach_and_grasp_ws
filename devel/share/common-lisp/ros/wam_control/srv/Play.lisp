; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude Play-request.msg.html

(cl:defclass <Play-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass Play-request (<Play-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Play-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Play-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<Play-request> is deprecated: use wam_control-srv:Play-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Play-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:path-val is deprecated.  Use wam_control-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Play-request>) ostream)
  "Serializes a message object of type '<Play-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Play-request>) istream)
  "Deserializes a message object of type '<Play-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Play-request>)))
  "Returns string type for a service object of type '<Play-request>"
  "wam_control/PlayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play-request)))
  "Returns string type for a service object of type 'Play-request"
  "wam_control/PlayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Play-request>)))
  "Returns md5sum for a message object of type '<Play-request>"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Play-request)))
  "Returns md5sum for a message object of type 'Play-request"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Play-request>)))
  "Returns full string definition for message of type '<Play-request>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Play-request)))
  "Returns full string definition for message of type 'Play-request"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Play-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Play-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Play-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude Play-response.msg.html

(cl:defclass <Play-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Play-response (<Play-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Play-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Play-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<Play-response> is deprecated: use wam_control-srv:Play-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Play-response>) ostream)
  "Serializes a message object of type '<Play-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Play-response>) istream)
  "Deserializes a message object of type '<Play-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Play-response>)))
  "Returns string type for a service object of type '<Play-response>"
  "wam_control/PlayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play-response)))
  "Returns string type for a service object of type 'Play-response"
  "wam_control/PlayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Play-response>)))
  "Returns md5sum for a message object of type '<Play-response>"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Play-response)))
  "Returns md5sum for a message object of type 'Play-response"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Play-response>)))
  "Returns full string definition for message of type '<Play-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Play-response)))
  "Returns full string definition for message of type 'Play-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Play-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Play-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Play-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Play)))
  'Play-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Play)))
  'Play-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play)))
  "Returns string type for a service object of type '<Play>"
  "wam_control/Play")