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

class HeadState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pan = null;
      this.isTurning = null;
      this.isBlocked = null;
      this.panMode = null;
    }
    else {
      if (initObj.hasOwnProperty('pan')) {
        this.pan = initObj.pan
      }
      else {
        this.pan = 0.0;
      }
      if (initObj.hasOwnProperty('isTurning')) {
        this.isTurning = initObj.isTurning
      }
      else {
        this.isTurning = false;
      }
      if (initObj.hasOwnProperty('isBlocked')) {
        this.isBlocked = initObj.isBlocked
      }
      else {
        this.isBlocked = false;
      }
      if (initObj.hasOwnProperty('panMode')) {
        this.panMode = initObj.panMode
      }
      else {
        this.panMode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadState
    // Serialize message field [pan]
    bufferOffset = _serializer.float32(obj.pan, buffer, bufferOffset);
    // Serialize message field [isTurning]
    bufferOffset = _serializer.bool(obj.isTurning, buffer, bufferOffset);
    // Serialize message field [isBlocked]
    bufferOffset = _serializer.bool(obj.isBlocked, buffer, bufferOffset);
    // Serialize message field [panMode]
    bufferOffset = _serializer.uint8(obj.panMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadState
    let len;
    let data = new HeadState(null);
    // Deserialize message field [pan]
    data.pan = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isTurning]
    data.isTurning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isBlocked]
    data.isBlocked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [panMode]
    data.panMode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/HeadState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51024ade10ffefe117049c9ba6fd743c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pan
    bool isTurning
    
    # isBlocked will be true during active cancellation when the desired head position
    # can not be reached because of j0's current position
    bool isBlocked
    
    # panMode will be one of
    uint8 PASSIVE_MODE             = 0
    uint8 ACTIVE_MODE              = 1
    uint8 ACTIVE_CANCELLATION_MODE = 2
    #
    uint8 panMode
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadState(null);
    if (msg.pan !== undefined) {
      resolved.pan = msg.pan;
    }
    else {
      resolved.pan = 0.0
    }

    if (msg.isTurning !== undefined) {
      resolved.isTurning = msg.isTurning;
    }
    else {
      resolved.isTurning = false
    }

    if (msg.isBlocked !== undefined) {
      resolved.isBlocked = msg.isBlocked;
    }
    else {
      resolved.isBlocked = false
    }

    if (msg.panMode !== undefined) {
      resolved.panMode = msg.panMode;
    }
    else {
      resolved.panMode = 0
    }

    return resolved;
    }
};

// Constants for message
HeadState.Constants = {
  PASSIVE_MODE: 0,
  ACTIVE_MODE: 1,
  ACTIVE_CANCELLATION_MODE: 2,
}

module.exports = HeadState;
