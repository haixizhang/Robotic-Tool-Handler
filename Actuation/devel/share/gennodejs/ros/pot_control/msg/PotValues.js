// Auto-generated. Do not edit!

// (in-package pot_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PotValue = require('./PotValue.js');

//-----------------------------------------------------------

class PotValues {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.potvalues = null;
    }
    else {
      if (initObj.hasOwnProperty('potvalues')) {
        this.potvalues = initObj.potvalues
      }
      else {
        this.potvalues = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PotValues
    // Serialize message field [potvalues]
    // Serialize the length for message field [potvalues]
    bufferOffset = _serializer.uint32(obj.potvalues.length, buffer, bufferOffset);
    obj.potvalues.forEach((val) => {
      bufferOffset = PotValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PotValues
    let len;
    let data = new PotValues(null);
    // Deserialize message field [potvalues]
    // Deserialize array length for message field [potvalues]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.potvalues = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.potvalues[i] = PotValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.potvalues.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pot_control/PotValues';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e183ac20561a041ec8e4a989a1a2404';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PotValue[] potvalues
    
    ================================================================================
    MSG: pot_control/PotValue
    float32[2] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PotValues(null);
    if (msg.potvalues !== undefined) {
      resolved.potvalues = new Array(msg.potvalues.length);
      for (let i = 0; i < resolved.potvalues.length; ++i) {
        resolved.potvalues[i] = PotValue.Resolve(msg.potvalues[i]);
      }
    }
    else {
      resolved.potvalues = []
    }

    return resolved;
    }
};

module.exports = PotValues;
