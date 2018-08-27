# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from wam_control/OrtnSplitMoveRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OrtnSplitMoveRequest(genpy.Message):
  _md5sum = "d493f6e469f2b52d5ef0e3d041ef18b7"
  _type = "wam_control/OrtnSplitMoveRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32[4] orientation
float32[3] kp_gain
float32[3] kd_gain
"""
  __slots__ = ['orientation','kp_gain','kd_gain']
  _slot_types = ['float32[4]','float32[3]','float32[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       orientation,kp_gain,kd_gain

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OrtnSplitMoveRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.orientation is None:
        self.orientation = [0.,0.,0.,0.]
      if self.kp_gain is None:
        self.kp_gain = [0.,0.,0.]
      if self.kd_gain is None:
        self.kd_gain = [0.,0.,0.]
    else:
      self.orientation = [0.,0.,0.,0.]
      self.kp_gain = [0.,0.,0.]
      self.kd_gain = [0.,0.,0.]

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
      buff.write(_struct_4f.pack(*self.orientation))
      buff.write(_struct_3f.pack(*self.kp_gain))
      buff.write(_struct_3f.pack(*self.kd_gain))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 16
      self.orientation = _struct_4f.unpack(str[start:end])
      start = end
      end += 12
      self.kp_gain = _struct_3f.unpack(str[start:end])
      start = end
      end += 12
      self.kd_gain = _struct_3f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.orientation.tostring())
      buff.write(self.kp_gain.tostring())
      buff.write(self.kd_gain.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 16
      self.orientation = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      start = end
      end += 12
      self.kp_gain = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.kd_gain = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4f = struct.Struct("<4f")
_struct_3f = struct.Struct("<3f")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from wam_control/OrtnSplitMoveResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OrtnSplitMoveResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "wam_control/OrtnSplitMoveResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OrtnSplitMoveResponse, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
class OrtnSplitMove(object):
  _type          = 'wam_control/OrtnSplitMove'
  _md5sum = 'd493f6e469f2b52d5ef0e3d041ef18b7'
  _request_class  = OrtnSplitMoveRequest
  _response_class = OrtnSplitMoveResponse
