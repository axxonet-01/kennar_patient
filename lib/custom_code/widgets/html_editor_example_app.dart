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

import 'index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'index.dart';

import 'index.dart';

import 'package:flutter/foundation.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:file_picker/file_picker.dart';

class HtmlEditorExampleApp extends StatefulWidget {
  const HtmlEditorExampleApp({
    Key? key,
    this.width,
    this.height,
    this.editText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? editText;

  @override
  _HtmlEditorExampleAppState createState() => _HtmlEditorExampleAppState();
}

class _HtmlEditorExampleAppState extends State<HtmlEditorExampleApp> {
  String result = '';
  final HtmlEditorController controller = HtmlEditorController();
  bool isChecked = false; // Define a boolean variable to hold checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HtmlEditor(
              controller: controller,
              htmlEditorOptions: HtmlEditorOptions(
                  hint: 'Your text here...',
                  shouldEnsureVisible: true,
                  initialText: widget.editText),
              htmlToolbarOptions: HtmlToolbarOptions(
                toolbarPosition: ToolbarPosition.aboveEditor, //by default
                //toolbarType: ToolbarType.nativeScrollable,
                toolbarType: ToolbarType.nativeExpandable,
                //by default
                onButtonPressed:
                    (ButtonType type, bool? status, Function? updateStatus) {
                  //print(
                  // "button '${describeEnum(type)}' pressed, the current selected status is $status");
                  return true;
                },
                onDropdownChanged: (DropdownType type, dynamic changed,
                    Function(dynamic)? updateSelectedItem) {
                  // print(
                  //     "dropdown '${describeEnum(type)}' changed to $changed");
                  return true;
                },
                mediaLinkInsertInterceptor: (String url, InsertFileType type) {
                  print(url);
                  return true;
                },
                mediaUploadInterceptor:
                    (PlatformFile file, InsertFileType type) async {
                  print(file.name); //filename
                  print(file.size); //size in bytes
                  print(file.extension); //file extension (eg jpeg or mp4)
                  return true;
                },
              ),
              otherOptions: OtherOptions(height: 350),
              callbacks: Callbacks(onBeforeCommand: (String? currentHtml) {
                print('html before change is $currentHtml');
              }, onChangeContent: (String? changed) {
                print('content changed to $changed');
              }, onChangeCodeview: (String? changed) {
                print('code changed to $changed');
              }, onChangeSelection: (EditorSettings settings) {
                print('parent element is ${settings.parentElement}');
                print('font name is ${settings.fontName}');
              }, onDialogShown: () {
                print('dialog shown');
              }, onEnter: () {
                print('enter/return pressed');
              }, onFocus: () {
                print('editor focused');
              }, onBlur: () {
                print('editor unfocused');
              }, onBlurCodeview: () {
                print('codeview either focused or unfocused');
              }, onInit: () {
                print('init');
              },
                  //this is commented because it overrides the default Summernote handlers
                  /*onImageLinkInsert: (String? url) {
                    print(url ?? "unknown url");
                  },
                  onImageUpload: (FileUpload file) async {
                    print(file.name);
                    print(file.size);
                    print(file.type);
                    print(file.base64);
                  },*/
                  onImageUploadError:
                      (FileUpload? file, String? base64Str, UploadError error) {
                print(describeEnum(error));
                print(base64Str ?? '');
                if (file != null) {
                  print(file.name);
                  print(file.size);
                  print(file.type);
                }
              }, onKeyDown: (int? keyCode) {
                print('$keyCode key downed');
                print('current character count: ${controller.characterCount}');
              }, onKeyUp: (int? keyCode) {
                print('$keyCode key released');
              }, onMouseDown: () {
                print('mouse downed');
              }, onMouseUp: () {
                print('mouse released');
              }, onNavigationRequestMobile: (String url) {
                print(url);
                return NavigationActionPolicy.ALLOW;
              }, onPaste: () {
                print('pasted into editor');
              }, onScroll: () {
                print('editor scrolled');
              }),
              plugins: [
                SummernoteAtMention(
                    getSuggestionsMobile: (String value) {
                      var mentions = <String>['test1', 'test2', 'test3'];
                      return mentions
                          .where((element) => element.contains(value))
                          .toList();
                    },
                    mentionsWeb: ['test1', 'test2', 'test3'],
                    onSelect: (String value) {
                      print(value);
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                    onPressed: () {
                      controller.undo();
                    },
                    child: Text('Undo',
                        style:
                            TextStyle(color: Color.fromARGB(255, 10, 10, 10))),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                    onPressed: () {
                      controller.clear();
                    },
                    child: Text('Reset',
                        style: TextStyle(color: Color.fromARGB(255, 10, 9, 9))),
                  ),
                  SizedBox(
                    width: 16,
                  ),

                  // TextButton(
                  //   style: TextButton.styleFrom(
                  //     backgroundColor: Color.fromRGBO(138, 97, 255, 1),
                  //   ),
                  //   onPressed: () async {
                  //     var txt = await controller.getText();
                  //     if (txt.contains('src=\"data:')) {
                  //       txt =
                  //           '<text removed due to base-64 data, displaying the text could cause the app to crash>';
                  //     }
                  //     setState(() {
                  //       result = txt;
                  //       FFAppState().text = txt;
                  //       print("final result");
                  //       print(FFAppState().text);
                  //     });
                  //   },
                  //   child: Text(
                  //     'Submit',
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 16,
                  // ),

                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) async {
                      var txt = await controller.getText();
                      if (txt.contains('src=\"data:')) {
                        txt =
                            '<text removed due to base-64 data, displaying the text could cause the app to crash>';
                      }
                      if (newValue == true) {
                        setState(() {
                          isChecked =
                              newValue ?? false; // Update the checkbox state
                          result = txt;
                          FFAppState().text = txt;
                          print("final result");
                          print(FFAppState().text);
                          // FFAppState().text = result; // Update FFAppState().text with the result
                          // print(FFAppState().text);
                        });
                      } else {
                        setState(() {
                          isChecked =
                              newValue ?? false; // Update the checkbox state
                          result = txt;
                          FFAppState().text = '';
                          print("final result");
                          print(FFAppState().text);
                          // FFAppState().text = result; // Update FFAppState().text with the result
                          // print(FFAppState().text);
                        });
                      }
                    },
                    activeColor: Color.fromRGBO(138, 97, 255, 1),
                    checkColor: Colors.black, // Customize check color
                  ),

                  Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.black, // Customize text color
                      fontSize: 14, // Customize text size
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
