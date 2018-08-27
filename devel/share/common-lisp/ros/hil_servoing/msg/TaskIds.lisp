; Auto-generated. Do not edit!


(cl:in-package hil_servoing-msg)


;//! \htmlinclude TaskIds.msg.html

(cl:defclass <TaskIds> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TaskIds (<TaskIds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskIds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskIds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hil_servoing-msg:<TaskIds> is deprecated: use hil_servoing-msg:TaskIds instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <TaskIds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hil_servoing-msg:ids-val is deprecated.  Use hil_servoing-msg:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskIds>) ostream)
  "Serializes a message object of type '<TaskIds>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskIds>) istream)
  "Deserializes a message object of type '<TaskIds>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskIds>)))
  "Returns string type for a message object of type '<TaskIds>"
  "hil_servoing/TaskIds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskIds)))
  "Returns string type for a message object of type 'TaskIds"
  "hil_servoing/TaskIds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskIds>)))
  "Returns md5sum for a message object of type '<TaskIds>"
  "fc9d44a4676b25d54541ab8ee46f8ed3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskIds)))
  "Returns md5sum for a message object of type 'TaskIds"
  "fc9d44a4676b25d54541ab8ee46f8ed3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskIds>)))
  "Returns full string definition for message of type '<TaskIds>"
  (cl:format cl:nil "float64[] ids~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskIds)))
  "Returns full string definition for message of type 'TaskIds"
  (cl:format cl:nil "float64[] ids~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskIds>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskIds>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskIds
    (cl:cons ':ids (ids msg))
))
