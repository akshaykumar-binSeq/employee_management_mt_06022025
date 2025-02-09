import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

String rupeeSymbol = '₹';
String tickSymbol = '✓';

final RegExp alphabetsWithSpaceRegex = RegExp(r'^[a-zA-Z ]+$');
final RegExp emailRegex =
    RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

final RegExp digitsInRangeRegex =
    RegExp(r'^(?:[0-9]|[1-9][0-9]|1[0-4][0-9]|150)$');

MaterialColor primaryColor = Colors.blue;
Color primaryAccentColor = primaryColor.shade100;

Color secondaryColor = Colors.white;
Color secondaryAccentColor = Colors.grey.shade200;

Widget thinSpace = const SizedBox(
  height: 16,
  width: 16,
);
Widget thickSpace = const SizedBox(
  height: 32,
  width: 32,
);

String? formatDate(DateTime? dateTime) {
  if (dateTime != null) {
    final DateFormat formatter = DateFormat('d MMM y'); // Example: 5 Sep 2023
    return formatter.format(dateTime);
  }
  return null;
}

DateTime? parseFormattedDate(String? formattedDate) {
  if (formattedDate != null) {
    final DateFormat formatter = DateFormat('d MMM y');
    final DateTime? dateTime = formatter.tryParse(formattedDate);
    return dateTime;
  }
  return null;
}

void toastMessage(dynamic message,
    {ToastGravity gravity = ToastGravity.BOTTOM}) {
  log('toast: $message');
  Fluttertoast.showToast(
    msg: '$message',
    gravity: gravity,
  );
}
