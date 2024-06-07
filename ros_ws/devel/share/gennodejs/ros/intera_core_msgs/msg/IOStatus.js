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

class IOStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tag = null;
      this.id = null;
      this.detail = null;
    }
    else {
      if (initObj.hasOwnProperty('tag')) {
        this.tag = initObj.tag
      }
      else {
        this.tag = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('detail')) {
        this.detail = initObj.detail
      }
      else {
        this.detail = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOStatus
    // Serialize message field [tag]
    bufferOffset = _serializer.string(obj.tag, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [detail]
    bufferOffset = _serializer.string(obj.detail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOStatus
    let len;
    let data = new IOStatus(null);
    // Deserialize message field [tag]
    data.tag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detail]
    data.detail = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tag);
    length += _getByteLength(object.id);
    length += _getByteLength(object.detail);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IOStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8daeb84c9abffc88ad8ca636f5fd8a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new IOStatus(null);
    if (msg.tag !== undefined) {
      resolved.tag = msg.tag;
    }
    else {
      resolved.tag = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.detail !== undefined) {
      resolved.detail = msg.detail;
    }
    else {
      resolved.detail = ''
    }

    return resolved;
    }
};

// Constants for message
IOStatus.Constants = {
  DOWN: 'down',
  READY: 'ready',
  BUSY: 'busy',
  UNREADY: 'unready',
  ERROR: 'error',
}

module.exports = IOStatus;
