; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude ForceTorqueTool-request.msg.html

(cl:defclass <ForceTorqueTool-request> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ForceTorqueTool-request (<ForceTorqueTool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorqueTool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorqueTool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<ForceTorqueTool-request> is deprecated: use wam_control-srv:ForceTorqueTool-request instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ForceTorqueTool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:force-val is deprecated.  Use wam_control-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ForceTorqueTool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:torque-val is deprecated.  Use wam_control-srv:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorqueTool-request>) ostream)
  "Serializes a message object of type '<ForceTorqueTool-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'force))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorqueTool-request>) istream)
  "Deserializes a message object of type '<ForceTorqueTool-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorqueTool-request>)))
  "Returns string type for a service object of type '<ForceTorqueTool-request>"
  "wam_control/ForceTorqueToolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorqueTool-request)))
  "Returns string type for a service object of type 'ForceTorqueTool-request"
  "wam_control/ForceTorqueToolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorqueTool-request>)))
  "Returns md5sum for a message object of type '<ForceTorqueTool-request>"
  "58646800d530c83853f5e010d6ccce9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorqueTool-request)))
  "Returns md5sum for a message object of type 'ForceTorqueTool-request"
  "58646800d530c83853f5e010d6ccce9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorqueTool-request>)))
  "Returns full string definition for message of type '<ForceTorqueTool-request>"
  (cl:format cl:nil "float32[]   force~%float32[]   torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorqueTool-request)))
  "Returns full string definition for message of type 'ForceTorqueTool-request"
  (cl:format cl:nil "float32[]   force~%float32[]   torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorqueTool-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorqueTool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorqueTool-request
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
;//! \htmlinclude ForceTorqueTool-response.msg.html

(cl:defclass <ForceTorqueTool-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ForceTorqueTool-response (<ForceTorqueTool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorqueTool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorqueTool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<ForceTorqueTool-response> is deprecated: use wam_control-srv:ForceTorqueTool-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorqueTool-response>) ostream)
  "Serializes a message object of type '<ForceTorqueTool-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorqueTool-response>) istream)
  "Deserializes a message object of type '<ForceTorqueTool-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorqueTool-response>)))
  "Returns string type for a service object of type '<ForceTorqueTool-response>"
  "wam_control/ForceTorqueToolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorqueTool-response)))
  "Returns string type for a service object of type 'ForceTorqueTool-response"
  "wam_control/ForceTorqueToolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorqueTool-response>)))
  "Returns md5sum for a message object of type '<ForceTorqueTool-response>"
  "58646800d530c83853f5e010d6ccce9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorqueTool-response)))
  "Returns md5sum for a message object of type 'ForceTorqueTool-response"
  "58646800d530c83853f5e010d6ccce9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorqueTool-response>)))
  "Returns full string definition for message of type '<ForceTorqueTool-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorqueTool-response)))
  "Returns full string definition for message of type 'ForceTorqueTool-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorqueTool-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorqueTool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorqueTool-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForceTorqueTool)))
  'ForceTorqueTool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForceTorqueTool)))
  'ForceTorqueTool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorqueTool)))
  "Returns string type for a service object of type '<ForceTorqueTool>"
  "wam_control/ForceTorqueTool")