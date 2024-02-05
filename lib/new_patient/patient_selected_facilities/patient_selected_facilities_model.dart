import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_selected_facilities_widget.dart'
    show PatientSelectedFacilitiesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientSelectedFacilitiesModel
    extends FlutterFlowModel<PatientSelectedFacilitiesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Stores action output result for [Backend Call - API (knindividualaccess)] action in Button widget.
  ApiCallResponse? apiResultsrl;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Icon widget.
  ApiCallResponse? patientStatus012;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Icon widget.
  ApiCallResponse? patientDetailsNo;
  // Stores action output result for [Backend Call - API (knindividualaccess)] action in Button widget.
  ApiCallResponse? apiResultsrl1;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Icon widget.
  ApiCallResponse? patientStatus013;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Icon widget.
  ApiCallResponse? patientDetailsNo2;
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
