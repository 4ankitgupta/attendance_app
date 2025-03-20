import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

List<String> retriveLatLng(String currentLocation) {
  RegExp regex = RegExp(r"lat:\s*([-+]?\d*\.?\d+),\s*lng:\s*([-+]?\d*\.?\d+)");
  Match? match = regex.firstMatch(currentLocation);

  if (match != null && match.groupCount == 2) {
    String latitude = match.group(1)!;
    String longitude = match.group(2)!;
    return [latitude, longitude];
  }

  // Return an empty list if the format is incorrect
  return [];
}

int elementCount(List<String>? list) {
  if (list == null) {
    return 0;
  }

  List<String> elements = list.join(',').split(',');
  return elements.length;
}

Color attendanceStaus(String status) {
  if (status == "Not Marked") {
    return Color(0xFFF5F5F5);
  } else if (status == "Punched In") {
    return Color(0xFFE8F5E9);
  } else {
    return Color(0xFFD8F3DD);
  }
}

Color attendanceStatusText(String status) {
  if (status == "Not Marked") {
    return Color(0xFFF57636c);
  } else if (status == "Punched In") {
    return Color(0xFF2e7d32);
  } else {
    return Color(0xFFD4b39ef);
  }
}
