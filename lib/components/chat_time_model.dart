import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'chat_time_widget.dart' show ChatTimeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatTimeModel extends FlutterFlowModel<ChatTimeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // State field(s) for DropDown_Month widget.
  String? dropDownMonthValue;
  FormFieldController<String>? dropDownMonthValueController;
  // Stores action output result for [Backend Call - API (dashboard)] action in Button widget.
  ApiCallResponse? yearp;
  // Stores action output result for [Backend Call - API (dashboard)] action in Button widget.
  ApiCallResponse? monthp;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
