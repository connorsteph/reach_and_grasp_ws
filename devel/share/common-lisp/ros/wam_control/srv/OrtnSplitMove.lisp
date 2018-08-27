; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude OrtnSplitMove-request.msg.html

(cl:defclass <OrtnSplitMove-request> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (kp_gain
    :reader kp_gain
    :initarg :kp_gain
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (kd_gain
    :reader kd_gain
    :initarg :kd_gain
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OrtnSplitMove-request (<OrtnSplitMove-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrtnSplitMove-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrtnSplitMove-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<OrtnSplitMove-request> is deprecated: use wam_control-srv:OrtnSplitMove-request instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <OrtnSplitMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:orientation-val is deprecated.  Use wam_control-srv:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'kp_gain-val :lambda-list '(m))
(cl:defmethod kp_gain-val ((m <OrtnSplitMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:kp_gain-val is deprecated.  Use wam_control-srv:kp_gain instead.")
  (kp_gain m))

(cl:ensure-generic-function 'kd_gain-val :lambda-list '(m))
(cl:defmethod kd_gain-val ((m <OrtnSplitMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:kd_gain-val is deprecated.  Use wam_control-srv:kd_gain instead.")
  (kd_gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrtnSplitMove-request>) ostream)
  "Serializes a message object of type '<OrtnSplitMove-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'orientation))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kp_gain))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kd_gain))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrtnSplitMove-request>) istream)
  "Deserializes a message object of type '<OrtnSplitMove-request>"
  (cl:setf (cl:slot-value msg 'orientation) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'orientation)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'kp_gain) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kp_gain)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'kd_gain) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kd_gain)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrtnSplitMove-request>)))
  "Returns string type for a service object of type '<OrtnSplitMove-request>"
  "wam_control/OrtnSplitMoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrtnSplitMove-request)))
  "Returns string type for a service object of type 'OrtnSplitMove-request"
  "wam_control/OrtnSplitMoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrtnSplitMove-request>)))
  "Returns md5sum for a message object of type '<OrtnSplitMove-request>"
  "d493f6e469f2b52d5ef0e3d041ef18b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrtnSplitMove-request)))
  "Returns md5sum for a message object of type 'OrtnSplitMove-request"
  "d493f6e469f2b52d5ef0e3d041ef18b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrtnSplitMove-request>)))
  "Returns full string definition for message of type '<OrtnSplitMove-request>"
  (cl:format cl:nil "float32[4] orientation~%float32[3] kp_gain~%float32[3] kd_gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrtnSplitMove-request)))
  "Returns full string definition for message of type 'OrtnSplitMove-request"
  (cl:format cl:nil "float32[4] orientation~%float32[3] kp_gain~%float32[3] kd_gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrtnSplitMove-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp_gain) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kd_gain) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrtnSplitMove-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OrtnSplitMove-request
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':kp_gain (kp_gain msg))
    (cl:cons ':kd_gain (kd_gain msg))
))
;//! \htmlinclude OrtnSplitMove-response.msg.html

(cl:defclass <OrtnSplitMove-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OrtnSplitMove-response (<OrtnSplitMove-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrtnSplitMove-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrtnSplitMove-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<OrtnSplitMove-response> is deprecated: use wam_control-srv:OrtnSplitMove-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrtnSplitMove-response>) ostream)
  "Serializes a message object of type '<OrtnSplitMove-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrtnSplitMove-response>) istream)
  "Deserializes a message object of type '<OrtnSplitMove-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrtnSplitMove-response>)))
  "Returns string type for a service object of type '<OrtnSplitMove-response>"
  "wam_control/OrtnSplitMoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrtnSplitMove-response)))
  "Returns string type for a service object of type 'OrtnSplitMove-response"
  "wam_control/OrtnSplitMoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrtnSplitMove-response>)))
  "Returns md5sum for a message object of type '<OrtnSplitMove-response>"
  "d493f6e469f2b52d5ef0e3d041ef18b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrtnSplitMove-response)))
  "Returns md5sum for a message object of type 'OrtnSplitMove-response"
  "d493f6e469f2b52d5ef0e3d041ef18b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrtnSplitMove-response>)))
  "Returns full string definition for message of type '<OrtnSplitMove-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrtnSplitMove-response)))
  "Returns full string definition for message of type 'OrtnSplitMove-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrtnSplitMove-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrtnSplitMove-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OrtnSplitMove-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OrtnSplitMove)))
  'OrtnSplitMove-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OrtnSplitMove)))
  'OrtnSplitMove-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrtnSplitMove)))
  "Returns string type for a service object of type '<OrtnSplitMove>"
  "wam_control/OrtnSplitMove")