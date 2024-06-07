// Auto-generated. Do not edit!

// (in-package intera_core_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SolvePositionFKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.configuration = null;
      this.tip_names = null;
    }
    else {
      if (initObj.hasOwnProperty('configuration')) {
        this.configuration = initObj.configuration
      }
      else {
        this.configuration = [];
      }
      if (initObj.hasOwnProperty('tip_names')) {
        this.tip_names = initObj.tip_names
      }
      else {
        this.tip_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolvePositionFKRequest
    // Serialize message field [configuration]
    // Serialize the length for message field [configuration]
    bufferOffset = _serializer.uint32(obj.configuration.length, buffer, bufferOffset);
    obj.configuration.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tip_names]
    bufferOffset = _arraySerializer.string(obj.tip_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolvePositionFKRequest
    let len;
    let data = new SolvePositionFKRequest(null);
    // Deserialize message field [configuration]
    // Deserialize array length for message field [configuration]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.configuration = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.configuration[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tip_names]
    data.tip_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.configuration.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    object.tip_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intera_core_msgs/SolvePositionFKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14c88cbabc4e4d6c183969e91f5e56ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Joint positions(s) to request Forward-Kinematics joint solutions for
    sensor_msgs/JointState[] configuration
    
    # Tip name for each pose FK
    string[] tip_names
    
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SolvePositionFKRequest(null);
    if (msg.configuration !== undefined) {
      resolved.configuration = new Array(msg.configuration.length);
      for (let i = 0; i < resolved.configuration.length; ++i) {
        resolved.configuration[i] = sensor_msgs.msg.JointState.Resolve(msg.configuration[i]);
      }
    }
    else {
      resolved.configuration = []
    }

    if (msg.tip_names !== undefined) {
      resolved.tip_names = msg.tip_names;
    }
    else {
      resolved.tip_names = []
    }

    return resolved;
    }
};

class SolvePositionFKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_stamp = null;
      this.isValid = null;
      this.inCollision = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_stamp')) {
        this.pose_stamp = initObj.pose_stamp
      }
      else {
        this.pose_stamp = [];
      }
      if (initObj.hasOwnProperty('isValid')) {
        this.isValid = initObj.isValid
      }
      else {
        this.isValid = [];
      }
      if (initObj.hasOwnProperty('inCollision')) {
        this.inCollision = initObj.inCollision
      }
      else {
        this.inCollision = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolvePositionFKResponse
    // Serialize message field [pose_stamp]
    // Serialize the length for message field [pose_stamp]
    bufferOffset = _serializer.uint32(obj.pose_stamp.length, buffer, bufferOffset);
    obj.pose_stamp.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [isValid]
    bufferOffset = _arraySerializer.bool(obj.isValid, buffer, bufferOffset, null);
    // Serialize message field [inCollision]
    bufferOffset = _arraySerializer.bool(obj.inCollision, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolvePositionFKResponse
    let len;
    let data = new SolvePositionFKResponse(null);
    // Deserialize message field [pose_stamp]
    // Deserialize array length for message field [pose_stamp]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_stamp = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_stamp[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [isValid]
    data.isValid = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [inCollision]
    data.inCollision = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pose_stamp.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    length += object.isValid.length;
    length += object.inCollision.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intera_core_msgs/SolvePositionFKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '907cf9ee4b255127ce59627076bd1e85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Solution(s) per FK call
    geometry_msgs/PoseStamped[] pose_stamp
    bool[] isValid
    bool[] inCollision
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new SolvePositionFKResponse(null);
    if (msg.pose_stamp !== undefined) {
      resolved.pose_stamp = new Array(msg.pose_stamp.length);
      for (let i = 0; i < resolved.pose_stamp.length; ++i) {
        resolved.pose_stamp[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stamp[i]);
      }
    }
    else {
      resolved.pose_stamp = []
    }

    if (msg.isValid !== undefined) {
      resolved.isValid = msg.isValid;
    }
    else {
      resolved.isValid = []
    }

    if (msg.inCollision !== undefined) {
      resolved.inCollision = msg.inCollision;
    }
    else {
      resolved.inCollision = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SolvePositionFKRequest,
  Response: SolvePositionFKResponse,
  md5sum() { return '6db8c7b904dcebec9a59022cd894ef68'; },
  datatype() { return 'intera_core_msgs/SolvePositionFK'; }
};
