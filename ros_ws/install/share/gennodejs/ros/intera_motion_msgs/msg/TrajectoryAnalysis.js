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

class TrajectoryAnalysis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planned_duration = null;
      this.measured_duration = null;
      this.min_angle_command = null;
      this.max_angle_command = null;
      this.peak_speed_command = null;
      this.peak_accel_command = null;
      this.peak_jerk_command = null;
      this.min_time_rate = null;
      this.max_time_rate = null;
      this.max_position_error = null;
      this.max_velocity_error = null;
    }
    else {
      if (initObj.hasOwnProperty('planned_duration')) {
        this.planned_duration = initObj.planned_duration
      }
      else {
        this.planned_duration = 0.0;
      }
      if (initObj.hasOwnProperty('measured_duration')) {
        this.measured_duration = initObj.measured_duration
      }
      else {
        this.measured_duration = 0.0;
      }
      if (initObj.hasOwnProperty('min_angle_command')) {
        this.min_angle_command = initObj.min_angle_command
      }
      else {
        this.min_angle_command = [];
      }
      if (initObj.hasOwnProperty('max_angle_command')) {
        this.max_angle_command = initObj.max_angle_command
      }
      else {
        this.max_angle_command = [];
      }
      if (initObj.hasOwnProperty('peak_speed_command')) {
        this.peak_speed_command = initObj.peak_speed_command
      }
      else {
        this.peak_speed_command = [];
      }
      if (initObj.hasOwnProperty('peak_accel_command')) {
        this.peak_accel_command = initObj.peak_accel_command
      }
      else {
        this.peak_accel_command = [];
      }
      if (initObj.hasOwnProperty('peak_jerk_command')) {
        this.peak_jerk_command = initObj.peak_jerk_command
      }
      else {
        this.peak_jerk_command = [];
      }
      if (initObj.hasOwnProperty('min_time_rate')) {
        this.min_time_rate = initObj.min_time_rate
      }
      else {
        this.min_time_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_time_rate')) {
        this.max_time_rate = initObj.max_time_rate
      }
      else {
        this.max_time_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_position_error')) {
        this.max_position_error = initObj.max_position_error
      }
      else {
        this.max_position_error = [];
      }
      if (initObj.hasOwnProperty('max_velocity_error')) {
        this.max_velocity_error = initObj.max_velocity_error
      }
      else {
        this.max_velocity_error = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryAnalysis
    // Serialize message field [planned_duration]
    bufferOffset = _serializer.float64(obj.planned_duration, buffer, bufferOffset);
    // Serialize message field [measured_duration]
    bufferOffset = _serializer.float64(obj.measured_duration, buffer, bufferOffset);
    // Serialize message field [min_angle_command]
    bufferOffset = _arraySerializer.float64(obj.min_angle_command, buffer, bufferOffset, null);
    // Serialize message field [max_angle_command]
    bufferOffset = _arraySerializer.float64(obj.max_angle_command, buffer, bufferOffset, null);
    // Serialize message field [peak_speed_command]
    bufferOffset = _arraySerializer.float64(obj.peak_speed_command, buffer, bufferOffset, null);
    // Serialize message field [peak_accel_command]
    bufferOffset = _arraySerializer.float64(obj.peak_accel_command, buffer, bufferOffset, null);
    // Serialize message field [peak_jerk_command]
    bufferOffset = _arraySerializer.float64(obj.peak_jerk_command, buffer, bufferOffset, null);
    // Serialize message field [min_time_rate]
    bufferOffset = _serializer.float64(obj.min_time_rate, buffer, bufferOffset);
    // Serialize message field [max_time_rate]
    bufferOffset = _serializer.float64(obj.max_time_rate, buffer, bufferOffset);
    // Serialize message field [max_position_error]
    bufferOffset = _arraySerializer.float64(obj.max_position_error, buffer, bufferOffset, null);
    // Serialize message field [max_velocity_error]
    bufferOffset = _arraySerializer.float64(obj.max_velocity_error, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryAnalysis
    let len;
    let data = new TrajectoryAnalysis(null);
    // Deserialize message field [planned_duration]
    data.planned_duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [measured_duration]
    data.measured_duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_angle_command]
    data.min_angle_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_angle_command]
    data.max_angle_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [peak_speed_command]
    data.peak_speed_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [peak_accel_command]
    data.peak_accel_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [peak_jerk_command]
    data.peak_jerk_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [min_time_rate]
    data.min_time_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_time_rate]
    data.max_time_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_position_error]
    data.max_position_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_velocity_error]
    data.max_velocity_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.min_angle_command.length;
    length += 8 * object.max_angle_command.length;
    length += 8 * object.peak_speed_command.length;
    length += 8 * object.peak_accel_command.length;
    length += 8 * object.peak_jerk_command.length;
    length += 8 * object.max_position_error.length;
    length += 8 * object.max_velocity_error.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/TrajectoryAnalysis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f30ec541413b4eb2cecc0d0af7d30ad4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The duration of the reference trajectory, as originally planned
    float64 planned_duration
    
    # The measured duration of the trajectory, as executed
    float64 measured_duration
    
    # Minimum commanded angle during trajectory for each joint
    float64[] min_angle_command
    
    # Maximum commanded angle during trajectory for each joint
    float64[] max_angle_command
    
    # Peak speed command = max(abs(reference velocity)) for each joint
    float64[] peak_speed_command
    
    # Peak accel command = max(abs(reference acceleration)) for each joint
    float64[] peak_accel_command
    
    # Peak jerk command = max(abs(reference jerk)) for each joint
    float64[] peak_jerk_command
    
    # Minimum trajectory time rate observed
    float64 min_time_rate
    
    # Maximium trajectory time rate observed
    float64 max_time_rate
    
    # Max joint position error = max(abs(position error)) for each joint
    float64[] max_position_error
    
    # Max joint velocity error = max(abs(velocity error)) for each joint
    float64[] max_velocity_error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryAnalysis(null);
    if (msg.planned_duration !== undefined) {
      resolved.planned_duration = msg.planned_duration;
    }
    else {
      resolved.planned_duration = 0.0
    }

    if (msg.measured_duration !== undefined) {
      resolved.measured_duration = msg.measured_duration;
    }
    else {
      resolved.measured_duration = 0.0
    }

    if (msg.min_angle_command !== undefined) {
      resolved.min_angle_command = msg.min_angle_command;
    }
    else {
      resolved.min_angle_command = []
    }

    if (msg.max_angle_command !== undefined) {
      resolved.max_angle_command = msg.max_angle_command;
    }
    else {
      resolved.max_angle_command = []
    }

    if (msg.peak_speed_command !== undefined) {
      resolved.peak_speed_command = msg.peak_speed_command;
    }
    else {
      resolved.peak_speed_command = []
    }

    if (msg.peak_accel_command !== undefined) {
      resolved.peak_accel_command = msg.peak_accel_command;
    }
    else {
      resolved.peak_accel_command = []
    }

    if (msg.peak_jerk_command !== undefined) {
      resolved.peak_jerk_command = msg.peak_jerk_command;
    }
    else {
      resolved.peak_jerk_command = []
    }

    if (msg.min_time_rate !== undefined) {
      resolved.min_time_rate = msg.min_time_rate;
    }
    else {
      resolved.min_time_rate = 0.0
    }

    if (msg.max_time_rate !== undefined) {
      resolved.max_time_rate = msg.max_time_rate;
    }
    else {
      resolved.max_time_rate = 0.0
    }

    if (msg.max_position_error !== undefined) {
      resolved.max_position_error = msg.max_position_error;
    }
    else {
      resolved.max_position_error = []
    }

    if (msg.max_velocity_error !== undefined) {
      resolved.max_velocity_error = msg.max_velocity_error;
    }
    else {
      resolved.max_velocity_error = []
    }

    return resolved;
    }
};

module.exports = TrajectoryAnalysis;
