// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CustomWebViewXWidget extends StatefulWidget {
  const CustomWebViewXWidget({
    Key? key,
    this.width,
    this.height,
    required this.initialUrl,
    required this.authToken,
    required this.chatmail,
    required this.password,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String initialUrl;
  final String authToken;
  final String chatmail;
  final String password;

  @override
  _CustomWebViewXWidgetState createState() => _CustomWebViewXWidgetState();
}

class _CustomWebViewXWidgetState extends State<CustomWebViewXWidget> {
  String? _currentUrl;
  InAppWebViewController? _webViewController;

  @override
  void initState() {
    super.initState();
    _currentUrl = widget.initialUrl;
    //loadRocketChat(widget.authToken); // Trigger loadRocketChat function before WebView creation
  }

  void loadRocketChat(String authToken) {
    // Implement your loadRocketChat function here
    // For instance:
    if (_webViewController != null) {
      // _webViewController?.evaluateJavascript(source: '''
      //   const authToken = '\$authToken';
      //   alert('My Auth token: ' + authToken);
      //   console.log('Auth token:', authToken);

      //   const iframe = document.querySelector('iframe');
      //   if (iframe) {
      //     alert('We found Iframe if : ' + iframe);
      //     console.log('Iframe found:', iframe);

      //     iframe.onload = function() {
      //       console.log('Iframe loaded');
      //       iframe.contentWindow.postMessage({
      //         externalCommand: 'login-with-token',
      //         token: authToken
      //       }, '*');
      //     };
      //   } else {
      //     alert('Iframe else');
      //     console.log('Iframe not found!');
      //   }
      // ''');
    }
  }

  void loadChatWindow(String authToken) {
    if (_webViewController != null) {
      _webViewController!.evaluateJavascript(source: '''
        const authToken = '$authToken'; 
        alert('My Auth token: ' + authToken);
        console.log('Auth token:', authToken);

        const iframe = document.querySelector('iframe');
        if (iframe) {
          alert('We found Iframe if : ' + iframe);
          console.log('Iframe found:', iframe);

          iframe.onload = function() {
            console.log('Iframe loaded');
            iframe.contentWindow.postMessage({
              externalCommand: 'login-with-token',
              token: authToken
            }, '*');
          };
        } else {
          alert('Iframe else');
          console.log('Iframe not found!');
        }
      ''');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      key: UniqueKey(),
      initialUrlRequest: URLRequest(url: Uri.parse(_currentUrl!)),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          javaScriptEnabled: true,
          // Add other options here as needed
        ),
      ),
      onWebViewCreated: (controller) {
        _webViewController = controller;
      },
      onLoadStart: (controller, url) {
        print('WebView is loading: $url');
        print('Chat token is ' + widget.authToken);
      },
      onLoadStop: (controller, url) {
        print('WebView finished loading: $url');
        //String yourCode = "Meteor.loginWithPassword('deepa+PA_12@axxonet.com','bp81n5qvi3hlpqy8lyx')";
        String yourCode =
            "Meteor.loginWithPassword('${widget.chatmail}','${widget.password}')";
        _webViewController?.evaluateJavascript(source: yourCode).then((result) {
          debugPrint(result);
        });
//loadChatWindow(widget.authToken);
        // Perform actions afer WebView finishes loading, if needed
      },
      onConsoleMessage: (controller, consoleMessage) {
        print('Console: ${consoleMessage.message}');
      },
      onLoadError: (controller, url, code, message) {
        print('WebView failed to load: $url\nError: $message');
      },
    );
  }
}
