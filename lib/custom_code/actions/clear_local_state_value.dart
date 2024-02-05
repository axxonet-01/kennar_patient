// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future clearLocalStateValue() async {
  // Add your function code here!
  FFAppState().cEventName = '';
  FFAppState().cTeamName = '';
  FFAppState().firstName = '';
  FFAppState().lastName = '';
  FFAppState().paymentstatus = 1;
  FFAppState().donationAmount = '0';
  FFAppState().dashboard = 1;
  FFAppState().idCount = 0;
  FFAppState().idList = [];
  FFAppState().defaultRoleId = '';
}
