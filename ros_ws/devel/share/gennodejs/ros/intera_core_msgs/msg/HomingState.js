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

class HomingState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HomingState
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [state]
    bufferOffset = _arraySerializer.int32(obj.state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HomingState
    let len;
    let data = new HomingState(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [state]
    data.state = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.state.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/HomingState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eacb82bc7d74638daa749d9caab52b99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This holds the homing state for each movable joint on the robot.
    # A joint is in the HOMING state when a HomingCommand message enables
    # homing and the joint is not yet homed.
    # Joints that do not need homing are always in the HOMED state.
    string[] name
    int32[]  state
    # Valid homing states:
    int32 HOMED=0
    int32 HOMING=1
    int32 NOT_HOMED=2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HomingState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    return resolved;
    }
};

// Constants for message
HomingState.Constants = {
  HOMED: 0,
  HOMING: 1,
  NOT_HOMED: 2,
}

module.exports = HomingState;
