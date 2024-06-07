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

class IOComponentCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.op = null;
      this.args = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('op')) {
        this.op = initObj.op
      }
      else {
        this.op = '';
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOComponentCommand
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [op]
    bufferOffset = _serializer.string(obj.op, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _serializer.string(obj.args, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOComponentCommand
    let len;
    let data = new IOComponentCommand(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [op]
    data.op = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.op);
    length += _getByteLength(object.args);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IOComponentCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ede95ba2953dc221dc82cac20f697530';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## IO Component Command
    time time      # time the message was created, serves as a sequence number
    string op      # operation to perform
    string args    # JSON arguments
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOComponentCommand(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.op !== undefined) {
      resolved.op = msg.op;
    }
    else {
      resolved.op = ''
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = ''
    }

    return resolved;
    }
};

module.exports = IOComponentCommand;
