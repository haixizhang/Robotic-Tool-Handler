// Auto-generated. Do not edit!

// (in-package intera_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HeadPanCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target = null;
      this.speed_ratio = null;
      this.pan_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = 0.0;
      }
      if (initObj.hasOwnProperty('speed_ratio')) {
        this.speed_ratio = initObj.speed_ratio
      }
      else {
        this.speed_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('pan_mode')) {
        this.pan_mode = initObj.pan_mode
      }
      else {
        this.pan_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadPanCommand
    // Serialize message field [target]
    bufferOffset = _serializer.float32(obj.target, buffer, bufferOffset);
    // Serialize message field [speed_ratio]
    bufferOffset = _serializer.float32(obj.speed_ratio, buffer, bufferOffset);
    // Serialize message field [pan_mode]
    bufferOffset = _serializer.uint8(obj.pan_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadPanCommand
    let len;
    let data = new HeadPanCommand(null);
    // Deserialize message field [target]
    data.target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_ratio]
    data.speed_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pan_mode]
    data.pan_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/HeadPanCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cb68e8755646564cf47813f91cee216';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 target              # radians for target, 0 str
    float32 speed_ratio         # Percentage of max speed [0-1]
    #
      float32 MAX_SPEED_RATIO = 1.0
      float32 MIN_SPEED_RATIO = 0.0
    #
    uint8   pan_mode  # set to one of constants below to change pan mode
    # pan_mode possible states
      uint8   SET_PASSIVE_MODE = 0
      uint8   SET_ACTIVE_MODE = 1
      uint8   SET_ACTIVE_CANCELLATION_MODE = 2
      uint8   NO_MODE_CHANGE = 3
    #
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadPanCommand(null);
    if (msg.target !== undefined) {
      resolved.target = msg.target;
    }
    else {
      resolved.target = 0.0
    }

    if (msg.speed_ratio !== undefined) {
      resolved.speed_ratio = msg.speed_ratio;
    }
    else {
      resolved.speed_ratio = 0.0
    }

    if (msg.pan_mode !== undefined) {
      resolved.pan_mode = msg.pan_mode;
    }
    else {
      resolved.pan_mode = 0
    }

    return resolved;
    }
};

// Constants for message
HeadPanCommand.Constants = {
  MAX_SPEED_RATIO: 1.0,
  MIN_SPEED_RATIO: 0.0,
  SET_PASSIVE_MODE: 0,
  SET_ACTIVE_MODE: 1,
  SET_ACTIVE_CANCELLATION_MODE: 2,
  NO_MODE_CHANGE: 3,
}

module.exports = HeadPanCommand;
