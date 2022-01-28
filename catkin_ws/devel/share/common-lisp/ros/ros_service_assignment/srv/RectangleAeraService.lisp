; Auto-generated. Do not edit!


(cl:in-package ros_service_assignment-srv)


;//! \htmlinclude RectangleAeraService-request.msg.html

(cl:defclass <RectangleAeraService-request> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass RectangleAeraService-request (<RectangleAeraService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RectangleAeraService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RectangleAeraService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service_assignment-srv:<RectangleAeraService-request> is deprecated: use ros_service_assignment-srv:RectangleAeraService-request instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <RectangleAeraService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_assignment-srv:width-val is deprecated.  Use ros_service_assignment-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <RectangleAeraService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_assignment-srv:height-val is deprecated.  Use ros_service_assignment-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RectangleAeraService-request>) ostream)
  "Serializes a message object of type '<RectangleAeraService-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RectangleAeraService-request>) istream)
  "Deserializes a message object of type '<RectangleAeraService-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RectangleAeraService-request>)))
  "Returns string type for a service object of type '<RectangleAeraService-request>"
  "ros_service_assignment/RectangleAeraServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectangleAeraService-request)))
  "Returns string type for a service object of type 'RectangleAeraService-request"
  "ros_service_assignment/RectangleAeraServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RectangleAeraService-request>)))
  "Returns md5sum for a message object of type '<RectangleAeraService-request>"
  "92e9c8f940da77dc3e1bc289f7dd146e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RectangleAeraService-request)))
  "Returns md5sum for a message object of type 'RectangleAeraService-request"
  "92e9c8f940da77dc3e1bc289f7dd146e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RectangleAeraService-request>)))
  "Returns full string definition for message of type '<RectangleAeraService-request>"
  (cl:format cl:nil "float32 width~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RectangleAeraService-request)))
  "Returns full string definition for message of type 'RectangleAeraService-request"
  (cl:format cl:nil "float32 width~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RectangleAeraService-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RectangleAeraService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RectangleAeraService-request
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude RectangleAeraService-response.msg.html

(cl:defclass <RectangleAeraService-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass RectangleAeraService-response (<RectangleAeraService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RectangleAeraService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RectangleAeraService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service_assignment-srv:<RectangleAeraService-response> is deprecated: use ros_service_assignment-srv:RectangleAeraService-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <RectangleAeraService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service_assignment-srv:area-val is deprecated.  Use ros_service_assignment-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RectangleAeraService-response>) ostream)
  "Serializes a message object of type '<RectangleAeraService-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RectangleAeraService-response>) istream)
  "Deserializes a message object of type '<RectangleAeraService-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RectangleAeraService-response>)))
  "Returns string type for a service object of type '<RectangleAeraService-response>"
  "ros_service_assignment/RectangleAeraServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectangleAeraService-response)))
  "Returns string type for a service object of type 'RectangleAeraService-response"
  "ros_service_assignment/RectangleAeraServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RectangleAeraService-response>)))
  "Returns md5sum for a message object of type '<RectangleAeraService-response>"
  "92e9c8f940da77dc3e1bc289f7dd146e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RectangleAeraService-response)))
  "Returns md5sum for a message object of type 'RectangleAeraService-response"
  "92e9c8f940da77dc3e1bc289f7dd146e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RectangleAeraService-response>)))
  "Returns full string definition for message of type '<RectangleAeraService-response>"
  (cl:format cl:nil "float32 area~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RectangleAeraService-response)))
  "Returns full string definition for message of type 'RectangleAeraService-response"
  (cl:format cl:nil "float32 area~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RectangleAeraService-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RectangleAeraService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RectangleAeraService-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RectangleAeraService)))
  'RectangleAeraService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RectangleAeraService)))
  'RectangleAeraService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectangleAeraService)))
  "Returns string type for a service object of type '<RectangleAeraService>"
  "ros_service_assignment/RectangleAeraService")