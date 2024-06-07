// Auto-generated. Do not edit!

// (in-package intera_motion_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointOptions = require('./WaypointOptions.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_positions = null;
      this.active_endpoint = null;
      this.pose = null;
      this.options = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_positions')) {
        this.joint_positions = initObj.joint_positions
      }
      else {
        this.joint_positions = [];
      }
      if (initObj.hasOwnProperty('active_endpoint')) {
        this.active_endpoint = initObj.active_endpoint
      }
      else {
        this.active_endpoint = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('options')) {
        this.options = initObj.options
      }
      else {
        this.options = new WaypointOptions();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [joint_positions]
    bufferOffset = _arraySerializer.float64(obj.joint_positions, buffer, bufferOffset, null);
    // Serialize message field [active_endpoint]
    bufferOffset = _serializer.string(obj.active_endpoint, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [options]
    bufferOffset = WaypointOptions.serialize(obj.options, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [joint_positions]
    data.joint_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [active_endpoint]
    data.active_endpoint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [options]
    data.options = WaypointOptions.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_positions.length;
    length += _getByteLength(object.active_endpoint);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += WaypointOptions.getMessageSize(object.options);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8284b290b22204acc5e4d8000467b033';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Representation of a waypoint used by the motion controller
    
    # Desired joint positions
    # For Cartesian segments, the joint positions are used as nullspace biases
    float64[] joint_positions
    
    # Name of the endpoint that is currently active
    string active_endpoint
    
    # Cartesian pose
    # This is not used in trajectories using joint interpolation
    geometry_msgs/PoseStamped pose
    
    # Waypoint specific options
    # Default values will be used if not set
    # All waypoint options are applied to the segment moving to that waypoint
    WaypointOptions options
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: intera_motion_msgs/WaypointOptions
    # Optional waypoint label
    string label
    
    # Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)
    float64 max_joint_speed_ratio
    
    # Slowdown heuristic is triggered if tracking error exceeds tolerances - radians
    float64[] joint_tolerances
    
    # Maximum accelerations for each joint (only for joint paths) - rad/s^2.
    float64[] max_joint_accel
    
    
    ###########################################################
    # The remaining parameters only apply to Cartesian paths
    
    # Maximum linear speed of endpoint - m/s
    float64 max_linear_speed
    
    # Maximum linear acceleration of endpoint - m/s^2
    float64 max_linear_accel
    
    # Maximum rotational speed of endpoint - rad/s
    float64 max_rotational_speed
    
    # Maximum rotational acceleration of endpoint - rad/s^2
    float64 max_rotational_accel
    
    # Used for smoothing corners for continuous motion - m
    # The distance from the waypoint to where the curve starts while blending from
    # one straight line segment to the next.
    # Larger distance:  trajectory passes farther from the waypoint at a higher speed
    # Smaller distance:  trajectory passes closer to the waypoint at a lower speed
    # Zero distance:  trajectory passes through the waypoint at zero speed
    float64 corner_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoint(null);
    if (msg.joint_positions !== undefined) {
      resolved.joint_positions = msg.joint_positions;
    }
    else {
      resolved.joint_positions = []
    }

    if (msg.active_endpoint !== undefined) {
      resolved.active_endpoint = msg.active_endpoint;
    }
    else {
      resolved.active_endpoint = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.options !== undefined) {
      resolved.options = WaypointOptions.Resolve(msg.options)
    }
    else {
      resolved.options = new WaypointOptions()
    }

    return resolved;
    }
};

module.exports = Waypoint;
