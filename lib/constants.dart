import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kPrimaryColor = Color(0xff1376BD);
const kSecondaryColor =Color(0xffDFEFF4);
List<String> nationalities = [
  'USA',
  'Canada',
  'UK',
  'Germany',
  'France',
  'Italy',
  'Japan',
  'China',
  'India',
];
String formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}
