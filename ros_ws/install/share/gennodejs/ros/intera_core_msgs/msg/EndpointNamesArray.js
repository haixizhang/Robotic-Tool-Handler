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

class EndpointNamesArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endpoint_names = null;
    }
    else {
      if (initObj.hasOwnProperty('endpoint_names')) {
        this.endpoint_names = initObj.endpoint_names
      }
      else {
        this.endpoint_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndpointNamesArray
    // Serialize message field [endpoint_names]
    bufferOffset = _arraySerializer.string(obj.endpoint_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndpointNamesArray
    let len;
    let data = new EndpointNamesArray(null);
    // Deserialize message field [endpoint_names]
    data.endpoint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.endpoint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/EndpointNamesArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bf0a2d04056051f84da1291f261f35a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] endpoint_names
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndpointNamesArray(null);
    if (msg.endpoint_names !== undefined) {
      resolved.endpoint_names = msg.endpoint_names;
    }
    else {
      resolved.endpoint_names = []
    }

    return resolved;
    }
};

module.exports = EndpointNamesArray;
