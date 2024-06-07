// Auto-generated. Do not edit!

// (in-package intera_motion_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointTrackingError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory_id = null;
      this.trajectory_time = null;
      this.joint_names = null;
      this.position_error = null;
      this.velocity_error = null;
      this.position_command = null;
      this.velocity_command = null;
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
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('position_error')) {
        this.position_error = initObj.position_error
      }
      else {
        this.position_error = [];
      }
      if (initObj.hasOwnProperty('velocity_error')) {
        this.velocity_error = initObj.velocity_error
      }
      else {
        this.velocity_error = [];
      }
      if (initObj.hasOwnProperty('position_command')) {
        this.position_command = initObj.position_command
      }
      else {
        this.position_command = [];
      }
      if (initObj.hasOwnProperty('velocity_command')) {
        this.velocity_command = initObj.velocity_command
      }
      else {
        this.velocity_command = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointTrackingError
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.uint32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [trajectory_time]
    bufferOffset = _serializer.float64(obj.trajectory_time, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [position_error]
    bufferOffset = _arraySerializer.float64(obj.position_error, buffer, bufferOffset, null);
    // Serialize message field [velocity_error]
    bufferOffset = _arraySerializer.float64(obj.velocity_error, buffer, bufferOffset, null);
    // Serialize message field [position_command]
    bufferOffset = _arraySerializer.float64(obj.position_command, buffer, bufferOffset, null);
    // Serialize message field [velocity_command]
    bufferOffset = _arraySerializer.float64(obj.velocity_command, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointTrackingError
    let len;
    let data = new JointTrackingError(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [trajectory_time]
    data.trajectory_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position_error]
    data.position_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_error]
    data.velocity_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position_command]
    data.position_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_command]
    data.velocity_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.position_error.length;
    length += 8 * object.velocity_error.length;
    length += 8 * object.position_command.length;
    length += 8 * object.velocity_command.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/JointTrackingError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a564fcc23df67e287d3c4c2aa3aef83b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message will be published from TrackingErrorPlugin.
    # It contains the joint-space tracking error data for diagnostics.
    Header header
    
    # ID for the trajectory.
    uint32 trajectory_id
    
    # Reference time since start of trajectory in seconds.
    float64 trajectory_time
    
    # name associated with each element for the vectors in this message
    string[] joint_names
    
    # position_error = position_measured - position_command
    # units:  radians
    float64[] position_error
    
    # velocity_error = velocity_measured - velocity_command
    # units:  radians per second
    float64[] velocity_error
    
    # joint position that is commanded for each joint, in radians
    float64[] position_command
    
    # joint velocity that is commanded for each joint, in radians per second
    float64[] velocity_command
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointTrackingError(null);
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

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.position_error !== undefined) {
      resolved.position_error = msg.position_error;
    }
    else {
      resolved.position_error = []
    }

    if (msg.velocity_error !== undefined) {
      resolved.velocity_error = msg.velocity_error;
    }
    else {
      resolved.velocity_error = []
    }

    if (msg.position_command !== undefined) {
      resolved.position_command = msg.position_command;
    }
    else {
      resolved.position_command = []
    }

    if (msg.velocity_command !== undefined) {
      resolved.velocity_command = msg.velocity_command;
    }
    else {
      resolved.velocity_command = []
    }

    return resolved;
    }
};

module.exports = JointTrackingError;
