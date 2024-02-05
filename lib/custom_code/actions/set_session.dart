// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future setSession(
  String refreshToken,
  String token,
  String passwordChangeRequired,
  String passwordLastUpdatedInstant,
  String lastLoginInstant,
  String active,
  String verified,
  String usernameStatus,
  String loginId,
  String firstName,
  String defaultRoleId,
) async {
  // Add your function code here!

  print("*** *** ***");
  print("*** *** ***");
  print("*** *** ***");

  print("Started setSession");

  FFAppState().sessionRefreshToken = refreshToken;

  print("1");

  FFAppState().sessionToken = token;

  print("2");

  FFAppState().sessionPasswordChangeRequired = passwordChangeRequired;

  print("3");
  FFAppState().sessionPasswordLastUpdatedInstant = passwordLastUpdatedInstant;

  print("4");
  FFAppState().sessionLastLoginInstant = lastLoginInstant;

  print("5");
  FFAppState().sessionActive = active;

  print("6");
  FFAppState().sessionVerified = verified;

  print("7");
  FFAppState().sessionUsernameStatus = usernameStatus;

  print("8");
  FFAppState().sessionLoginId = loginId;

  print("9");
  FFAppState().firstName = firstName;

  print("10");
  FFAppState().defaultRoleId = defaultRoleId;

  print("Finished setSession");

  print("*** *** ***");
  print("*** *** ***");
}
