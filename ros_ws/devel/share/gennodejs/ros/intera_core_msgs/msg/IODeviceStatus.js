// Auto-generated. Do not edit!

// (in-package intera_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IOComponentStatus = require('./IOComponentStatus.js');
let IODataStatus = require('./IODataStatus.js');

//-----------------------------------------------------------

class IODeviceStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.device = null;
      this.ports = null;
      this.signals = null;
      this.commands = null;
      this.responses = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('device')) {
        this.device = initObj.device
      }
      else {
        this.device = new IOComponentStatus();
      }
      if (initObj.hasOwnProperty('ports')) {
        this.ports = initObj.ports
      }
      else {
        this.ports = [];
      }
      if (initObj.hasOwnProperty('signals')) {
        this.signals = initObj.signals
      }
      else {
        this.signals = [];
      }
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = [];
      }
      if (initObj.hasOwnProperty('responses')) {
        this.responses = initObj.responses
      }
      else {
        this.responses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IODeviceStatus
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [device]
    bufferOffset = IOComponentStatus.serialize(obj.device, buffer, bufferOffset);
    // Serialize message field [ports]
    // Serialize the length for message field [ports]
    bufferOffset = _serializer.uint32(obj.ports.length, buffer, bufferOffset);
    obj.ports.forEach((val) => {
      bufferOffset = IODataStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [signals]
    // Serialize the length for message field [signals]
    bufferOffset = _serializer.uint32(obj.signals.length, buffer, bufferOffset);
    obj.signals.forEach((val) => {
      bufferOffset = IODataStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [commands]
    bufferOffset = _arraySerializer.time(obj.commands, buffer, bufferOffset, null);
    // Serialize message field [responses]
    bufferOffset = _arraySerializer.string(obj.responses, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IODeviceStatus
    let len;
    let data = new IODeviceStatus(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [device]
    data.device = IOComponentStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [ports]
    // Deserialize array length for message field [ports]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ports = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ports[i] = IODataStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [signals]
    // Deserialize array length for message field [signals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.signals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.signals[i] = IODataStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [commands]
    data.commands = _arrayDeserializer.time(buffer, bufferOffset, null)
    // Deserialize message field [responses]
    data.responses = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += IOComponentStatus.getMessageSize(object.device);
    object.ports.forEach((val) => {
      length += IODataStatus.getMessageSize(val);
    });
    object.signals.forEach((val) => {
      length += IODataStatus.getMessageSize(val);
    });
    length += 8 * object.commands.length;
    object.responses.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IODeviceStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d0c97a2d700848e7ad46e09a77cf896';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## IO Device status
    time time                  # time the message was created
    IOComponentStatus device   # device status data
    IODataStatus[]    ports    # Ports status
    IODataStatus[]    signals  # Signals status
    time[]            commands # recent command timestamps, for syncing
    string[]          responses # recent command responses
    
    
    ================================================================================
    MSG: intera_core_msgs/IOComponentStatus
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
    
    ================================================================================
    MSG: intera_core_msgs/IODataStatus
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IODeviceStatus(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.device !== undefined) {
      resolved.device = IOComponentStatus.Resolve(msg.device)
    }
    else {
      resolved.device = new IOComponentStatus()
    }

    if (msg.ports !== undefined) {
      resolved.ports = new Array(msg.ports.length);
      for (let i = 0; i < resolved.ports.length; ++i) {
        resolved.ports[i] = IODataStatus.Resolve(msg.ports[i]);
      }
    }
    else {
      resolved.ports = []
    }

    if (msg.signals !== undefined) {
      resolved.signals = new Array(msg.signals.length);
      for (let i = 0; i < resolved.signals.length; ++i) {
        resolved.signals[i] = IODataStatus.Resolve(msg.signals[i]);
      }
    }
    else {
      resolved.signals = []
    }

    if (msg.commands !== undefined) {
      resolved.commands = msg.commands;
    }
    else {
      resolved.commands = []
    }

    if (msg.responses !== undefined) {
      resolved.responses = msg.responses;
    }
    else {
      resolved.responses = []
    }

    return resolved;
    }
};

module.exports = IODeviceStatus;
