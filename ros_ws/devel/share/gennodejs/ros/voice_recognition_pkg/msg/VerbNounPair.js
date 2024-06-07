// Auto-generated. Do not edit!

// (in-package voice_recognition_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VerbNounPair {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.verb = null;
      this.noun = null;
    }
    else {
      if (initObj.hasOwnProperty('verb')) {
        this.verb = initObj.verb
      }
      else {
        this.verb = 0;
      }
      if (initObj.hasOwnProperty('noun')) {
        this.noun = initObj.noun
      }
      else {
        this.noun = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VerbNounPair
    // Serialize message field [verb]
    bufferOffset = _serializer.int32(obj.verb, buffer, bufferOffset);
    // Serialize message field [noun]
    bufferOffset = _serializer.int32(obj.noun, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VerbNounPair
    let len;
    let data = new VerbNounPair(null);
    // Deserialize message field [verb]
    data.verb = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [noun]
    data.noun = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'voice_recognition_pkg/VerbNounPair';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bdf7358f298eae1a5f20bdac9f65d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 verb
    int32 noun
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VerbNounPair(null);
    if (msg.verb !== undefined) {
      resolved.verb = msg.verb;
    }
    else {
      resolved.verb = 0
    }

    if (msg.noun !== undefined) {
      resolved.noun = msg.noun;
    }
    else {
      resolved.noun = 0
    }

    return resolved;
    }
};

module.exports = VerbNounPair;
