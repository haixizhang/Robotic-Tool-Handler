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

class IODataStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.format = null;
      this.data = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
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
    // Serializes a message object of type IODataStatus
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [format]
    bufferOffset = _serializer.string(obj.format, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = IOStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IODataStatus
    let len;
    let data = new IODataStatus(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [format]
    data.format = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = IOStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.format);
    length += _getByteLength(object.data);
    length += IOStatus.getMessageSize(object.status);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IODataStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb31283c6afc4ddea2f5f157264e5909';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## IO Data Status
    string name       # IO Data Component name
    string format     # data format:
                      # A JSON object containing one or more of the following fields:
                      # Required:
                      #   "type" : "<type>"  JSON Type, one of:
                      #                      "bool", "int", "float", "string", "object", "array"
                      #
                      # Optional:
                      #   "dimensions" : [ N,...] if absent, [ 1 ] is assumed.
                      #   "role"       : Signal: "input", "output"; Port:  "sink", "source"
                      #   "data_type"  : qualifier for the JSON type, may be device-specific
                      #                  int data_types:  "uN", "sN", "NqM"
                      #   other device-specific qualifiers may be used and will be passed through.
    string data       # JSON data value.  An Array is expected, for example "[ 0 ]"
    IOStatus status   # Data Component status
    
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
    const resolved = new IODataStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
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

module.exports = IODataStatus;
