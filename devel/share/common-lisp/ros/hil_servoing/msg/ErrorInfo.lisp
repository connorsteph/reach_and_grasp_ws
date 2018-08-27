; Auto-generated. Do not edit!


(cl:in-package hil_servoing-msg)


;//! \htmlinclude ErrorInfo.msg.html

(cl:defclass <ErrorInfo> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (error_dim
    :reader error_dim
    :initarg :error_dim
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ErrorInfo (<ErrorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hil_servoing-msg:<ErrorInfo> is deprecated: use hil_servoing-msg:ErrorInfo instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ErrorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hil_servoing-msg:error-val is deprecated.  Use hil_servoing-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'error_dim-val :lambda-list '(m))
(cl:defmethod error_dim-val ((m <ErrorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hil_servoing-msg:error_dim-val is deprecated.  Use hil_servoing-msg:error_dim instead.")
  (error_dim m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorInfo>) ostream)
  "Serializes a message object of type '<ErrorInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error))))
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
   (cl:slot-value msg 'error))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_dim))))
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
   (cl:slot-value msg 'error_dim))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorInfo>) istream)
  "Deserializes a message object of type '<ErrorInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_dim) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_dim)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorInfo>)))
  "Returns string type for a message object of type '<ErrorInfo>"
  "hil_servoing/ErrorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorInfo)))
  "Returns string type for a message object of type 'ErrorInfo"
  "hil_servoing/ErrorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorInfo>)))
  "Returns md5sum for a message object of type '<ErrorInfo>"
  "cd09ce1fe00fe4b7efe98df71a039f2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorInfo)))
  "Returns md5sum for a message object of type 'ErrorInfo"
  "cd09ce1fe00fe4b7efe98df71a039f2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorInfo>)))
  "Returns full string definition for message of type '<ErrorInfo>"
  (cl:format cl:nil "float64[] error~%float64[] error_dim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorInfo)))
  "Returns full string definition for message of type 'ErrorInfo"
  (cl:format cl:nil "float64[] error~%float64[] error_dim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_dim) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorInfo
    (cl:cons ':error (error msg))
    (cl:cons ':error_dim (error_dim msg))
))
