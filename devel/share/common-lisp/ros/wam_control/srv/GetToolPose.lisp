; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude GetToolPose-request.msg.html

(cl:defclass <GetToolPose-request> (roslisp-msg-protocol:ros-message)
  ((joint_position
    :reader joint_position
    :initarg :joint_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetToolPose-request (<GetToolPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetToolPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetToolPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<GetToolPose-request> is deprecated: use wam_control-srv:GetToolPose-request instead.")))

(cl:ensure-generic-function 'joint_position-val :lambda-list '(m))
(cl:defmethod joint_position-val ((m <GetToolPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:joint_position-val is deprecated.  Use wam_control-srv:joint_position instead.")
  (joint_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetToolPose-request>) ostream)
  "Serializes a message object of type '<GetToolPose-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetToolPose-request>) istream)
  "Deserializes a message object of type '<GetToolPose-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetToolPose-request>)))
  "Returns string type for a service object of type '<GetToolPose-request>"
  "wam_control/GetToolPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetToolPose-request)))
  "Returns string type for a service object of type 'GetToolPose-request"
  "wam_control/GetToolPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetToolPose-request>)))
  "Returns md5sum for a message object of type '<GetToolPose-request>"
  "b976353334f69a24896bcd9fdcff5c9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetToolPose-request)))
  "Returns md5sum for a message object of type 'GetToolPose-request"
  "b976353334f69a24896bcd9fdcff5c9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetToolPose-request>)))
  "Returns full string definition for message of type '<GetToolPose-request>"
  (cl:format cl:nil "float32[] joint_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetToolPose-request)))
  "Returns full string definition for message of type 'GetToolPose-request"
  (cl:format cl:nil "float32[] joint_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetToolPose-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetToolPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetToolPose-request
    (cl:cons ':joint_position (joint_position msg))
))
;//! \htmlinclude GetToolPose-response.msg.html

(cl:defclass <GetToolPose-response> (roslisp-msg-protocol:ros-message)
  ((cart_position
    :reader cart_position
    :initarg :cart_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetToolPose-response (<GetToolPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetToolPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetToolPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<GetToolPose-response> is deprecated: use wam_control-srv:GetToolPose-response instead.")))

(cl:ensure-generic-function 'cart_position-val :lambda-list '(m))
(cl:defmethod cart_position-val ((m <GetToolPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:cart_position-val is deprecated.  Use wam_control-srv:cart_position instead.")
  (cart_position m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <GetToolPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:quaternion-val is deprecated.  Use wam_control-srv:quaternion instead.")
  (quaternion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetToolPose-response>) ostream)
  "Serializes a message object of type '<GetToolPose-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cart_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cart_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quaternion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quaternion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetToolPose-response>) istream)
  "Deserializes a message object of type '<GetToolPose-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cart_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cart_position)))
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
  (cl:setf (cl:slot-value msg 'quaternion) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quaternion)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetToolPose-response>)))
  "Returns string type for a service object of type '<GetToolPose-response>"
  "wam_control/GetToolPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetToolPose-response)))
  "Returns string type for a service object of type 'GetToolPose-response"
  "wam_control/GetToolPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetToolPose-response>)))
  "Returns md5sum for a message object of type '<GetToolPose-response>"
  "b976353334f69a24896bcd9fdcff5c9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetToolPose-response)))
  "Returns md5sum for a message object of type 'GetToolPose-response"
  "b976353334f69a24896bcd9fdcff5c9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetToolPose-response>)))
  "Returns full string definition for message of type '<GetToolPose-response>"
  (cl:format cl:nil "float32[] cart_position~%float32[] quaternion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetToolPose-response)))
  "Returns full string definition for message of type 'GetToolPose-response"
  (cl:format cl:nil "float32[] cart_position~%float32[] quaternion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetToolPose-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cart_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quaternion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetToolPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetToolPose-response
    (cl:cons ':cart_position (cart_position msg))
    (cl:cons ':quaternion (quaternion msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetToolPose)))
  'GetToolPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetToolPose)))
  'GetToolPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetToolPose)))
  "Returns string type for a service object of type '<GetToolPose>"
  "wam_control/GetToolPose")