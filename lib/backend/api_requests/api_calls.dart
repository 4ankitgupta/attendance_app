import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start test Group Code

class TestGroup {
  static String getBaseUrl() =>
      'https://d697-2405-201-300b-8910-39a4-6e0e-2588-922.ngrok-free.app/api';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static LogoutCall logoutCall = LogoutCall();
  static CitiesCall citiesCall = CitiesCall();
  static SupervisorsWardCall supervisorsWardCall = SupervisorsWardCall();
  static EmployeeAttendanceCall employeeAttendanceCall =
      EmployeeAttendanceCall();
  static PunchInOutCall punchInOutCall = PunchInOutCall();
  static AttendanceRecordCall attendanceRecordCall = AttendanceRecordCall();
  static EmployeeDetailCall employeeDetailCall = EmployeeDetailCall();
  static FetchImgCall fetchImgCall = FetchImgCall();
  static FaceAttendanceCall faceAttendanceCall = FaceAttendanceCall();
  static StoreFaceCall storeFaceCall = StoreFaceCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.user_id''',
      ));
  String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.role''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic userJSON(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class LogoutCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${baseUrl}/auth/logout',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CitiesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cities',
      apiUrl: '${baseUrl}/cities',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SupervisorsWardCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'supervisorsWard',
      apiUrl: '${baseUrl}/app/supervisor/wards',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? empName(dynamic response) => (getJsonField(
        response,
        r'''$[:].employees[:].emp_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? empId(dynamic response) => (getJsonField(
        response,
        r'''$[:].employees[:].emp_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? attendanceStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].employees[:].attendance_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? employee(dynamic response) => getJsonField(
        response,
        r'''$[:].employees[:]''',
        true,
      ) as List?;
}

class EmployeeAttendanceCall {
  Future<ApiCallResponse> call({
    int? empId,
    int? wardId,
    String? date = '',
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "emp_id": ${empId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'employeeAttendance',
      apiUrl: '${baseUrl}/app/attendance/employee',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? attendanceID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.attendance_id''',
      ));
  int? empID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.emp_id''',
      ));
  String? empCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emp_code''',
      ));
  String? empName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.employee_name''',
      ));
  String? designation(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.designation_name''',
      ));
  String? wardName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ward_name''',
      ));
  int? wardID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ward_id''',
      ));
  String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.date''',
      ));
}

class PunchInOutCall {
  Future<ApiCallResponse> call({
    int? attendanceId,
    String? punchType = '',
    String? latitude = '',
    String? longitude = '',
    String? address = '',
    FFUploadedFile? image,
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'punchInOut',
      apiUrl: '${baseUrl}/app/attendance/employee',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'attendance_id': attendanceId,
        'punch_type': punchType,
        'latitude': latitude,
        'longitude': longitude,
        'address': address,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AttendanceRecordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'attendanceRecord',
      apiUrl: '${baseUrl}/attendance',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? empName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EmployeeDetailCall {
  Future<ApiCallResponse> call({
    int? empId,
    String? month = '',
    String? year = '',
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'employeeDetail',
      apiUrl: '${baseUrl}/app/attendance/employee/detail',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'empId': empId,
        'month': month,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? empId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.empId''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? ward(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ward''',
      ));
  String? zone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.zone''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  String? totalAttendance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.totalAttendance''',
      ));
}

class FetchImgCall {
  Future<ApiCallResponse> call({
    int? attendanceId,
    String? punchType = '',
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'fetchImg',
      apiUrl: '${baseUrl}/app/attendance/employee/image',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'attendance_id': attendanceId,
        'punch_type': punchType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FaceAttendanceCall {
  Future<ApiCallResponse> call({
    String? punchType = '',
    String? latitude = '',
    String? longitude = '',
    String? address = '',
    FFUploadedFile? image,
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'faceAttendance',
      apiUrl: '${baseUrl}/app/attendance/employee/face-attendance',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'punch_type': punchType,
        'latitude': latitude,
        'longitude': longitude,
        'address': address,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StoreFaceCall {
  Future<ApiCallResponse> call({
    int? userId,
    FFUploadedFile? image,
  }) async {
    final baseUrl = TestGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'storeFace',
      apiUrl: '${baseUrl}/app/attendance/employee/faceRoutes/store-face',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'userId': userId,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End test Group Code

class GeoLocationCall {
  static Future<ApiCallResponse> call({
    String? lat = '22.766412',
    String? lon = '75.907006',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GeoLocation',
      apiUrl: 'https://geocode.maps.co/reverse',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'api_key': "67baac23a0aa9461683252iyjbf570e",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.display_name''',
      ));
  static dynamic addressJSON(dynamic response) => getJsonField(
        response,
        r'''$.address''',
      );
}

class BlaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'bla',
      apiUrl:
          'https://d085-2405-201-300b-8910-e888-611-64c0-c55a.ngrok-free.app/api/cities',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
