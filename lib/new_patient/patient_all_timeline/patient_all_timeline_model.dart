import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/components/patient_search_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_all_timeline_widget.dart' show PatientAllTimelineWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientAllTimelineModel
    extends FlutterFlowModel<PatientAllTimelineWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (patientProfile)] action in patientAllTimeline widget.
  ApiCallResponse? diabetes;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in patientAllTimeline widget.
  ApiCallResponse? apiResultbbhproviderData;
  // Stores action output result for [Backend Call - API (knNetwork)] action in patientAllTimeline widget.
  ApiCallResponse? apiResultaui;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
