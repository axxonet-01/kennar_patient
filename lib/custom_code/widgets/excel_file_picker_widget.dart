// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


class ExcelFilePickerWidget extends StatefulWidget {
  const ExcelFilePickerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ExcelFilePickerWidgetState createState() => _ExcelFilePickerWidgetState();
}

class _ExcelFilePickerWidgetState extends State<ExcelFilePickerWidget> {
  File? excelFile;
  String globalMessages = "Logs:";
  bool isHovering = false;
  bool isButtonHovering = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _pickExcelFile,
          onTapDown: (_) {
            setState(() {
              isHovering = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              isHovering = false;
            });
          },
          child: Container(
            width: 250,
            height: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isHovering
                  ? Color.fromRGBO(229, 242, 252, 1) // Color when hovering
                  : Color.fromRGBO(229, 242, 252, 1), // Default color
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.upload_file,
                  size: 100, // Reduced icon size
                  color: Color.fromRGBO(0, 128, 252, 1),
                ),
                SizedBox(width: 8), // Adjust the space between icon and text
                Column(
                  children: [
                    if (excelFile != null &&
                        (excelFile!.path.split('.').last == 'xlsx' ||
                            excelFile!.path.split('.').last == 'xls'))
                      Text(
                        "${excelFile!.path}",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )
                    else if (excelFile != null)
                      Text(
                        "File format is not supported",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )
                    else
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15), // Adjusted top padding
                        child: Container(
                          width:
                              150, // Wrap TextButton in a Container with width 150
                          child: TextButton(
                            onPressed: _pickExcelFile,
                            onHover: (value) {
                              setState(() {
                                isButtonHovering = value;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 4),
                                Text(
                                  "Browse File",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                isButtonHovering
                                    ? Color.fromRGBO(
                                        0, 140, 220, 1) // Color when hovering
                                    : Color.fromRGBO(
                                        0, 128, 252, 1), // Default color
                              ),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6), // Adjusted padding
                              ),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _pickExcelFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx', 'xls'],
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        excelFile = File(result.files.first.name);
      });

      await uploadImage(excelFile!, result);
    }
  }

  Future<String?> uploadImage(
    File fileObject,
    FilePickerResult result,
  ) async {
    if (excelFile!.path.split('.').last == 'xlsx' ||
        excelFile!.path.split('.').last == 'xls') {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse("https://api-admin.kennarhealth.com/webhook/uploadxlfile"),
      );
      request.fields['Name'] = "Care Gap";
      request.fields['Function'] = "Upload File";
      request.fields['ImageName'] = FFAppState().unickid;
      request.fields['extension'] = result.files.first.name.split('.').last;
      request.fields['refreshToken'] = FFAppState().sessionRefreshToken;

      if (!kIsWeb) {
        request.files.add(
          http.MultipartFile(
            "image",
            fileObject.readAsBytes().asStream(),
            fileObject.lengthSync(),
            filename: result.files.single.name,
            contentType: MediaType('xlsx', 'xls'),
          ),
        );
      } else {
        request.files.add(
          http.MultipartFile.fromBytes(
            "file",
            result.files.single.bytes!,
            filename: result.files.single.name,
            contentType: MediaType('xlsx', 'xls'),
          ),
        );
      }

      try {
        var response = await request.send();
        setState(() {
          FFAppState().uploadimgname = FFAppState().unickid +
              "." +
              result.files.first.name.split('.').last;
          globalMessages += "\nResponse: ${response.toString()}\n";
          FFAppState().fileName = "${excelFile!.path}";
        });
        return response.reasonPhrase;
      } catch (e) {
        setState(() {
          globalMessages += "\nException: ${e.toString()}\n";
        });
      }
      return "400";
    }
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: ExcelFilePickerWidget(),
        ),
      ),
    ),
  );
}
