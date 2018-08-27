; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude CartVel-request.msg.html

(cl:defclass <CartVel-request> (roslisp-msg-protocol:ros-message)
  ((v_direction
    :reader v_direction
    :initarg :v_direction
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (v_magnitude
    :reader v_magnitude
    :initarg :v_magnitude
    :type cl:float
    :initform 0.0)
   (kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (visual_system
    :reader visual_system
    :initarg :visual_system
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CartVel-request (<CartVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<CartVel-request> is deprecated: use wam_control-srv:CartVel-request instead.")))

(cl:ensure-generic-function 'v_direction-val :lambda-list '(m))
(cl:defmethod v_direction-val ((m <CartVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:v_direction-val is deprecated.  Use wam_control-srv:v_direction instead.")
  (v_direction m))

(cl:ensure-generic-function 'v_magnitude-val :lambda-list '(m))
(cl:defmethod v_magnitude-val ((m <CartVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:v_magnitude-val is deprecated.  Use wam_control-srv:v_magnitude instead.")
  (v_magnitude m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <CartVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:kp-val is deprecated.  Use wam_control-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'visual_system-val :lambda-list '(m))
(cl:defmethod visual_system-val ((m <CartVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:visual_system-val is deprecated.  Use wam_control-srv:visual_system instead.")
  (visual_system m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartVel-request>) ostream)
  "Serializes a message object of type '<CartVel-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'v_direction))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visual_system) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartVel-request>) istream)
  "Deserializes a message object of type '<CartVel-request>"
  (cl:setf (cl:slot-value msg 'v_direction) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'v_direction)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_magnitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'visual_system) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartVel-request>)))
  "Returns string type for a service object of type '<CartVel-request>"
  "wam_control/CartVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartVel-request)))
  "Returns string type for a service object of type 'CartVel-request"
  "wam_control/CartVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartVel-request>)))
  "Returns md5sum for a message object of type '<CartVel-request>"
  "acd45b1363369bbb5ad0077b51700f8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartVel-request)))
  "Returns md5sum for a message object of type 'CartVel-request"
  "acd45b1363369bbb5ad0077b51700f8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartVel-request>)))
  "Returns full string definition for message of type '<CartVel-request>"
  (cl:format cl:nil "float32[3] v_direction~%float32 v_magnitude~%float32 kp~%bool visual_system~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartVel-request)))
  "Returns full string definition for message of type 'CartVel-request"
  (cl:format cl:nil "float32[3] v_direction~%float32 v_magnitude~%float32 kp~%bool visual_system~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartVel-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'v_direction) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CartVel-request
    (cl:cons ':v_direction (v_direction msg))
    (cl:cons ':v_magnitude (v_magnitude msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':visual_system (visual_system msg))
))
;//! \htmlinclude CartVel-response.msg.html

(cl:defclass <CartVel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CartVel-response (<CartVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<CartVel-response> is deprecated: use wam_control-srv:CartVel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartVel-response>) ostream)
  "Serializes a message object of type '<CartVel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartVel-response>) istream)
  "Deserializes a message object of type '<CartVel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartVel-response>)))
  "Returns string type for a service object of type '<CartVel-response>"
  "wam_control/CartVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartVel-response)))
  "Returns string type for a service object of type 'CartVel-response"
  "wam_control/CartVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartVel-response>)))
  "Returns md5sum for a message object of type '<CartVel-response>"
  "acd45b1363369bbb5ad0077b51700f8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartVel-response)))
  "Returns md5sum for a message object of type 'CartVel-response"
  "acd45b1363369bbb5ad0077b51700f8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartVel-response>)))
  "Returns full string definition for message of type '<CartVel-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartVel-response)))
  "Returns full string definition for message of type 'CartVel-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartVel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CartVel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CartVel)))
  'CartVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CartVel)))
  'CartVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartVel)))
  "Returns string type for a service object of type '<CartVel>"
  "wam_control/CartVel")