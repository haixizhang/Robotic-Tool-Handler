// Auto-generated. Do not edit!

// (in-package intera_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IOStatus = require('./IOStatus.js');

//-----------------------------------------------------------

class IOComponentStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new IOStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOComponentStatus
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = IOStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOComponentStatus
    let len;
    let data = new IOComponentStatus(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = IOStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += IOStatus.getMessageSize(object.status);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IOComponentStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7daed407477edd76573df598b0375a48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## IO Component status data
    string name            # component name
    IOStatus status        # component status
    #
    
    
    
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
    const resolved = new IOComponentStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.status !== undefined) {
      resolved.status = IOStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new IOStatus()
    }

    return resolved;
    }
};

module.exports = IOComponentStatus;
