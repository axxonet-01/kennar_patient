import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/components/patient_search_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_all_medication_widget.dart' show PatientAllMedicationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientAllMedicationModel
    extends FlutterFlowModel<PatientAllMedicationWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (patientProfile)] action in patientAllMedication widget.
  ApiCallResponse? diabetes;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in patientAllMedication widget.
  ApiCallResponse? apiResultbbhproviderData;
  // Stores action output result for [Backend Call - API (knNetwork)] action in patientAllMedication widget.
  ApiCallResponse? apiResultaui;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
