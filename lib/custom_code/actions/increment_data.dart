// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

Future incrementData(int countValue) async {
  List<int> dropdownData = [5, 10, 25, 50, 100];
  int index = dropdownData.indexOf(FFAppState().countIncrement);
  index = index + countValue;

  if (index > dropdownData.length - 1) {
    FFAppState().countIncrement = dropdownData[dropdownData.length - 1];
  }
  if (index < 0) {
    FFAppState().countIncrement = dropdownData[0];
  } else {
    FFAppState().countIncrement = dropdownData[index];
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
