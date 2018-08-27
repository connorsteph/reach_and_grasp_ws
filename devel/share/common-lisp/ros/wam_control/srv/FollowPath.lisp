; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude FollowPath-request.msg.html

(cl:defclass <FollowPath-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (normal
    :reader normal
    :initarg :normal
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass FollowPath-request (<FollowPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<FollowPath-request> is deprecated: use wam_control-srv:FollowPath-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <FollowPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:position-val is deprecated.  Use wam_control-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <FollowPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:normal-val is deprecated.  Use wam_control-srv:normal instead.")
  (normal m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <FollowPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:size-val is deprecated.  Use wam_control-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPath-request>) ostream)
  "Serializes a message object of type '<FollowPath-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'normal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'normal))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPath-request>) istream)
  "Deserializes a message object of type '<FollowPath-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'normal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'normal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPath-request>)))
  "Returns string type for a service object of type '<FollowPath-request>"
  "wam_control/FollowPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath-request)))
  "Returns string type for a service object of type 'FollowPath-request"
  "wam_control/FollowPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPath-request>)))
  "Returns md5sum for a message object of type '<FollowPath-request>"
  "d84f5b474d984f3bb9b08180eaffe23c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPath-request)))
  "Returns md5sum for a message object of type 'FollowPath-request"
  "d84f5b474d984f3bb9b08180eaffe23c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPath-request>)))
  "Returns full string definition for message of type '<FollowPath-request>"
  (cl:format cl:nil "geometry_msgs/Point32[]   position~%geometry_msgs/Point32[]   normal~%int32 size~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPath-request)))
  "Returns full string definition for message of type 'FollowPath-request"
  (cl:format cl:nil "geometry_msgs/Point32[]   position~%geometry_msgs/Point32[]   normal~%int32 size~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPath-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'normal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPath-request
    (cl:cons ':position (position msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude FollowPath-response.msg.html

(cl:defclass <FollowPath-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FollowPath-response (<FollowPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<FollowPath-response> is deprecated: use wam_control-srv:FollowPath-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPath-response>) ostream)
  "Serializes a message object of type '<FollowPath-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPath-response>) istream)
  "Deserializes a message object of type '<FollowPath-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPath-response>)))
  "Returns string type for a service object of type '<FollowPath-response>"
  "wam_control/FollowPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath-response)))
  "Returns string type for a service object of type 'FollowPath-response"
  "wam_control/FollowPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPath-response>)))
  "Returns md5sum for a message object of type '<FollowPath-response>"
  "d84f5b474d984f3bb9b08180eaffe23c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPath-response)))
  "Returns md5sum for a message object of type 'FollowPath-response"
  "d84f5b474d984f3bb9b08180eaffe23c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPath-response>)))
  "Returns full string definition for message of type '<FollowPath-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPath-response)))
  "Returns full string definition for message of type 'FollowPath-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPath-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPath-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FollowPath)))
  'FollowPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FollowPath)))
  'FollowPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath)))
  "Returns string type for a service object of type '<FollowPath>"
  "wam_control/FollowPath")