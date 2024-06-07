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

class MotionStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motion_status = null;
      this.current_trajectory = null;
      this.current_waypoint = null;
      this.motion_request = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motion_status')) {
        this.motion_status = initObj.motion_status
      }
      else {
        this.motion_status = '';
      }
      if (initObj.hasOwnProperty('current_trajectory')) {
        this.current_trajectory = initObj.current_trajectory
      }
      else {
        this.current_trajectory = '';
      }
      if (initObj.hasOwnProperty('current_waypoint')) {
        this.current_waypoint = initObj.current_waypoint
      }
      else {
        this.current_waypoint = 0;
      }
      if (initObj.hasOwnProperty('motion_request')) {
        this.motion_request = initObj.motion_request
      }
      else {
        this.motion_request = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motion_status]
    bufferOffset = _serializer.string(obj.motion_status, buffer, bufferOffset);
    // Serialize message field [current_trajectory]
    bufferOffset = _serializer.string(obj.current_trajectory, buffer, bufferOffset);
    // Serialize message field [current_waypoint]
    bufferOffset = _serializer.uint32(obj.current_waypoint, buffer, bufferOffset);
    // Serialize message field [motion_request]
    bufferOffset = _serializer.uint32(obj.motion_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionStatus
    let len;
    let data = new MotionStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_status]
    data.motion_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_trajectory]
    data.current_trajectory = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_waypoint]
    data.current_waypoint = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [motion_request]
    data.motion_request = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.motion_status);
    length += _getByteLength(object.current_trajectory);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/MotionStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '178c2a9a52d756f9d73396be4ec1a07c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # motion status
    Header header
    string motion_status
    string current_trajectory
    uint32 current_waypoint
    uint32 motion_request
    
    # motion_status enum values:
    string MOTION_IDLE=idle
    string MOTION_PENDING=pending
    string MOTION_RUNNING=running
    string MOTION_STOPPING=stopping
    string MOTION_DONE=done
    string MOTION_PREEMPTED=preempted
    string MOTION_ERROR=error
    
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
    const resolved = new MotionStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motion_status !== undefined) {
      resolved.motion_status = msg.motion_status;
    }
    else {
      resolved.motion_status = ''
    }

    if (msg.current_trajectory !== undefined) {
      resolved.current_trajectory = msg.current_trajectory;
    }
    else {
      resolved.current_trajectory = ''
    }

    if (msg.current_waypoint !== undefined) {
      resolved.current_waypoint = msg.current_waypoint;
    }
    else {
      resolved.current_waypoint = 0
    }

    if (msg.motion_request !== undefined) {
      resolved.motion_request = msg.motion_request;
    }
    else {
      resolved.motion_request = 0
    }

    return resolved;
    }
};

// Constants for message
MotionStatus.Constants = {
  MOTION_IDLE: 'idle',
  MOTION_PENDING: 'pending',
  MOTION_RUNNING: 'running',
  MOTION_STOPPING: 'stopping',
  MOTION_DONE: 'done',
  MOTION_PREEMPTED: 'preempted',
  MOTION_ERROR: 'error',
}

module.exports = MotionStatus;
