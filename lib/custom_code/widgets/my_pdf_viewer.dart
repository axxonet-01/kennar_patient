// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'PDF Viewer Example',
//       home: MyPdfViewer(),
//     );
//   }
// }

class MyPdfViewer extends StatefulWidget {
  final String pdfUrl;
  final double width;
  final double height;

  MyPdfViewer({
    required this.pdfUrl,
    required this.width,
    required this.height,
  });

  @override
  _MyPdfViewerState createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  late PdfViewerController _pdfViewerController;
  double _zoomPercentage = 100.0;
  int _totalPages = 0;
  bool _ctrlKeyPressed = false;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  void _zoomIn() {
    setState(() {
      _zoomPercentage += 10.0;
      _pdfViewerController.zoomLevel = _zoomPercentage / 100.0;
    });
  }

  void _zoomOut() {
    setState(() {
      _zoomPercentage -= 10.0;
      _pdfViewerController.zoomLevel = _zoomPercentage / 100.0;
    });
  }

  void _handleScroll(PointerSignalEvent event) {
    if (_ctrlKeyPressed && event is PointerScrollEvent) {
      if (event.scrollDelta.dy > 0) {
        // Scroll up, zoom in
        _zoomIn();
      } else {
        // Scroll down, zoom out
        _zoomOut();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.navigate_before),
                  onPressed: () {
                    _pdfViewerController.previousPage();
                  },
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Page ${_pdfViewerController.pageNumber} of $_totalPages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    _pdfViewerController.nextPage();
                  },
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.zoom_in),
                  onPressed: _zoomIn,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  '${_zoomPercentage.toInt()}%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.zoom_out),
                  onPressed: _zoomOut,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: RawKeyboardListener(
              focusNode: FocusNode(),
              onKey: (RawKeyEvent event) {
                if (event.logicalKey == LogicalKeyboardKey.controlLeft) {
                  if (event is RawKeyDownEvent) {
                    // Control key pressed
                    setState(() {
                      _ctrlKeyPressed = true;
                    });
                  } else if (event is RawKeyUpEvent) {
                    // Control key released
                    setState(() {
                      _ctrlKeyPressed = false;
                    });
                  }
                }
              },
              child: Listener(
                onPointerSignal: _handleScroll,
                child: SfPdfViewer.network(
                  widget.pdfUrl,
                  controller: _pdfViewerController,
                  onPageChanged: (PdfPageChangedDetails details) {
                    print('Page changed to ${details.newPageNumber}');
                    setState(() {
                      _totalPages = _pdfViewerController.pageCount;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
