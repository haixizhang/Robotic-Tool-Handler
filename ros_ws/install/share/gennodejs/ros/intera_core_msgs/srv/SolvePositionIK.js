// Auto-generated. Do not edit!

// (in-package intera_core_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SolvePositionIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_stamp = null;
      this.seed_angles = null;
      this.seed_mode = null;
      this.use_nullspace_goal = null;
      this.nullspace_goal = null;
      this.nullspace_gain = null;
      this.tip_names = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_stamp')) {
        this.pose_stamp = initObj.pose_stamp
      }
      else {
        this.pose_stamp = [];
      }
      if (initObj.hasOwnProperty('seed_angles')) {
        this.seed_angles = initObj.seed_angles
      }
      else {
        this.seed_angles = [];
      }
      if (initObj.hasOwnProperty('seed_mode')) {
        this.seed_mode = initObj.seed_mode
      }
      else {
        this.seed_mode = 0;
      }
      if (initObj.hasOwnProperty('use_nullspace_goal')) {
        this.use_nullspace_goal = initObj.use_nullspace_goal
      }
      else {
        this.use_nullspace_goal = [];
      }
      if (initObj.hasOwnProperty('nullspace_goal')) {
        this.nullspace_goal = initObj.nullspace_goal
      }
      else {
        this.nullspace_goal = [];
      }
      if (initObj.hasOwnProperty('nullspace_gain')) {
        this.nullspace_gain = initObj.nullspace_gain
      }
      else {
        this.nullspace_gain = [];
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
    // Serializes a message object of type SolvePositionIKRequest
    // Serialize message field [pose_stamp]
    // Serialize the length for message field [pose_stamp]
    bufferOffset = _serializer.uint32(obj.pose_stamp.length, buffer, bufferOffset);
    obj.pose_stamp.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [seed_angles]
    // Serialize the length for message field [seed_angles]
    bufferOffset = _serializer.uint32(obj.seed_angles.length, buffer, bufferOffset);
    obj.seed_angles.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [seed_mode]
    bufferOffset = _serializer.int8(obj.seed_mode, buffer, bufferOffset);
    // Serialize message field [use_nullspace_goal]
    bufferOffset = _arraySerializer.bool(obj.use_nullspace_goal, buffer, bufferOffset, null);
    // Serialize message field [nullspace_goal]
    // Serialize the length for message field [nullspace_goal]
    bufferOffset = _serializer.uint32(obj.nullspace_goal.length, buffer, bufferOffset);
    obj.nullspace_goal.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [nullspace_gain]
    bufferOffset = _arraySerializer.float64(obj.nullspace_gain, buffer, bufferOffset, null);
    // Serialize message field [tip_names]
    bufferOffset = _arraySerializer.string(obj.tip_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolvePositionIKRequest
    let len;
    let data = new SolvePositionIKRequest(null);
    // Deserialize message field [pose_stamp]
    // Deserialize array length for message field [pose_stamp]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_stamp = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_stamp[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [seed_angles]
    // Deserialize array length for message field [seed_angles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.seed_angles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.seed_angles[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [seed_mode]
    data.seed_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [use_nullspace_goal]
    data.use_nullspace_goal = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [nullspace_goal]
    // Deserialize array length for message field [nullspace_goal]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.nullspace_goal = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.nullspace_goal[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [nullspace_gain]
    data.nullspace_gain = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tip_names]
    data.tip_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pose_stamp.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    object.seed_angles.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    length += object.use_nullspace_goal.length;
    object.nullspace_goal.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    length += 8 * object.nullspace_gain.length;
    object.tip_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intera_core_msgs/SolvePositionIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b09dd99695bb18639bfea7c92d0a89ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Endpoint Pose(s) to request Inverse-Kinematics joint solutions for.
    geometry_msgs/PoseStamped[] pose_stamp
    
    # (optional) Joint Angle Seed(s) for IK solver.
    # * specify a JointState seed for each pose_stamp, using name[] and position[]
    # * empty arrays or a non-default seed_mode will cause user seed to not be used
    sensor_msgs/JointState[] seed_angles
    
    # Seed Type Mode
    # * default (SEED_AUTO) mode: iterate through seed types until first valid
    #                             solution is found
    # * setting any other mode:   try only that seed type
    int8 SEED_AUTO    = 0
    int8 SEED_USER    = 1
    int8 SEED_CURRENT = 2
    int8 SEED_NS_MAP  = 3
    
    int8 seed_mode
    
    # For each IK request, tells whether it should use the nullspace goal
    bool[] use_nullspace_goal
    
    # The nullspace goal can either be the full set or subset of joint angles
    sensor_msgs/JointState[] nullspace_goal
    
    # The gain used to bias toward the nullspace goal. Must be [0.0, 1.0]
    # If empty, the default gain of 0.4 will be used
    float64[] nullspace_gain
    
    # Tip name for each pose IK
    string[] tip_names
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SolvePositionIKRequest(null);
    if (msg.pose_stamp !== undefined) {
      resolved.pose_stamp = new Array(msg.pose_stamp.length);
      for (let i = 0; i < resolved.pose_stamp.length; ++i) {
        resolved.pose_stamp[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stamp[i]);
      }
    }
    else {
      resolved.pose_stamp = []
    }

    if (msg.seed_angles !== undefined) {
      resolved.seed_angles = new Array(msg.seed_angles.length);
      for (let i = 0; i < resolved.seed_angles.length; ++i) {
        resolved.seed_angles[i] = sensor_msgs.msg.JointState.Resolve(msg.seed_angles[i]);
      }
    }
    else {
      resolved.seed_angles = []
    }

    if (msg.seed_mode !== undefined) {
      resolved.seed_mode = msg.seed_mode;
    }
    else {
      resolved.seed_mode = 0
    }

    if (msg.use_nullspace_goal !== undefined) {
      resolved.use_nullspace_goal = msg.use_nullspace_goal;
    }
    else {
      resolved.use_nullspace_goal = []
    }

    if (msg.nullspace_goal !== undefined) {
      resolved.nullspace_goal = new Array(msg.nullspace_goal.length);
      for (let i = 0; i < resolved.nullspace_goal.length; ++i) {
        resolved.nullspace_goal[i] = sensor_msgs.msg.JointState.Resolve(msg.nullspace_goal[i]);
      }
    }
    else {
      resolved.nullspace_goal = []
    }

    if (msg.nullspace_gain !== undefined) {
      resolved.nullspace_gain = msg.nullspace_gain;
    }
    else {
      resolved.nullspace_gain = []
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

// Constants for message
SolvePositionIKRequest.Constants = {
  SEED_AUTO: 0,
  SEED_USER: 1,
  SEED_CURRENT: 2,
  SEED_NS_MAP: 3,
}

class SolvePositionIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.result_type = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('result_type')) {
        this.result_type = initObj.result_type
      }
      else {
        this.result_type = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolvePositionIKResponse
    // Serialize message field [joints]
    // Serialize the length for message field [joints]
    bufferOffset = _serializer.uint32(obj.joints.length, buffer, bufferOffset);
    obj.joints.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [result_type]
    bufferOffset = _arraySerializer.int8(obj.result_type, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolvePositionIKResponse
    let len;
    let data = new SolvePositionIKResponse(null);
    // Deserialize message field [joints]
    // Deserialize array length for message field [joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [result_type]
    data.result_type = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joints.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    length += object.result_type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intera_core_msgs/SolvePositionIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd47b4ca70898ba1b2f99ffdf9b81d911';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # joints[i]      == joint angle solution for each pose_state[i]
    sensor_msgs/JointState[] joints
    
    # result_type[i] == seed type used to find valid solution, joints[i];
    # otherwise,     == IK_FAILED (no valid IK solution found)
    # or             == IK_IN_COLLISION (if IK solution is in self collision)
    # or             == IK_ENDPOINT_DOES_NOT_EXIST
    int8 IK_FAILED = -1
    int8 IK_IN_COLLISION = -2
    int8 IK_ENDPOINT_DOES_NOT_EXIST = -3
    int8[] result_type
    
    
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
    const resolved = new SolvePositionIKResponse(null);
    if (msg.joints !== undefined) {
      resolved.joints = new Array(msg.joints.length);
      for (let i = 0; i < resolved.joints.length; ++i) {
        resolved.joints[i] = sensor_msgs.msg.JointState.Resolve(msg.joints[i]);
      }
    }
    else {
      resolved.joints = []
    }

    if (msg.result_type !== undefined) {
      resolved.result_type = msg.result_type;
    }
    else {
      resolved.result_type = []
    }

    return resolved;
    }
};

// Constants for message
SolvePositionIKResponse.Constants = {
  IK_FAILED: -1,
  IK_IN_COLLISION: -2,
  IK_ENDPOINT_DOES_NOT_EXIST: -3,
}

module.exports = {
  Request: SolvePositionIKRequest,
  Response: SolvePositionIKResponse,
  md5sum() { return '7ae4607244c30c6c631f3693cd280e45'; },
  datatype() { return 'intera_core_msgs/SolvePositionIK'; }
};
