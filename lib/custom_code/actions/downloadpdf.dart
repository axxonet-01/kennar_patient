// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
import 'dart:math';
import 'dart:async';
//import 'dart:math';
import 'dart:convert'; //im
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
//import 'dart:html'; // im
//import 'package:http/http.dart' as http; //im

Future downloadpdf(String file) async {
  Uint8List bytes = Base64Decoder().convert(file);

  Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => bytes,
  );
  //var response = await http
  //  .post(Uri.parse('https://app.kennarhealth.com/api/downloadCsv'));
  // var request = http.MultipartRequest(
  //     'POST', Uri.parse('https://app.kennarhealth.com/api/downloadpdf'));
  // request.fields['Name'] = "download pdf";
  // request.fields['ImageName'] = file;
  // AnchorElement(
  //     href:
  //         // "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(file)}")
  //         "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
  //   ..setAttribute("download", 'file.pdf')
  //   ..click();
}
