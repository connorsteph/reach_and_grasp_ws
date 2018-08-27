; Auto-generated. Do not edit!


(cl:in-package wam_control-srv)


;//! \htmlinclude JointMoveBlock-request.msg.html

(cl:defclass <JointMoveBlock-request> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (blocking
    :reader blocking
    :initarg :blocking
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointMoveBlock-request (<JointMoveBlock-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointMoveBlock-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointMoveBlock-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<JointMoveBlock-request> is deprecated: use wam_control-srv:JointMoveBlock-request instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <JointMoveBlock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:joints-val is deprecated.  Use wam_control-srv:joints instead.")
  (joints m))

(cl:ensure-generic-function 'blocking-val :lambda-list '(m))
(cl:defmethod blocking-val ((m <JointMoveBlock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_control-srv:blocking-val is deprecated.  Use wam_control-srv:blocking instead.")
  (blocking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointMoveBlock-request>) ostream)
  "Serializes a message object of type '<JointMoveBlock-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blocking) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointMoveBlock-request>) istream)
  "Deserializes a message object of type '<JointMoveBlock-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'blocking) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointMoveBlock-request>)))
  "Returns string type for a service object of type '<JointMoveBlock-request>"
  "wam_control/JointMoveBlockRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointMoveBlock-request)))
  "Returns string type for a service object of type 'JointMoveBlock-request"
  "wam_control/JointMoveBlockRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointMoveBlock-request>)))
  "Returns md5sum for a message object of type '<JointMoveBlock-request>"
  "a35c2d19fdef1f1b6b9cace11da2b5c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointMoveBlock-request)))
  "Returns md5sum for a message object of type 'JointMoveBlock-request"
  "a35c2d19fdef1f1b6b9cace11da2b5c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointMoveBlock-request>)))
  "Returns full string definition for message of type '<JointMoveBlock-request>"
  (cl:format cl:nil "float32[] joints~%bool blocking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointMoveBlock-request)))
  "Returns full string definition for message of type 'JointMoveBlock-request"
  (cl:format cl:nil "float32[] joints~%bool blocking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointMoveBlock-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointMoveBlock-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointMoveBlock-request
    (cl:cons ':joints (joints msg))
    (cl:cons ':blocking (blocking msg))
))
;//! \htmlinclude JointMoveBlock-response.msg.html

(cl:defclass <JointMoveBlock-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JointMoveBlock-response (<JointMoveBlock-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointMoveBlock-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointMoveBlock-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_control-srv:<JointMoveBlock-response> is deprecated: use wam_control-srv:JointMoveBlock-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointMoveBlock-response>) ostream)
  "Serializes a message object of type '<JointMoveBlock-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointMoveBlock-response>) istream)
  "Deserializes a message object of type '<JointMoveBlock-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointMoveBlock-response>)))
  "Returns string type for a service object of type '<JointMoveBlock-response>"
  "wam_control/JointMoveBlockResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointMoveBlock-response)))
  "Returns string type for a service object of type 'JointMoveBlock-response"
  "wam_control/JointMoveBlockResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointMoveBlock-response>)))
  "Returns md5sum for a message object of type '<JointMoveBlock-response>"
  "a35c2d19fdef1f1b6b9cace11da2b5c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointMoveBlock-response)))
  "Returns md5sum for a message object of type 'JointMoveBlock-response"
  "a35c2d19fdef1f1b6b9cace11da2b5c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointMoveBlock-response>)))
  "Returns full string definition for message of type '<JointMoveBlock-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointMoveBlock-response)))
  "Returns full string definition for message of type 'JointMoveBlock-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointMoveBlock-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointMoveBlock-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointMoveBlock-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointMoveBlock)))
  'JointMoveBlock-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointMoveBlock)))
  'JointMoveBlock-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointMoveBlock)))
  "Returns string type for a service object of type '<JointMoveBlock>"
  "wam_control/JointMoveBlock")