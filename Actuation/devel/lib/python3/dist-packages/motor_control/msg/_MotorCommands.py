# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from motor_control/MotorCommands.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import motor_control.msg

class MotorCommands(genpy.Message):
  _md5sum = "b2edb3d2f4d8f2a09fe7cbec56216411"
  _type = "motor_control/MotorCommands"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """MotorCommand[] motorcommands

================================================================================
MSG: motor_control/MotorCommand
char channel
float32 angle
"""
  __slots__ = ['motorcommands']
  _slot_types = ['motor_control/MotorCommand[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       motorcommands

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotorCommands, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.motorcommands is None:
        self.motorcommands = []
    else:
      self.motorcommands = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.motorcommands)
      buff.write(_struct_I.pack(length))
      for val1 in self.motorcommands:
        _x = val1
        buff.write(_get_struct_Bf().pack(_x.channel, _x.angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.motorcommands is None:
        self.motorcommands = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.motorcommands = []
      for i in range(0, length):
        val1 = motor_control.msg.MotorCommand()
        _x = val1
        start = end
        end += 5
        (_x.channel, _x.angle,) = _get_struct_Bf().unpack(str[start:end])
        self.motorcommands.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.motorcommands)
      buff.write(_struct_I.pack(length))
      for val1 in self.motorcommands:
        _x = val1
        buff.write(_get_struct_Bf().pack(_x.channel, _x.angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.motorcommands is None:
        self.motorcommands = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.motorcommands = []
      for i in range(0, length):
        val1 = motor_control.msg.MotorCommand()
        _x = val1
        start = end
        end += 5
        (_x.channel, _x.angle,) = _get_struct_Bf().unpack(str[start:end])
        self.motorcommands.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Bf = None
def _get_struct_Bf():
    global _struct_Bf
    if _struct_Bf is None:
        _struct_Bf = struct.Struct("<Bf")
    return _struct_Bf
