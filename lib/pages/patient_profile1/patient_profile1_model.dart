import '/backend/api_requests/api_calls.dart';
import '/components/heartratingpopup_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_profile1_widget.dart' show PatientProfile1Widget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientProfile1Model extends FlutterFlowModel<PatientProfile1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for himoglobin widget.
  String? himoglobinValue1;
  FormFieldController<String>? himoglobinValueController1;
  // State field(s) for colostrolmob widget.
  String? colostrolmobValue;
  FormFieldController<String>? colostrolmobValueController;
  // Stores action output result for [Backend Call - API (patientProfile)] action in Icon widget.
  ApiCallResponse? resultpdf1C;
  // State field(s) for All widget.
  String? allValue1;
  FormFieldController<String>? allValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for All widget.
  String? allValue2;
  FormFieldController<String>? allValueController2;
  // State field(s) for himoglobin widget.
  String? himoglobinValue2;
  FormFieldController<String>? himoglobinValueController2;
  // State field(s) for cholestrol widget.
  String? cholestrolValue;
  FormFieldController<String>? cholestrolValueController;
  // Stores action output result for [Backend Call - API (patientProfile)] action in Icon widget.
  ApiCallResponse? resultpdf1;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Stores action output result for [Backend Call - API (patientProfile)] action in Button widget.
  ApiCallResponse? apiResult3bv;
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
