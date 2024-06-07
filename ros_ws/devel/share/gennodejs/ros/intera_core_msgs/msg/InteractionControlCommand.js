// Auto-generated. Do not edit!

// (in-package intera_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class InteractionControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.interaction_control_active = null;
      this.K_impedance = null;
      this.max_impedance = null;
      this.D_impedance = null;
      this.K_nullspace = null;
      this.force_command = null;
      this.interaction_frame = null;
      this.endpoint_name = null;
      this.in_endpoint_frame = null;
      this.disable_damping_in_force_control = null;
      this.disable_reference_resetting = null;
      this.interaction_control_mode = null;
      this.rotations_for_constrained_zeroG = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('interaction_control_active')) {
        this.interaction_control_active = initObj.interaction_control_active
      }
      else {
        this.interaction_control_active = false;
      }
      if (initObj.hasOwnProperty('K_impedance')) {
        this.K_impedance = initObj.K_impedance
      }
      else {
        this.K_impedance = [];
      }
      if (initObj.hasOwnProperty('max_impedance')) {
        this.max_impedance = initObj.max_impedance
      }
      else {
        this.max_impedance = [];
      }
      if (initObj.hasOwnProperty('D_impedance')) {
        this.D_impedance = initObj.D_impedance
      }
      else {
        this.D_impedance = [];
      }
      if (initObj.hasOwnProperty('K_nullspace')) {
        this.K_nullspace = initObj.K_nullspace
      }
      else {
        this.K_nullspace = [];
      }
      if (initObj.hasOwnProperty('force_command')) {
        this.force_command = initObj.force_command
      }
      else {
        this.force_command = [];
      }
      if (initObj.hasOwnProperty('interaction_frame')) {
        this.interaction_frame = initObj.interaction_frame
      }
      else {
        this.interaction_frame = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('endpoint_name')) {
        this.endpoint_name = initObj.endpoint_name
      }
      else {
        this.endpoint_name = '';
      }
      if (initObj.hasOwnProperty('in_endpoint_frame')) {
        this.in_endpoint_frame = initObj.in_endpoint_frame
      }
      else {
        this.in_endpoint_frame = false;
      }
      if (initObj.hasOwnProperty('disable_damping_in_force_control')) {
        this.disable_damping_in_force_control = initObj.disable_damping_in_force_control
      }
      else {
        this.disable_damping_in_force_control = false;
      }
      if (initObj.hasOwnProperty('disable_reference_resetting')) {
        this.disable_reference_resetting = initObj.disable_reference_resetting
      }
      else {
        this.disable_reference_resetting = false;
      }
      if (initObj.hasOwnProperty('interaction_control_mode')) {
        this.interaction_control_mode = initObj.interaction_control_mode
      }
      else {
        this.interaction_control_mode = [];
      }
      if (initObj.hasOwnProperty('rotations_for_constrained_zeroG')) {
        this.rotations_for_constrained_zeroG = initObj.rotations_for_constrained_zeroG
      }
      else {
        this.rotations_for_constrained_zeroG = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractionControlCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [interaction_control_active]
    bufferOffset = _serializer.bool(obj.interaction_control_active, buffer, bufferOffset);
    // Serialize message field [K_impedance]
    bufferOffset = _arraySerializer.float64(obj.K_impedance, buffer, bufferOffset, null);
    // Serialize message field [max_impedance]
    bufferOffset = _arraySerializer.bool(obj.max_impedance, buffer, bufferOffset, null);
    // Serialize message field [D_impedance]
    bufferOffset = _arraySerializer.float64(obj.D_impedance, buffer, bufferOffset, null);
    // Serialize message field [K_nullspace]
    bufferOffset = _arraySerializer.float64(obj.K_nullspace, buffer, bufferOffset, null);
    // Serialize message field [force_command]
    bufferOffset = _arraySerializer.float64(obj.force_command, buffer, bufferOffset, null);
    // Serialize message field [interaction_frame]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.interaction_frame, buffer, bufferOffset);
    // Serialize message field [endpoint_name]
    bufferOffset = _serializer.string(obj.endpoint_name, buffer, bufferOffset);
    // Serialize message field [in_endpoint_frame]
    bufferOffset = _serializer.bool(obj.in_endpoint_frame, buffer, bufferOffset);
    // Serialize message field [disable_damping_in_force_control]
    bufferOffset = _serializer.bool(obj.disable_damping_in_force_control, buffer, bufferOffset);
    // Serialize message field [disable_reference_resetting]
    bufferOffset = _serializer.bool(obj.disable_reference_resetting, buffer, bufferOffset);
    // Serialize message field [interaction_control_mode]
    bufferOffset = _arraySerializer.uint8(obj.interaction_control_mode, buffer, bufferOffset, null);
    // Serialize message field [rotations_for_constrained_zeroG]
    bufferOffset = _serializer.bool(obj.rotations_for_constrained_zeroG, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractionControlCommand
    let len;
    let data = new InteractionControlCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [interaction_control_active]
    data.interaction_control_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [K_impedance]
    data.K_impedance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_impedance]
    data.max_impedance = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [D_impedance]
    data.D_impedance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [K_nullspace]
    data.K_nullspace = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [force_command]
    data.force_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [interaction_frame]
    data.interaction_frame = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [endpoint_name]
    data.endpoint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [in_endpoint_frame]
    data.in_endpoint_frame = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_damping_in_force_control]
    data.disable_damping_in_force_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_reference_resetting]
    data.disable_reference_resetting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [interaction_control_mode]
    data.interaction_control_mode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [rotations_for_constrained_zeroG]
    data.rotations_for_constrained_zeroG = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.K_impedance.length;
    length += object.max_impedance.length;
    length += 8 * object.D_impedance.length;
    length += 8 * object.K_nullspace.length;
    length += 8 * object.force_command.length;
    length += _getByteLength(object.endpoint_name);
    length += object.interaction_control_mode.length;
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/InteractionControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '762b5d197d5d786f83741af7fe6261a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message sets the interaction (impedance/force) control on or off
    # It also contains desired cartesian stiffness K, damping D, and force values
    
    Header header
    bool      interaction_control_active
    
    ## Cartesian Impedance Control Parameters
    # Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values
    float64[] K_impedance
    # Force certain directions to have maximum possible impedance for a given pose
    bool[] max_impedance
    # Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values
    float64[] D_impedance
    # Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)
    float64[] K_nullspace
    
    ## Parameters for force control or impedance control with force limit
    # If in force mode, this is the vector of desired forces/torques
    # to be regulated in (N) and (Nm)
    # If in impedance with force limit mode, this vector specifies the
    # magnitude of forces/torques (N and Nm) that the command will not exceed.
    float64[] force_command
    
    ## Desired frame
    geometry_msgs/Pose interaction_frame
    string endpoint_name
    # True if impedance and force commands are defined in endpoint frame
    bool in_endpoint_frame
    
    # Set to true to disable damping during force control. Damping is used
    # to slow down robot motion during force control in free space.
    # Option included for SDK users to disable damping in force control
    bool disable_damping_in_force_control
    
    # Set to true to disable reference resetting. Reference resetting is
    # used when interaction parameters change, in order to avoid jumps/jerks.
    # Option included for SDK users to disable reference resetting if the
    # intention is to change interaction parameters.
    bool disable_reference_resetting
    
    ## Mode Selection Parameters
    # The possible interaction control modes are:
    # Impedance mode: implements desired endpoint stiffness and damping.
    uint8 IMPEDANCE_MODE=1
    # Force mode: applies force/torque in the specified dimensions.
    uint8 FORCE_MODE=2
    # Impedance with force limit: impedance control while ensuring the commanded
    # forces/torques do not exceed force_command.
    uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3
    # Force with motion bounds: force control while ensuring the current
    # pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)
    uint8 FORCE_WITH_MOTION_LIMIT_MODE=4
    
    # Specifies the interaction control mode for each Cartesian dimension (6)
    uint8[] interaction_control_mode
    
    # All 6 values in force and impedance parameter vectors have to be filled,
    # If a control mode is not used in a Cartesian dimension,
    # the corresponding parameters will be ignored.
    
    ## Parameters for Constrained Zero-G Behaviors
    # Allow for arbitrary rotational displacements from the current orientation
    # for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'
    # will disable the rotational stiffness field which limits rotational
    # displacements to +/- 82.5 degree.
    # NOTE: it will be only enabled for a stationary reference orientation
    bool rotations_for_constrained_zeroG
    
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
    const resolved = new InteractionControlCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.interaction_control_active !== undefined) {
      resolved.interaction_control_active = msg.interaction_control_active;
    }
    else {
      resolved.interaction_control_active = false
    }

    if (msg.K_impedance !== undefined) {
      resolved.K_impedance = msg.K_impedance;
    }
    else {
      resolved.K_impedance = []
    }

    if (msg.max_impedance !== undefined) {
      resolved.max_impedance = msg.max_impedance;
    }
    else {
      resolved.max_impedance = []
    }

    if (msg.D_impedance !== undefined) {
      resolved.D_impedance = msg.D_impedance;
    }
    else {
      resolved.D_impedance = []
    }

    if (msg.K_nullspace !== undefined) {
      resolved.K_nullspace = msg.K_nullspace;
    }
    else {
      resolved.K_nullspace = []
    }

    if (msg.force_command !== undefined) {
      resolved.force_command = msg.force_command;
    }
    else {
      resolved.force_command = []
    }

    if (msg.interaction_frame !== undefined) {
      resolved.interaction_frame = geometry_msgs.msg.Pose.Resolve(msg.interaction_frame)
    }
    else {
      resolved.interaction_frame = new geometry_msgs.msg.Pose()
    }

    if (msg.endpoint_name !== undefined) {
      resolved.endpoint_name = msg.endpoint_name;
    }
    else {
      resolved.endpoint_name = ''
    }

    if (msg.in_endpoint_frame !== undefined) {
      resolved.in_endpoint_frame = msg.in_endpoint_frame;
    }
    else {
      resolved.in_endpoint_frame = false
    }

    if (msg.disable_damping_in_force_control !== undefined) {
      resolved.disable_damping_in_force_control = msg.disable_damping_in_force_control;
    }
    else {
      resolved.disable_damping_in_force_control = false
    }

    if (msg.disable_reference_resetting !== undefined) {
      resolved.disable_reference_resetting = msg.disable_reference_resetting;
    }
    else {
      resolved.disable_reference_resetting = false
    }

    if (msg.interaction_control_mode !== undefined) {
      resolved.interaction_control_mode = msg.interaction_control_mode;
    }
    else {
      resolved.interaction_control_mode = []
    }

    if (msg.rotations_for_constrained_zeroG !== undefined) {
      resolved.rotations_for_constrained_zeroG = msg.rotations_for_constrained_zeroG;
    }
    else {
      resolved.rotations_for_constrained_zeroG = false
    }

    return resolved;
    }
};

// Constants for message
InteractionControlCommand.Constants = {
  IMPEDANCE_MODE: 1,
  FORCE_MODE: 2,
  IMPEDANCE_WITH_FORCE_LIMIT_MODE: 3,
  FORCE_WITH_MOTION_LIMIT_MODE: 4,
}

module.exports = InteractionControlCommand;
