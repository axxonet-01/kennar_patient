// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' as io;
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:http_parser/http_parser.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;

class LogoPickerWidget extends StatefulWidget {
  LogoPickerWidget({
    Key? key,
    this.width,
    this.height,
    this.file,
    this.galleryText,
    this.cameraText,
    this.clearText,
    this.textColor,
    this.buttonBackground,
    this.saveText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? file;
  final String? galleryText;
  final String? cameraText;
  final String? clearText;
  final Color? textColor;
  final Color? buttonBackground;
  final String? saveText;

  @override
  _LogoPickerWidgetState createState() => _LogoPickerWidgetState();
}

class _LogoPickerWidgetState extends State<LogoPickerWidget> {
  XFile? pickedFileX;
  io.File? pickedFile;
  Image? photoX;
  String platformName = '';
  String globalMessages = "Logs:" + "\n";

  final String uploadUrl = "https://app.kennarhealth.com/api/uploadLogo";

  @override
  void initState() {
    super.initState();
    try {
      print("Check Platform");

      if (kIsWeb) {
        platformName = "Web";
        print("Platform: web");
        setState(() {
          globalMessages += "Platform: web" + "\n";
        });
      } else {
        if (io.Platform.isAndroid) {
          print("Platform: Android");
          platformName = "Android";
          setState(() {
            globalMessages += "Platform: Android" + "\n";
          });
        } else if (io.Platform.isIOS) {
          print("Platform: IOS");
          platformName = "IOS";
          setState(() {
            globalMessages += "Platform: IOS" + "\n";
          });
        } else if (io.Platform.isFuchsia) {
          print("Platform: Fuchsia");
          platformName = "Fuchsia";
        } else if (io.Platform.isLinux) {
          print("Platform: Linux");
          platformName = "Linux";
        } else if (io.Platform.isMacOS) {
          print("Platform: Mac");
          platformName = "MacOS";
        } else if (io.Platform.isWindows) {
          print("Platform: Windows");
          platformName = "Windows";
        }
      } // end if
    } on Exception catch (e) {
      print("Exception=" + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          width: widget.width,
          height: (widget.height! / 100) * 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(138, 97, 0, 255),
              style: BorderStyle.solid,
              width: 2.0,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: pickedFile == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      Icon(
                        Icons.collections,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      Text(
                        "Upload Image(If Any)",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ])
              // Image.file(File('assets/images/Photo-Camera-Upload.jpg'), fit: BoxFit.cover)
              /*         Image.asset(
                'assets/images/cameraBack.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              )
              FittedBox(
  child: Image.asset('foo.png'),
  fit: BoxFit.fill,
)             */
              : kIsWeb
                  ? Image.network(pickedFile!.path, fit: BoxFit.fill)
                  : Image.file(pickedFile!, fit: BoxFit.fill)), //Container,

      Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            // Get from Gallery
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                  alignment: Alignment.center,
                  primary: widget.buttonBackground,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 12,
                    //fontWeight: FontWeight.bold
                  )),
              onPressed: () {
                _getFromGallery();
              },
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.collections,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(widget.galleryText!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: widget.textColor)),
                ],
              ),
            ),
            Container(
              width: 12,
              height: 40.0,
            ),
            // Get from Camera
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                  alignment: Alignment.center,
                  primary: widget.buttonBackground,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.bold
                  )),
              onPressed: () {
                _getFromCamera();
              },
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(widget.cameraText!,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 12, color: widget.textColor)),
                ],
              ),
            ), // RaisedButton
            Container(
              width: 12,
              height: 40.0,
            ),
            // Clear image
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                  alignment: Alignment.center,
                  primary: widget.buttonBackground,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 12,
                    //fontWeight: FontWeight.bold
                  )),
              onPressed: () {
                _clearImage();
              },
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.backspace_outlined,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(widget.clearText!,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 12, color: widget.textColor)),
                ],
              ),
            ), // RaisedButton
          ], // children
        ), // Row
      ), // child: Container
      // *** Save Button Start
      Container(
        alignment: Alignment.center,
        //  mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40),
              alignment: Alignment.center,
              primary: widget.buttonBackground,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              textStyle: TextStyle(
                fontSize: 12,
                //fontWeight: FontWeight.bold
              )),
          onPressed: () {
            uploadImage(pickedFile!, uploadUrl);
          },
          child: Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Icon(
                Icons.save_outlined,
                color: Colors.black,
                size: 20.0,
              ),
              SizedBox(
                width: 4,
              ),
              Text(widget.saveText!,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12, color: widget.textColor)),
            ],
          ),
        ),
      ),
      // *** Save Button End
      // *** Text Field Start

      /*
          Container(
          width: 400,
          height: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.amber,
              style: BorderStyle.solid,
              width: 2.0,
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: SingleChildScrollView(
              child: Column(children: [
            Text(globalMessages,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12, color: widget.textColor)),
          
              ] // Container
                            
                            
          )  // Column
              ) 
            ) */ // Container

      // ** Text Field End
    ]) // Column
        ); // return
  }

  /// Get from gallery
  _getFromGallery() async {
    pickedFileX = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    setState(() {
      globalMessages += "Gallery File:" + "\n";
    });
    if (pickedFileX != null) {
      setState(() {
        pickedFile = io.File(pickedFileX!.path);
        print(pickedFile);
        setState(() {
          globalMessages += "Gallery File =" + "\n" + pickedFile!.path + "\n";
        });
      }); //setState
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    pickedFileX = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    setState(() {
      globalMessages += "Camera File:" + "\n";
    });
    if (pickedFileX != null) {
      setState(() {
        pickedFile = io.File(pickedFileX!.path);
        print(pickedFile);
        setState(() {
          globalMessages += "Camera File =" + "\n" + pickedFile!.path + "\n";
        });
      }); //setState
    }
  }

  ///  _clearImage();
  _clearImage() async {
    setState(() {
      pickedFile = null;
      print("Clear image");

      setState(() {
        globalMessages = "Logs\n";
      });
    });
  }

  Future<String?> uploadImage(io.File fileObject, url) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['Name'] = "Upload Business partner icon";
    request.fields['Function'] = "Upload Image";
    request.fields['ImageName'] = fileObject.path.split("/").last;
    request.fields['refreshToken'] = FFAppState().sessionRefreshToken!;
    request.fields['userEmail'] = FFAppState().getEmailAddress!;

    if (!kIsWeb) {
      print("Upload: Mobile");
      setState(() {
        globalMessages += "Upload: Mobile" + "\n";
      });

      request.files.add(http.MultipartFile(
          "image",
          io.File(fileObject.path).readAsBytes().asStream(),
          io.File(fileObject.path).lengthSync(),
          filename: fileObject.path.split("/").last,
          contentType: MediaType('image', 'jpeg')));
      setState(() {
        globalMessages += "Mobile: File Added =" + "\n";
      });
    } else {
      print("Upload: Web");
      setState(() {
        globalMessages += "Upload: Web" + "\n";
      });
      request.files.add(new http.MultipartFile.fromBytes(
          "image", await pickedFileX!.readAsBytes(),
          filename: fileObject.path.split("/").last,
          contentType: MediaType('image', 'jpeg')));
      print("Upload: added File sending");
      setState(() {
        FFAppState().uploadimgname = fileObject.path.split("/").last;
        globalMessages += "Web: File Added =" + "\n";
      });
    }
    var response;
    try {
      response = await request.send();
      print("Upload: sent : Response =" + response.toString());
      setState(() {
        globalMessages += "Response =" + "\n" + response.toString() + "\n";
      });
      return response.reasonPhrase;
    } catch (e) {
      setState(() {
        globalMessages += "Exception" + "\n" + e.toString();
      });
    }
    return "400";
  } // uploadImage End
}
