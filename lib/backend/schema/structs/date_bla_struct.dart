// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateBlaStruct extends BaseStruct {
  DateBlaStruct({
    DateTime? date,
  }) : _date = date;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  static DateBlaStruct fromMap(Map<String, dynamic> data) => DateBlaStruct(
        date: data['date'] as DateTime?,
      );

  static DateBlaStruct? maybeFromMap(dynamic data) =>
      data is Map ? DateBlaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DateBlaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DateBlaStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DateBlaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DateBlaStruct && date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([date]);
}

DateBlaStruct createDateBlaStruct({
  DateTime? date,
}) =>
    DateBlaStruct(
      date: date,
    );
