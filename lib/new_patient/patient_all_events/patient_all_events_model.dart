import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/components/patient_search_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_all_events_widget.dart' show PatientAllEventsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientAllEventsModel extends FlutterFlowModel<PatientAllEventsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (patientProfile)] action in patientAllEvents widget.
  ApiCallResponse? diabetes;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in patientAllEvents widget.
  ApiCallResponse? apiResultbbhproviderData;
  // Stores action output result for [Backend Call - API (knNetwork)] action in patientAllEvents widget.
  ApiCallResponse? apiResultaui;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
  }

  void dispose() {
    patientHeaderModel.dispose();
    patientNewNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
