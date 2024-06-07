// Auto-generated. Do not edit!

// (in-package intera_motion_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class WaypointSimple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_positions = null;
      this.active_endpoint = null;
      this.pose = null;
      this.segment_index = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_positions')) {
        this.joint_positions = initObj.joint_positions
      }
      else {
        this.joint_positions = [];
      }
      if (initObj.hasOwnProperty('active_endpoint')) {
        this.active_endpoint = initObj.active_endpoint
      }
      else {
        this.active_endpoint = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('segment_index')) {
        this.segment_index = initObj.segment_index
      }
      else {
        this.segment_index = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointSimple
    // Serialize message field [joint_positions]
    bufferOffset = _arraySerializer.float64(obj.joint_positions, buffer, bufferOffset, null);
    // Serialize message field [active_endpoint]
    bufferOffset = _serializer.string(obj.active_endpoint, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [segment_index]
    bufferOffset = _serializer.int32(obj.segment_index, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointSimple
    let len;
    let data = new WaypointSimple(null);
    // Deserialize message field [joint_positions]
    data.joint_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [active_endpoint]
    data.active_endpoint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [segment_index]
    data.segment_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_positions.length;
    length += _getByteLength(object.active_endpoint);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/WaypointSimple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f29bcd94cca5f378ef52eb965645d7ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Representation of a waypoint returned during path interpolation
    # Does not include extra options
    
    # Desired joint positions
    float64[] joint_positions
    
    # Name of the endpoint that is currently active
    string active_endpoint
    
    # Cartesian pose
    geometry_msgs/Pose pose
    
    int32 segment_index
    float64 time
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointSimple(null);
    if (msg.joint_positions !== undefined) {
      resolved.joint_positions = msg.joint_positions;
    }
    else {
      resolved.joint_positions = []
    }

    if (msg.active_endpoint !== undefined) {
      resolved.active_endpoint = msg.active_endpoint;
    }
    else {
      resolved.active_endpoint = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.segment_index !== undefined) {
      resolved.segment_index = msg.segment_index;
    }
    else {
      resolved.segment_index = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = WaypointSimple;
