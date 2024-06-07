// Auto-generated. Do not edit!

// (in-package intera_motion_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaypointOptions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.max_joint_speed_ratio = null;
      this.joint_tolerances = null;
      this.max_joint_accel = null;
      this.max_linear_speed = null;
      this.max_linear_accel = null;
      this.max_rotational_speed = null;
      this.max_rotational_accel = null;
      this.corner_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('max_joint_speed_ratio')) {
        this.max_joint_speed_ratio = initObj.max_joint_speed_ratio
      }
      else {
        this.max_joint_speed_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('joint_tolerances')) {
        this.joint_tolerances = initObj.joint_tolerances
      }
      else {
        this.joint_tolerances = [];
      }
      if (initObj.hasOwnProperty('max_joint_accel')) {
        this.max_joint_accel = initObj.max_joint_accel
      }
      else {
        this.max_joint_accel = [];
      }
      if (initObj.hasOwnProperty('max_linear_speed')) {
        this.max_linear_speed = initObj.max_linear_speed
      }
      else {
        this.max_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_accel')) {
        this.max_linear_accel = initObj.max_linear_accel
      }
      else {
        this.max_linear_accel = 0.0;
      }
      if (initObj.hasOwnProperty('max_rotational_speed')) {
        this.max_rotational_speed = initObj.max_rotational_speed
      }
      else {
        this.max_rotational_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_rotational_accel')) {
        this.max_rotational_accel = initObj.max_rotational_accel
      }
      else {
        this.max_rotational_accel = 0.0;
      }
      if (initObj.hasOwnProperty('corner_distance')) {
        this.corner_distance = initObj.corner_distance
      }
      else {
        this.corner_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointOptions
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [max_joint_speed_ratio]
    bufferOffset = _serializer.float64(obj.max_joint_speed_ratio, buffer, bufferOffset);
    // Serialize message field [joint_tolerances]
    bufferOffset = _arraySerializer.float64(obj.joint_tolerances, buffer, bufferOffset, null);
    // Serialize message field [max_joint_accel]
    bufferOffset = _arraySerializer.float64(obj.max_joint_accel, buffer, bufferOffset, null);
    // Serialize message field [max_linear_speed]
    bufferOffset = _serializer.float64(obj.max_linear_speed, buffer, bufferOffset);
    // Serialize message field [max_linear_accel]
    bufferOffset = _serializer.float64(obj.max_linear_accel, buffer, bufferOffset);
    // Serialize message field [max_rotational_speed]
    bufferOffset = _serializer.float64(obj.max_rotational_speed, buffer, bufferOffset);
    // Serialize message field [max_rotational_accel]
    bufferOffset = _serializer.float64(obj.max_rotational_accel, buffer, bufferOffset);
    // Serialize message field [corner_distance]
    bufferOffset = _serializer.float64(obj.corner_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointOptions
    let len;
    let data = new WaypointOptions(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [max_joint_speed_ratio]
    data.max_joint_speed_ratio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_tolerances]
    data.joint_tolerances = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_joint_accel]
    data.max_joint_accel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_linear_speed]
    data.max_linear_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_linear_accel]
    data.max_linear_accel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_rotational_speed]
    data.max_rotational_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_rotational_accel]
    data.max_rotational_accel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [corner_distance]
    data.corner_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    length += 8 * object.joint_tolerances.length;
    length += 8 * object.max_joint_accel.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/WaypointOptions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b4687d4e536269b06e629169723339f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WaypointOptions(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.max_joint_speed_ratio !== undefined) {
      resolved.max_joint_speed_ratio = msg.max_joint_speed_ratio;
    }
    else {
      resolved.max_joint_speed_ratio = 0.0
    }

    if (msg.joint_tolerances !== undefined) {
      resolved.joint_tolerances = msg.joint_tolerances;
    }
    else {
      resolved.joint_tolerances = []
    }

    if (msg.max_joint_accel !== undefined) {
      resolved.max_joint_accel = msg.max_joint_accel;
    }
    else {
      resolved.max_joint_accel = []
    }

    if (msg.max_linear_speed !== undefined) {
      resolved.max_linear_speed = msg.max_linear_speed;
    }
    else {
      resolved.max_linear_speed = 0.0
    }

    if (msg.max_linear_accel !== undefined) {
      resolved.max_linear_accel = msg.max_linear_accel;
    }
    else {
      resolved.max_linear_accel = 0.0
    }

    if (msg.max_rotational_speed !== undefined) {
      resolved.max_rotational_speed = msg.max_rotational_speed;
    }
    else {
      resolved.max_rotational_speed = 0.0
    }

    if (msg.max_rotational_accel !== undefined) {
      resolved.max_rotational_accel = msg.max_rotational_accel;
    }
    else {
      resolved.max_rotational_accel = 0.0
    }

    if (msg.corner_distance !== undefined) {
      resolved.corner_distance = msg.corner_distance;
    }
    else {
      resolved.corner_distance = 0.0
    }

    return resolved;
    }
};

module.exports = WaypointOptions;
