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

//-----------------------------------------------------------

class IONodeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.node = null;
      this.devices = null;
      this.commands = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new IOComponentStatus();
      }
      if (initObj.hasOwnProperty('devices')) {
        this.devices = initObj.devices
      }
      else {
        this.devices = [];
      }
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IONodeStatus
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = IOComponentStatus.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [devices]
    // Serialize the length for message field [devices]
    bufferOffset = _serializer.uint32(obj.devices.length, buffer, bufferOffset);
    obj.devices.forEach((val) => {
      bufferOffset = IOComponentStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [commands]
    bufferOffset = _arraySerializer.time(obj.commands, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IONodeStatus
    let len;
    let data = new IONodeStatus(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = IOComponentStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [devices]
    // Deserialize array length for message field [devices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.devices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.devices[i] = IOComponentStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [commands]
    data.commands = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += IOComponentStatus.getMessageSize(object.node);
    object.devices.forEach((val) => {
      length += IOComponentStatus.getMessageSize(val);
    });
    length += 8 * object.commands.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IONodeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '260fce3c02f43bd977c92642b3c09c1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # IO Node Status
    time time                    # time the message was created
    IOComponentStatus node       # IO Node status
    IOComponentStatus[] devices  # status of IO Devices in this node
    time[] commands              # recent command timestamps, for syncing
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IONodeStatus(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.node !== undefined) {
      resolved.node = IOComponentStatus.Resolve(msg.node)
    }
    else {
      resolved.node = new IOComponentStatus()
    }

    if (msg.devices !== undefined) {
      resolved.devices = new Array(msg.devices.length);
      for (let i = 0; i < resolved.devices.length; ++i) {
        resolved.devices[i] = IOComponentStatus.Resolve(msg.devices[i]);
      }
    }
    else {
      resolved.devices = []
    }

    if (msg.commands !== undefined) {
      resolved.commands = msg.commands;
    }
    else {
      resolved.commands = []
    }

    return resolved;
    }
};

module.exports = IONodeStatus;
