// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';

class Base64Imagenew extends StatefulWidget {
  const Base64Imagenew({
    Key? key,
    this.width,
    this.height,
    this.base64,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? base64;

  @override
  _Base64ImagenewState createState() => _Base64ImagenewState();
}

class _Base64ImagenewState extends State<Base64Imagenew> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Uint8List bytes = Base64Decoder().convert(widget.base64!);
    return Container(
        width: widget.width,
        height: widget.height,
        // decoration: BoxDecoration(
        //   shape: BoxShape.circle,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          shape: BoxShape.rectangle,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.memory(
            bytes,
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ));
  }
}
