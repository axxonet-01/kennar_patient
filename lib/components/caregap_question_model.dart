import '/backend/api_requests/api_calls.dart';
import '/components/new_date_widget.dart';
import '/components/remark_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'caregap_question_widget.dart' show CaregapQuestionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CaregapQuestionModel extends FlutterFlowModel<CaregapQuestionWidget> {
  ///  Local state fields for this component.

  int? qntype = 0;

  ///  State fields for stateful widgets in this component.

  // Models for newDate dynamic component.
  late FlutterFlowDynamicModels<NewDateModel> newDateModels;
  // Models for remark_list.
  late FlutterFlowDynamicModels<RemarkModel> remarkListModels;
  // Stores action output result for [Backend Call - API (CareGaps)] action in Button widget.
  ApiCallResponse? apiResulthrorWebCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newDateModels = FlutterFlowDynamicModels(() => NewDateModel());
    remarkListModels = FlutterFlowDynamicModels(() => RemarkModel());
  }

  void dispose() {
    newDateModels.dispose();
    remarkListModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
