// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:universal_html/html.dart';

import 'index.dart'; // Imports other custom actions

import 'package:html/dom.dart';
import 'package:html/dom_parsing.dart';
import 'package:html/parser.dart';
import 'package:async/async.dart';

Future loadRocketChat(String authToken) async {
  // Add your function code here!
  // int x = 0;
  // Timer.periodic(Duration(seconds: 4), (timer) {
  //   x++;
  //   x == 5 ? timer.cancel() : login(authToken);
  // });

  int x = 0;
  CancelableOperation? timer;
  timer = CancelableOperation.fromFuture(Future.doWhile(() async {
    await Future.delayed(Duration(seconds: 4));
    x++;
    if (x == 5) {
      timer!.cancel();
      return false;
    } else {
      login(authToken);
      return true;
    }
  }));
}

void login(String authToken) {
  IFrameElement? element = document.querySelector('iframe') as IFrameElement?;
  element?.contentWindow?.postMessage(
      {"externalCommand": 'login-with-token', "token": '$authToken'}, '*');
}
