// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:convert';
import 'package:universal_html/html.dart';
import 'package:http/http.dart' as http;

Future downloadExcelFile(String path) async {
  // Sending a POST request to the server to download the Excel file
  var response = await http.post(
      Uri.parse('https://api-admin.kennarhealth.com/webhook/downloadExcel'),
      body: {'path': path}); // Include the 'path' parameter in the request

  // Creating an anchor element to trigger the file download
  AnchorElement(
      href:
          "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(response.bodyBytes)}")
    ..setAttribute(
        "download",
        "Care Questions_" +
            (DateFormat('dd/MM/yyyy').format(DateTime.now()) +
                ".xlsx")) // Change the file extension to .xlsx for Excel
    ..click();
  // Add your function code here!
}
