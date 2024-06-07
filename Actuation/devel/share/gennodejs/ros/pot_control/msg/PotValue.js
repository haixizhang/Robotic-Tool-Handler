// Auto-generated. Do not edit!

// (in-package pot_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PotValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PotValue
    // Check that the constant length array field [values] has the right length
    if (obj.values.length !== 2) {
      throw new Error('Unable to serialize array field values - length must be 2')
    }
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float32(obj.values, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PotValue
    let len;
    let data = new PotValue(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pot_control/PotValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c334281ada2d017b8a6955b9529fd69a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[2] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PotValue(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = PotValue;
