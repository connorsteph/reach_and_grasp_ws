; Auto-generated. Do not edit!


(cl:in-package wam_control-msg)


;//! \htmlinclude MatrixMN.msg.html

(cl:defclass <MatrixMN> (roslisp-msg-protocol:ros-message)
  ((m
    :reader m
    :initarg :m
    :type cl:integer
    :initform 0)
   (n
    :reader n
    :initarg :n
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MatrixMN (<MatrixMN>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatrixMN>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatrixMN)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-msg:<MatrixMN> is deprecated: use wam_control-msg:MatrixMN instead.")))

(cl:ensure-generic-function 'm-val :lambda-list '(m))
(cl:defmethod m-val ((m <MatrixMN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-msg:m-val is deprecated.  Use wam_control-msg:m instead.")
  (m m))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <MatrixMN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-msg:n-val is deprecated.  Use wam_control-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MatrixMN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-msg:data-val is deprecated.  Use wam_control-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatrixMN>) ostream)
  "Serializes a message object of type '<MatrixMN>"
  (cl:let* ((signed (cl:slot-value msg 'm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
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
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatrixMN>) istream)
  "Deserializes a message object of type '<MatrixMN>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatrixMN>)))
  "Returns string type for a message object of type '<MatrixMN>"
  "wam_control/MatrixMN")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatrixMN)))
  "Returns string type for a message object of type 'MatrixMN"
  "wam_control/MatrixMN")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatrixMN>)))
  "Returns md5sum for a message object of type '<MatrixMN>"
  "28e4f87d99ae219cf43e9311a87d6fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatrixMN)))
  "Returns md5sum for a message object of type 'MatrixMN"
  "28e4f87d99ae219cf43e9311a87d6fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatrixMN>)))
  "Returns full string definition for message of type '<MatrixMN>"
  (cl:format cl:nil "# Matrix m x n stored in column order inside of data~%int32 m  #rows~%int32 n  #columns~%float64[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatrixMN)))
  "Returns full string definition for message of type 'MatrixMN"
  (cl:format cl:nil "# Matrix m x n stored in column order inside of data~%int32 m  #rows~%int32 n  #columns~%float64[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatrixMN>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatrixMN>))
  "Converts a ROS message object to a list"
  (cl:list 'MatrixMN
    (cl:cons ':m (m msg))
    (cl:cons ':n (n msg))
    (cl:cons ':data (data msg))
))
