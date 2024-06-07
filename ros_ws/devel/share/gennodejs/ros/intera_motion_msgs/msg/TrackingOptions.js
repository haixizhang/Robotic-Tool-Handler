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

class TrackingOptions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.use_min_time_rate = null;
      this.min_time_rate = null;
      this.use_max_time_rate = null;
      this.max_time_rate = null;
      this.goal_joint_tolerance = null;
      this.use_settling_time_at_goal = null;
      this.settling_time_at_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('use_min_time_rate')) {
        this.use_min_time_rate = initObj.use_min_time_rate
      }
      else {
        this.use_min_time_rate = false;
      }
      if (initObj.hasOwnProperty('min_time_rate')) {
        this.min_time_rate = initObj.min_time_rate
      }
      else {
        this.min_time_rate = 0.0;
      }
      if (initObj.hasOwnProperty('use_max_time_rate')) {
        this.use_max_time_rate = initObj.use_max_time_rate
      }
      else {
        this.use_max_time_rate = false;
      }
      if (initObj.hasOwnProperty('max_time_rate')) {
        this.max_time_rate = initObj.max_time_rate
      }
      else {
        this.max_time_rate = 0.0;
      }
      if (initObj.hasOwnProperty('goal_joint_tolerance')) {
        this.goal_joint_tolerance = initObj.goal_joint_tolerance
      }
      else {
        this.goal_joint_tolerance = [];
      }
      if (initObj.hasOwnProperty('use_settling_time_at_goal')) {
        this.use_settling_time_at_goal = initObj.use_settling_time_at_goal
      }
      else {
        this.use_settling_time_at_goal = false;
      }
      if (initObj.hasOwnProperty('settling_time_at_goal')) {
        this.settling_time_at_goal = initObj.settling_time_at_goal
      }
      else {
        this.settling_time_at_goal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackingOptions
    // Serialize message field [use_min_time_rate]
    bufferOffset = _serializer.bool(obj.use_min_time_rate, buffer, bufferOffset);
    // Serialize message field [min_time_rate]
    bufferOffset = _serializer.float64(obj.min_time_rate, buffer, bufferOffset);
    // Serialize message field [use_max_time_rate]
    bufferOffset = _serializer.bool(obj.use_max_time_rate, buffer, bufferOffset);
    // Serialize message field [max_time_rate]
    bufferOffset = _serializer.float64(obj.max_time_rate, buffer, bufferOffset);
    // Serialize message field [goal_joint_tolerance]
    bufferOffset = _arraySerializer.float64(obj.goal_joint_tolerance, buffer, bufferOffset, null);
    // Serialize message field [use_settling_time_at_goal]
    bufferOffset = _serializer.bool(obj.use_settling_time_at_goal, buffer, bufferOffset);
    // Serialize message field [settling_time_at_goal]
    bufferOffset = _serializer.float64(obj.settling_time_at_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingOptions
    let len;
    let data = new TrackingOptions(null);
    // Deserialize message field [use_min_time_rate]
    data.use_min_time_rate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_time_rate]
    data.min_time_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [use_max_time_rate]
    data.use_max_time_rate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_time_rate]
    data.max_time_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_joint_tolerance]
    data.goal_joint_tolerance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [use_settling_time_at_goal]
    data.use_settling_time_at_goal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [settling_time_at_goal]
    data.settling_time_at_goal = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.goal_joint_tolerance.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/TrackingOptions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e848e8a266b514c3bde707d0e1859055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Minimum trajectory tracking time rate:  (default = less than one)
    bool     use_min_time_rate
    float64  min_time_rate
    
    # Maximum trajectory tracking time rate:  (1.0 = real-time = default)
    bool     use_max_time_rate
    float64  max_time_rate
    
    # Angular error tolerance at final point on trajectory (rad)
    float64[] goal_joint_tolerance
    
    # Time for the controller to settle within joint tolerances at the goal (sec)
    bool     use_settling_time_at_goal
    float64  settling_time_at_goal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackingOptions(null);
    if (msg.use_min_time_rate !== undefined) {
      resolved.use_min_time_rate = msg.use_min_time_rate;
    }
    else {
      resolved.use_min_time_rate = false
    }

    if (msg.min_time_rate !== undefined) {
      resolved.min_time_rate = msg.min_time_rate;
    }
    else {
      resolved.min_time_rate = 0.0
    }

    if (msg.use_max_time_rate !== undefined) {
      resolved.use_max_time_rate = msg.use_max_time_rate;
    }
    else {
      resolved.use_max_time_rate = false
    }

    if (msg.max_time_rate !== undefined) {
      resolved.max_time_rate = msg.max_time_rate;
    }
    else {
      resolved.max_time_rate = 0.0
    }

    if (msg.goal_joint_tolerance !== undefined) {
      resolved.goal_joint_tolerance = msg.goal_joint_tolerance;
    }
    else {
      resolved.goal_joint_tolerance = []
    }

    if (msg.use_settling_time_at_goal !== undefined) {
      resolved.use_settling_time_at_goal = msg.use_settling_time_at_goal;
    }
    else {
      resolved.use_settling_time_at_goal = false
    }

    if (msg.settling_time_at_goal !== undefined) {
      resolved.settling_time_at_goal = msg.settling_time_at_goal;
    }
    else {
      resolved.settling_time_at_goal = 0.0
    }

    return resolved;
    }
};

module.exports = TrackingOptions;
