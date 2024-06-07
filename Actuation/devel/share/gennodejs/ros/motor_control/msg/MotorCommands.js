// Auto-generated. Do not edit!

// (in-package motor_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorCommand = require('./MotorCommand.js');

//-----------------------------------------------------------

class MotorCommands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorcommands = null;
    }
    else {
      if (initObj.hasOwnProperty('motorcommands')) {
        this.motorcommands = initObj.motorcommands
      }
      else {
        this.motorcommands = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorCommands
    // Serialize message field [motorcommands]
    // Serialize the length for message field [motorcommands]
    bufferOffset = _serializer.uint32(obj.motorcommands.length, buffer, bufferOffset);
    obj.motorcommands.forEach((val) => {
      bufferOffset = MotorCommand.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCommands
    let len;
    let data = new MotorCommands(null);
    // Deserialize message field [motorcommands]
    // Deserialize array length for message field [motorcommands]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motorcommands = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorcommands[i] = MotorCommand.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 5 * object.motorcommands.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motor_control/MotorCommands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2edb3d2f4d8f2a09fe7cbec56216411';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorCommand[] motorcommands
    
    ================================================================================
    MSG: motor_control/MotorCommand
    char channel
    float32 angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCommands(null);
    if (msg.motorcommands !== undefined) {
      resolved.motorcommands = new Array(msg.motorcommands.length);
      for (let i = 0; i < resolved.motorcommands.length; ++i) {
        resolved.motorcommands[i] = MotorCommand.Resolve(msg.motorcommands[i]);
      }
    }
    else {
      resolved.motorcommands = []
    }

    return resolved;
    }
};

module.exports = MotorCommands;
