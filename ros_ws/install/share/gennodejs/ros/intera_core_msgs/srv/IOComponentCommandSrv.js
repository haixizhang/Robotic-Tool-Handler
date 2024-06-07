// Auto-generated. Do not edit!

// (in-package intera_core_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IOComponentCommand = require('../msg/IOComponentCommand.js');

//-----------------------------------------------------------

let IOStatus = require('../msg/IOStatus.js');

//-----------------------------------------------------------

class IOComponentCommandSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new IOComponentCommand();
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOComponentCommandSrvRequest
    // Serialize message field [command]
    bufferOffset = IOComponentCommand.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float32(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOComponentCommandSrvRequest
    let len;
    let data = new IOComponentCommandSrvRequest(null);
    // Deserialize message field [command]
    data.command = IOComponentCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += IOComponentCommand.getMessageSize(object.command);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intera_core_msgs/IOComponentCommandSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1576f0935f7d90abe14dbedf574be71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## IO Component Command service call
    IOComponentCommand command
    float32 timeout  # max seconds to handle the request, default used if 0.0
    
    ================================================================================
    MSG: intera_core_msgs/IOComponentCommand
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
    const resolved = new IOComponentCommandSrvRequest(null);
    if (msg.command !== undefined) {
      resolved.command = IOComponentCommand.Resolve(msg.command)
    }
    else {
      resolved.command = new IOComponentCommand()
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    return resolved;
    }
};

class IOComponentCommandSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.op = null;
      this.status = null;
      this.response = null;
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
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new IOStatus();
      }
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOComponentCommandSrvResponse
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [op]
    bufferOffset = _serializer.string(obj.op, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = IOStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOComponentCommandSrvResponse
    let len;
    let data = new IOComponentCommandSrvResponse(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [op]
    data.op = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = IOStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.op);
    length += IOStatus.getMessageSize(object.status);
    length += _getByteLength(object.response);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intera_core_msgs/IOComponentCommandSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '201c021e76b3e871e24d4b9fd38ffd49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time time               # time the request was handled, serves as a sequence number
    string op               # operation performed
    IOStatus status         # status response
    string response         # (OPTIONAL) command-specific response JSON data (e.g. resulting config)
    
    
    ================================================================================
    MSG: intera_core_msgs/IOStatus
    ## IO status data
    #
    string tag             # one of the values listed below
    #   down     Inoperative, not fully instantiated
    #   ready    OK, fully operational
    #   busy     OK, not ready to output data; input data value may be stale
    #   unready  OK, not operational; data is invalid
    #   error    Error, not operational
    string DOWN      = down
    string READY     = ready
    string BUSY      = busy
    string UNREADY   = unready
    string ERROR     = error
    #
    string id             # message id, for internationalization
    #
    string detail         # optional additional status detail
    #
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOComponentCommandSrvResponse(null);
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

    if (msg.status !== undefined) {
      resolved.status = IOStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new IOStatus()
    }

    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: IOComponentCommandSrvRequest,
  Response: IOComponentCommandSrvResponse,
  md5sum() { return 'bcb324504e5e34d907a1b6d881f436cd'; },
  datatype() { return 'intera_core_msgs/IOComponentCommandSrv'; }
};
