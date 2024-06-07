// Auto-generated. Do not edit!

// (in-package intera_motion_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackingOptions = require('./TrackingOptions.js');
let intera_core_msgs = _finder('intera_core_msgs');

//-----------------------------------------------------------

class TrajectoryOptions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interpolation_type = null;
      this.interaction_control = null;
      this.interaction_params = null;
      this.nso_start_offset_allowed = null;
      this.nso_check_end_offset = null;
      this.tracking_options = null;
      this.end_time = null;
      this.path_interpolation_step = null;
    }
    else {
      if (initObj.hasOwnProperty('interpolation_type')) {
        this.interpolation_type = initObj.interpolation_type
      }
      else {
        this.interpolation_type = '';
      }
      if (initObj.hasOwnProperty('interaction_control')) {
        this.interaction_control = initObj.interaction_control
      }
      else {
        this.interaction_control = false;
      }
      if (initObj.hasOwnProperty('interaction_params')) {
        this.interaction_params = initObj.interaction_params
      }
      else {
        this.interaction_params = new intera_core_msgs.msg.InteractionControlCommand();
      }
      if (initObj.hasOwnProperty('nso_start_offset_allowed')) {
        this.nso_start_offset_allowed = initObj.nso_start_offset_allowed
      }
      else {
        this.nso_start_offset_allowed = false;
      }
      if (initObj.hasOwnProperty('nso_check_end_offset')) {
        this.nso_check_end_offset = initObj.nso_check_end_offset
      }
      else {
        this.nso_check_end_offset = false;
      }
      if (initObj.hasOwnProperty('tracking_options')) {
        this.tracking_options = initObj.tracking_options
      }
      else {
        this.tracking_options = new TrackingOptions();
      }
      if (initObj.hasOwnProperty('end_time')) {
        this.end_time = initObj.end_time
      }
      else {
        this.end_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('path_interpolation_step')) {
        this.path_interpolation_step = initObj.path_interpolation_step
      }
      else {
        this.path_interpolation_step = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryOptions
    // Serialize message field [interpolation_type]
    bufferOffset = _serializer.string(obj.interpolation_type, buffer, bufferOffset);
    // Serialize message field [interaction_control]
    bufferOffset = _serializer.bool(obj.interaction_control, buffer, bufferOffset);
    // Serialize message field [interaction_params]
    bufferOffset = intera_core_msgs.msg.InteractionControlCommand.serialize(obj.interaction_params, buffer, bufferOffset);
    // Serialize message field [nso_start_offset_allowed]
    bufferOffset = _serializer.bool(obj.nso_start_offset_allowed, buffer, bufferOffset);
    // Serialize message field [nso_check_end_offset]
    bufferOffset = _serializer.bool(obj.nso_check_end_offset, buffer, bufferOffset);
    // Serialize message field [tracking_options]
    bufferOffset = TrackingOptions.serialize(obj.tracking_options, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = _serializer.time(obj.end_time, buffer, bufferOffset);
    // Serialize message field [path_interpolation_step]
    bufferOffset = _serializer.float64(obj.path_interpolation_step, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryOptions
    let len;
    let data = new TrajectoryOptions(null);
    // Deserialize message field [interpolation_type]
    data.interpolation_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [interaction_control]
    data.interaction_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [interaction_params]
    data.interaction_params = intera_core_msgs.msg.InteractionControlCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [nso_start_offset_allowed]
    data.nso_start_offset_allowed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [nso_check_end_offset]
    data.nso_check_end_offset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tracking_options]
    data.tracking_options = TrackingOptions.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [path_interpolation_step]
    data.path_interpolation_step = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.interpolation_type);
    length += intera_core_msgs.msg.InteractionControlCommand.getMessageSize(object.interaction_params);
    length += TrackingOptions.getMessageSize(object.tracking_options);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_motion_msgs/TrajectoryOptions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6c6806743ac9695334265046d57235e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Trajectory interpolation type
    string CARTESIAN=CARTESIAN
    string JOINT=JOINT
    string interpolation_type
    
    # True if the trajectory uses interaction control, false for position control.
    bool interaction_control
    
    # Interaction control parameters
    intera_core_msgs/InteractionControlCommand interaction_params
    
    # Allow small joint adjustments at the beginning of Cartesian trajectories.
    # Set to false for 'small' motions.
    bool nso_start_offset_allowed
    
    # Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.
    bool nso_check_end_offset
    
    # Options for the tracking controller:
    TrackingOptions tracking_options
    
    # Desired trajectory end time, ROS timestamp
    time end_time
    
    # The rate in seconds that the path is interpolated and returned back to the user
    # No interpolation will happen if set to zero
    float64 path_interpolation_step
    
    ================================================================================
    MSG: intera_core_msgs/InteractionControlCommand
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
    
    ================================================================================
    MSG: intera_motion_msgs/TrackingOptions
    # Minimum trajectory tracking time rate:  (default = less than one)
    bool     use_min_time_rate
    float64  min_time_rate
    
    # Maximum trajectory tracking time rate:  (1.0 = real-time = default)
    bool     use_max_time_rate
    float64  max_time_rate
    
    # Angular error tolerance at final point on trajectory (rad)
    float64[] goal_joint_tolerance
    
    # Time for the controller to settle within joint tolerances at the goal (sec)
    bool     use_settling_time_at_goal
    float64  settling_time_at_goal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryOptions(null);
    if (msg.interpolation_type !== undefined) {
      resolved.interpolation_type = msg.interpolation_type;
    }
    else {
      resolved.interpolation_type = ''
    }

    if (msg.interaction_control !== undefined) {
      resolved.interaction_control = msg.interaction_control;
    }
    else {
      resolved.interaction_control = false
    }

    if (msg.interaction_params !== undefined) {
      resolved.interaction_params = intera_core_msgs.msg.InteractionControlCommand.Resolve(msg.interaction_params)
    }
    else {
      resolved.interaction_params = new intera_core_msgs.msg.InteractionControlCommand()
    }

    if (msg.nso_start_offset_allowed !== undefined) {
      resolved.nso_start_offset_allowed = msg.nso_start_offset_allowed;
    }
    else {
      resolved.nso_start_offset_allowed = false
    }

    if (msg.nso_check_end_offset !== undefined) {
      resolved.nso_check_end_offset = msg.nso_check_end_offset;
    }
    else {
      resolved.nso_check_end_offset = false
    }

    if (msg.tracking_options !== undefined) {
      resolved.tracking_options = TrackingOptions.Resolve(msg.tracking_options)
    }
    else {
      resolved.tracking_options = new TrackingOptions()
    }

    if (msg.end_time !== undefined) {
      resolved.end_time = msg.end_time;
    }
    else {
      resolved.end_time = {secs: 0, nsecs: 0}
    }

    if (msg.path_interpolation_step !== undefined) {
      resolved.path_interpolation_step = msg.path_interpolation_step;
    }
    else {
      resolved.path_interpolation_step = 0.0
    }

    return resolved;
    }
};

// Constants for message
TrajectoryOptions.Constants = {
  CARTESIAN: 'CARTESIAN',
  JOINT: 'JOINT',
}

module.exports = TrajectoryOptions;
