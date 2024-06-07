// Auto-generated. Do not edit!

// (in-package intera_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class InteractionControlState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.interaction_control_active = null;
      this.K_impedance = null;
      this.D_impedance = null;
      this.endpoint_force_command = null;
      this.endpoint_name = null;
      this.in_endpoint_frame = null;
      this.disable_damping_in_force_control = null;
      this.disable_reference_resetting = null;
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
      if (initObj.hasOwnProperty('D_impedance')) {
        this.D_impedance = initObj.D_impedance
      }
      else {
        this.D_impedance = [];
      }
      if (initObj.hasOwnProperty('endpoint_force_command')) {
        this.endpoint_force_command = initObj.endpoint_force_command
      }
      else {
        this.endpoint_force_command = [];
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
      if (initObj.hasOwnProperty('rotations_for_constrained_zeroG')) {
        this.rotations_for_constrained_zeroG = initObj.rotations_for_constrained_zeroG
      }
      else {
        this.rotations_for_constrained_zeroG = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractionControlState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [interaction_control_active]
    bufferOffset = _serializer.bool(obj.interaction_control_active, buffer, bufferOffset);
    // Serialize message field [K_impedance]
    bufferOffset = _arraySerializer.float64(obj.K_impedance, buffer, bufferOffset, null);
    // Serialize message field [D_impedance]
    bufferOffset = _arraySerializer.float64(obj.D_impedance, buffer, bufferOffset, null);
    // Serialize message field [endpoint_force_command]
    bufferOffset = _arraySerializer.float64(obj.endpoint_force_command, buffer, bufferOffset, null);
    // Serialize message field [endpoint_name]
    bufferOffset = _serializer.string(obj.endpoint_name, buffer, bufferOffset);
    // Serialize message field [in_endpoint_frame]
    bufferOffset = _serializer.bool(obj.in_endpoint_frame, buffer, bufferOffset);
    // Serialize message field [disable_damping_in_force_control]
    bufferOffset = _serializer.bool(obj.disable_damping_in_force_control, buffer, bufferOffset);
    // Serialize message field [disable_reference_resetting]
    bufferOffset = _serializer.bool(obj.disable_reference_resetting, buffer, bufferOffset);
    // Serialize message field [rotations_for_constrained_zeroG]
    bufferOffset = _serializer.bool(obj.rotations_for_constrained_zeroG, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractionControlState
    let len;
    let data = new InteractionControlState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [interaction_control_active]
    data.interaction_control_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [K_impedance]
    data.K_impedance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [D_impedance]
    data.D_impedance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [endpoint_force_command]
    data.endpoint_force_command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [endpoint_name]
    data.endpoint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [in_endpoint_frame]
    data.in_endpoint_frame = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_damping_in_force_control]
    data.disable_damping_in_force_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_reference_resetting]
    data.disable_reference_resetting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rotations_for_constrained_zeroG]
    data.rotations_for_constrained_zeroG = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.K_impedance.length;
    length += 8 * object.D_impedance.length;
    length += 8 * object.endpoint_force_command.length;
    length += _getByteLength(object.endpoint_name);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/InteractionControlState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3fbd4a2356cb48da2df759db65614d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## InteractionControlState.msg ##
    # Internal state of the interaction controller including
    # whether the controller is active, current impedence parameters,
    # and the commanded endpoint forces by the interaction controller
    
    Header header
    
    bool      interaction_control_active
    
    ## Impedance Control Parameters
    float64[] K_impedance
    float64[] D_impedance
    
    ## Force Control Parameters
    # Vector of forces (wrench) (N and Nm) commanded by the interaction controller
    # for the endpoint.
    float64[] endpoint_force_command
    
    string endpoint_name
    bool in_endpoint_frame
    bool disable_damping_in_force_control
    bool disable_reference_resetting
    
    ## Parameters for Constrained Zero-G Behaviors
    # Please refer to InteractionControlCommand.msg for more details
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InteractionControlState(null);
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

    if (msg.D_impedance !== undefined) {
      resolved.D_impedance = msg.D_impedance;
    }
    else {
      resolved.D_impedance = []
    }

    if (msg.endpoint_force_command !== undefined) {
      resolved.endpoint_force_command = msg.endpoint_force_command;
    }
    else {
      resolved.endpoint_force_command = []
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

    if (msg.rotations_for_constrained_zeroG !== undefined) {
      resolved.rotations_for_constrained_zeroG = msg.rotations_for_constrained_zeroG;
    }
    else {
      resolved.rotations_for_constrained_zeroG = false
    }

    return resolved;
    }
};

module.exports = InteractionControlState;
