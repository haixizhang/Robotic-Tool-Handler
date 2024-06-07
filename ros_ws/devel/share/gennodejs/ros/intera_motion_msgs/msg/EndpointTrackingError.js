// Auto-generated. Do not edit!

// (in-package intera_motion_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EndpointTrackingError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory_id = null;
      this.trajectory_time = null;
      this.active_endpoint = null;
      this.pose_error = null;
      this.twist_error = null;
      this.pose_command = null;
      this.twist_command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
      if (initObj.hasOwnProperty('trajectory_time')) {
        this.trajectory_time = initObj.trajectory_time
      }
      else {
        this.trajectory_time = 0.0;
      }
      if (initObj.hasOwnProperty('active_endpoint')) {
        this.active_endpoint = initObj.active_endpoint
      }
      else {
        this.active_endpoint = '';
      }
      if (initObj.hasOwnProperty('pose_error')) {
        this.pose_error = initObj.pose_error
      }
      else {
        this.pose_error = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist_error')) {
        this.twist_error = initObj.twist_error
      }
      else {
        this.twist_error = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('pose_command')) {
        this.pose_command = initObj.pose_command
      }
      else {
        this.pose_command = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist_command')) {
        this.twist_command = initObj.twist_command
      }
      else {
        this.twist_command = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndpointTrackingError
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.uint32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [trajectory_time]
    bufferOffset = _serializer.float64(obj.trajectory_time, buffer, bufferOffset);
    // Serialize message field [active_endpoint]
    bufferOffset = _serializer.string(obj.active_endpoint, buffer, bufferOffset);
    // Serialize message field [pose_error]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_error, buffer, bufferOffset);
    // Serialize message field [twist_error]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist_error, buffer, bufferOffset);
    // Serialize message field [pose_command]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_command, buffer, bufferOffset);
    // Serialize message field [twist_command]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndpointTrackingError
    let len;
    let data = new EndpointTrackingError(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [trajectory_time]
    data.trajectory_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [active_endpoint]
    data.active_endpoint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_error]
    data.pose_error = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_error]
    data.twist_error = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_command]
    data.pose_command = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_command]
    data.twist_command = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.active_endpoint);
    return length + 224;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/EndpointTrackingError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c266cbf60fc5f871b5909394c05032fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message will be published from the TrackingController
    # It contains the endpoint tracking error data for diagnostics.
    Header header
    
    # ID for the trajectory.
    uint32 trajectory_id
    
    # Reference time since start of trajectory in seconds.
    float64 trajectory_time
    
    # Name of the endpoint that is currently active (coordinate frame name)
    string active_endpoint
    
    # pose_error transforms from pose_command to pose_measured
    # units: translation (meters) ; orientation (quaternion)
    geometry_msgs/Pose pose_error
    
    # twist_error = twist_measured) - twist_command
    # units: linear (meters) ; angular (radians per second)
    geometry_msgs/Twist twist_error
    
    # pose that is commanded at the active_endpoint
    # units: translation (meters) ; orientation (quaternion)
    geometry_msgs/Pose pose_command
    
    # twist that is commanded at the active_endpoint
    # units: linear (meters) ; angular (radians per second)
    geometry_msgs/Twist twist_command
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndpointTrackingError(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    if (msg.trajectory_time !== undefined) {
      resolved.trajectory_time = msg.trajectory_time;
    }
    else {
      resolved.trajectory_time = 0.0
    }

    if (msg.active_endpoint !== undefined) {
      resolved.active_endpoint = msg.active_endpoint;
    }
    else {
      resolved.active_endpoint = ''
    }

    if (msg.pose_error !== undefined) {
      resolved.pose_error = geometry_msgs.msg.Pose.Resolve(msg.pose_error)
    }
    else {
      resolved.pose_error = new geometry_msgs.msg.Pose()
    }

    if (msg.twist_error !== undefined) {
      resolved.twist_error = geometry_msgs.msg.Twist.Resolve(msg.twist_error)
    }
    else {
      resolved.twist_error = new geometry_msgs.msg.Twist()
    }

    if (msg.pose_command !== undefined) {
      resolved.pose_command = geometry_msgs.msg.Pose.Resolve(msg.pose_command)
    }
    else {
      resolved.pose_command = new geometry_msgs.msg.Pose()
    }

    if (msg.twist_command !== undefined) {
      resolved.twist_command = geometry_msgs.msg.Twist.Resolve(msg.twist_command)
    }
    else {
      resolved.twist_command = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = EndpointTrackingError;
