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

class HomingCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HomingCommand
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [command]
    bufferOffset = _arraySerializer.int32(obj.command, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HomingCommand
    let len;
    let data = new HomingCommand(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [command]
    data.command = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.command.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/HomingCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff29c86109f0f4cada5bbde945dd55c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used to command the homing state of all joints on the robot.
    # For each joint in the name array the corresponding value in the command
    # sets the homing mode for that joint.
    # MANUAL disengages the joint brake and puts the joint in a "gumby" mode.
    # AUTO disengages the joint brake and automatically homes the joint.
    # If a joint is already homed the command has no effect.
    string[] name
    int32[]  command
    # Valid homing commands:
    int32 MANUAL=1
    int32 AUTO=2
    # Invalid, value is used internally:
    int32 NONE=0
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HomingCommand(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = []
    }

    return resolved;
    }
};

// Constants for message
HomingCommand.Constants = {
  MANUAL: 1,
  AUTO: 2,
  NONE: 0,
}

module.exports = HomingCommand;
