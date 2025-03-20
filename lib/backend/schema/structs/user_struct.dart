// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? displayName,
    String? email,
    String? role,
    String? empCode,
    int? phone,
  })  : _displayName = displayName,
        _email = email,
        _role = role,
        _empCode = empCode,
        _phone = phone;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "emp_code" field.
  String? _empCode;
  String get empCode => _empCode ?? '';
  set empCode(String? val) => _empCode = val;

  bool hasEmpCode() => _empCode != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  set phone(int? val) => _phone = val;

  void incrementPhone(int amount) => phone = phone + amount;

  bool hasPhone() => _phone != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        displayName: data['display_name'] as String?,
        email: data['email'] as String?,
        role: data['role'] as String?,
        empCode: data['emp_code'] as String?,
        phone: castToType<int>(data['phone']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'display_name': _displayName,
        'email': _email,
        'role': _role,
        'emp_code': _empCode,
        'phone': _phone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'emp_code': serializeParam(
          _empCode,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        empCode: deserializeParam(
          data['emp_code'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        displayName == other.displayName &&
        email == other.email &&
        role == other.role &&
        empCode == other.empCode &&
        phone == other.phone;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([displayName, email, role, empCode, phone]);
}

UserStruct createUserStruct({
  String? displayName,
  String? email,
  String? role,
  String? empCode,
  int? phone,
}) =>
    UserStruct(
      displayName: displayName,
      email: email,
      role: role,
      empCode: empCode,
      phone: phone,
    );
