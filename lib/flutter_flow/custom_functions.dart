import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int? calculateAge(DateTime? dob) {
// write code to calculate age from given date of birth (dob).
  if (dob == null) return null; // Check if dob is null
  final today = DateTime.now(); // Get current date
  int age = today.year - dob.year; // Calculate age

  // Adjust age if birthday hasn't occurred yet this year
  if (today.month < dob.month ||
      (today.month == dob.month && today.day < dob.day)) {
    age--;
  }

  return age; // Return calculated age
}

List<int>? dateRangefunction(
  DateTime? date1,
  DateTime? date2,
) {
  if (date1 == null || date2 == null) return [];

  // Ensure from <= to
  DateTime from = date1.isBefore(date2) ? date1 : date2;
  DateTime to = date2.isAfter(date1) ? date2 : date1;

  List<int> keys = [];
  DateTime current = DateTime(from.year, from.month, from.day);

  while (!current.isAfter(to)) {
    final y = current.year.toString();
    final m = current.month.toString().padLeft(2, '0');
    final d = current.day.toString().padLeft(2, '0');
    keys.add(int.parse('$y$m$d'));

    current = current.add(const Duration(days: 1));
  }

  return keys;
}

int? datetointeger(DateTime? givenDate) {
  if (givenDate == null) {
    return null;
  }
  final year = givenDate.year;
  final month = givenDate.month.toString().padLeft(2, '0');
  final day = givenDate.day.toString().padLeft(2, '0');
  return int.parse('$year$month$day');
}

int? calculateDuration(
  DateTime? startTime,
  DateTime? endTime,
) {
  // write function to calculate duration in minute between two given time.
  if (startTime == null || endTime == null) {
    return null; // Return null if either time is null
  }
  return endTime
      .difference(startTime)
      .inMinutes; // Calculate duration in minutes
}

int? calculateDays(
  DateTime? startDate,
  DateTime? endDate,
) {
  // write function to calculate number of days from two given dates
  if (startDate == null || endDate == null) {
    return null; // Return null if either date is null
  }
  return endDate
      .difference(startDate)
      .inDays; // Calculate and return the difference in days
}

DateTime? findEndDate(
  DateTime? startDate,
  int? totalDays,
) {
  // write function to return date from start date and total days.
  if (startDate == null || totalDays == null) {
    return null; // Return null if startDate or totalDays is null
  }
  return startDate
      .add(Duration(days: totalDays)); // Calculate and return the end date
}

bool? checkexpiryDate(DateTime? dateExpiry) {
  // write function to return boolean value from given date, if date is in past.
  if (dateExpiry == null) {
    return null; // Return null if the date is null
  }
  return dateExpiry.isBefore(DateTime
      .now()); // Return true if the date is in the past, otherwise false
}
