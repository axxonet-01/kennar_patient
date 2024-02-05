// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'dart:math';

String unikeid(List<String> existingCodes) {
  const int codeLength = 15;
  const String characters =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';

  String newCode;
  do {
    Random random = Random();
    StringBuffer codeBuffer = StringBuffer();

    for (int i = 0; i < codeLength; i++) {
      codeBuffer.write(characters[random.nextInt(characters.length)]);
    }
    newCode = codeBuffer.toString();
  } while (existingCodes.contains(newCode));

  return newCode;
}
