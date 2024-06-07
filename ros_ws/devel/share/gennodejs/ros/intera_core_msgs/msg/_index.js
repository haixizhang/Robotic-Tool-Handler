
"use strict";

let AnalogIOStates = require('./AnalogIOStates.js');
let AnalogIOState = require('./AnalogIOState.js');
let IOStatus = require('./IOStatus.js');
let HomingState = require('./HomingState.js');
let DigitalOutputCommand = require('./DigitalOutputCommand.js');
let RobotAssemblyState = require('./RobotAssemblyState.js');
let EndpointState = require('./EndpointState.js');
let CameraSettings = require('./CameraSettings.js');
let HeadPanCommand = require('./HeadPanCommand.js');
let IONodeStatus = require('./IONodeStatus.js');
let IONodeConfiguration = require('./IONodeConfiguration.js');
let NavigatorState = require('./NavigatorState.js');
let IODeviceStatus = require('./IODeviceStatus.js');
let SEAJointState = require('./SEAJointState.js');
let NavigatorStates = require('./NavigatorStates.js');
let InteractionControlCommand = require('./InteractionControlCommand.js');
let EndpointStates = require('./EndpointStates.js');
let AnalogOutputCommand = require('./AnalogOutputCommand.js');
let DigitalIOState = require('./DigitalIOState.js');
let DigitalIOStates = require('./DigitalIOStates.js');
let JointCommand = require('./JointCommand.js');
let EndpointNamesArray = require('./EndpointNamesArray.js');
let IOComponentConfiguration = require('./IOComponentConfiguration.js');
let IODataStatus = require('./IODataStatus.js');
let IOComponentStatus = require('./IOComponentStatus.js');
let CameraControl = require('./CameraControl.js');
let HomingCommand = require('./HomingCommand.js');
let URDFConfiguration = require('./URDFConfiguration.js');
let IOComponentCommand = require('./IOComponentCommand.js');
let JointLimits = require('./JointLimits.js');
let CollisionDetectionState = require('./CollisionDetectionState.js');
let InteractionControlState = require('./InteractionControlState.js');
let HeadState = require('./HeadState.js');
let IODeviceConfiguration = require('./IODeviceConfiguration.js');
let CollisionAvoidanceState = require('./CollisionAvoidanceState.js');
let CalibrationCommandFeedback = require('./CalibrationCommandFeedback.js');
let CalibrationCommandAction = require('./CalibrationCommandAction.js');
let CalibrationCommandGoal = require('./CalibrationCommandGoal.js');
let CalibrationCommandActionGoal = require('./CalibrationCommandActionGoal.js');
let CalibrationCommandActionFeedback = require('./CalibrationCommandActionFeedback.js');
let CalibrationCommandActionResult = require('./CalibrationCommandActionResult.js');
let CalibrationCommandResult = require('./CalibrationCommandResult.js');

module.exports = {
  AnalogIOStates: AnalogIOStates,
  AnalogIOState: AnalogIOState,
  IOStatus: IOStatus,
  HomingState: HomingState,
  DigitalOutputCommand: DigitalOutputCommand,
  RobotAssemblyState: RobotAssemblyState,
  EndpointState: EndpointState,
  CameraSettings: CameraSettings,
  HeadPanCommand: HeadPanCommand,
  IONodeStatus: IONodeStatus,
  IONodeConfiguration: IONodeConfiguration,
  NavigatorState: NavigatorState,
  IODeviceStatus: IODeviceStatus,
  SEAJointState: SEAJointState,
  NavigatorStates: NavigatorStates,
  InteractionControlCommand: InteractionControlCommand,
  EndpointStates: EndpointStates,
  AnalogOutputCommand: AnalogOutputCommand,
  DigitalIOState: DigitalIOState,
  DigitalIOStates: DigitalIOStates,
  JointCommand: JointCommand,
  EndpointNamesArray: EndpointNamesArray,
  IOComponentConfiguration: IOComponentConfiguration,
  IODataStatus: IODataStatus,
  IOComponentStatus: IOComponentStatus,
  CameraControl: CameraControl,
  HomingCommand: HomingCommand,
  URDFConfiguration: URDFConfiguration,
  IOComponentCommand: IOComponentCommand,
  JointLimits: JointLimits,
  CollisionDetectionState: CollisionDetectionState,
  InteractionControlState: InteractionControlState,
  HeadState: HeadState,
  IODeviceConfiguration: IODeviceConfiguration,
  CollisionAvoidanceState: CollisionAvoidanceState,
  CalibrationCommandFeedback: CalibrationCommandFeedback,
  CalibrationCommandAction: CalibrationCommandAction,
  CalibrationCommandGoal: CalibrationCommandGoal,
  CalibrationCommandActionGoal: CalibrationCommandActionGoal,
  CalibrationCommandActionFeedback: CalibrationCommandActionFeedback,
  CalibrationCommandActionResult: CalibrationCommandActionResult,
  CalibrationCommandResult: CalibrationCommandResult,
};
