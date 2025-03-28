// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:month_picker_dialog/month_picker_dialog.dart' as MonthPicker;

Future<DateTime?> monthPicker(
  BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
) async {
  try {
    return await MonthPicker.showMonthPicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(DateTime.now().year - 5, 5),
      lastDate: lastDate ?? DateTime(DateTime.now().year + 8, 9),
    );
  } catch (e) {
    print('Error in month picker: $e');
    return null;
  }
}
