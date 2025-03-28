// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSearchStruct extends BaseStruct {
  UserSearchStruct({
    String? empName,
    String? attendanceStatus,
    int? empID,
  })  : _empName = empName,
        _attendanceStatus = attendanceStatus,
        _empID = empID;

  // "empName" field.
  String? _empName;
  String get empName => _empName ?? '';
  set empName(String? val) => _empName = val;

  bool hasEmpName() => _empName != null;

  // "attendanceStatus" field.
  String? _attendanceStatus;
  String get attendanceStatus => _attendanceStatus ?? '';
  set attendanceStatus(String? val) => _attendanceStatus = val;

  bool hasAttendanceStatus() => _attendanceStatus != null;

  // "empID" field.
  int? _empID;
  int get empID => _empID ?? 0;
  set empID(int? val) => _empID = val;

  void incrementEmpID(int amount) => empID = empID + amount;

  bool hasEmpID() => _empID != null;

  static UserSearchStruct fromMap(Map<String, dynamic> data) =>
      UserSearchStruct(
        empName: data['empName'] as String?,
        attendanceStatus: data['attendanceStatus'] as String?,
        empID: castToType<int>(data['empID']),
      );

  static UserSearchStruct? maybeFromMap(dynamic data) => data is Map
      ? UserSearchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'empName': _empName,
        'attendanceStatus': _attendanceStatus,
        'empID': _empID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'empName': serializeParam(
          _empName,
          ParamType.String,
        ),
        'attendanceStatus': serializeParam(
          _attendanceStatus,
          ParamType.String,
        ),
        'empID': serializeParam(
          _empID,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserSearchStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserSearchStruct(
        empName: deserializeParam(
          data['empName'],
          ParamType.String,
          false,
        ),
        attendanceStatus: deserializeParam(
          data['attendanceStatus'],
          ParamType.String,
          false,
        ),
        empID: deserializeParam(
          data['empID'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserSearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSearchStruct &&
        empName == other.empName &&
        attendanceStatus == other.attendanceStatus &&
        empID == other.empID;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([empName, attendanceStatus, empID]);
}

UserSearchStruct createUserSearchStruct({
  String? empName,
  String? attendanceStatus,
  int? empID,
}) =>
    UserSearchStruct(
      empName: empName,
      attendanceStatus: attendanceStatus,
      empID: empID,
    );
