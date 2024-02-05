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

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImageViewer extends StatefulWidget {
  final String imgUrl;
  final double width;
  final double height;

  ImageViewer({
    required this.imgUrl,
    required this.width,
    required this.height,
  });

  @override
  _ImageViewerState createState() => _ImageViewerState();

  static void launch(
      BuildContext context, String imgUrl, double width, double height) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            ImageViewer(imgUrl: imgUrl, width: width, height: height),
      ),
    );
  }
}

class _ImageViewerState extends State<ImageViewer> {
  late PageController _pageController;
  late PhotoViewController _photoController;
  double _currentScale = 1.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _photoController = PhotoViewController()
      ..outputStateStream.listen((PhotoViewControllerValue value) {
        setState(() {
          _currentScale = value.scale!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.zoom_in),
                onPressed: () {
                  _photoController.scale = (_photoController.scale ?? 1) + 0.5;
                },
              ),
              Text(
                'Zoom : ${(_currentScale * 100).toStringAsFixed(0)}%',
                style: TextStyle(color: const Color.fromARGB(255, 31, 28, 28)),
              ),
              IconButton(
                icon: Icon(Icons.zoom_out),
                onPressed: () {
                  _photoController.scale = (_photoController.scale ?? 1) - 0.5;
                },
              ),
            ],
          ),
          Expanded(
            child: PhotoViewGallery.builder(
              itemCount: 1,
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: NetworkImage(widget.imgUrl),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2,
                  controller: _photoController,
                );
              },
              scrollPhysics: BouncingScrollPhysics(),
              backgroundDecoration: BoxDecoration(
                color: Colors.black,
              ),
              pageController: _pageController,
              onPageChanged: (index) {
                // Handle page change if needed
              },
            ),
          ),
        ],
      ),
    );
  }
}
