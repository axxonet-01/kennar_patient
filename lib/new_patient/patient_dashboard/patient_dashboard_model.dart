import '/backend/api_requests/api_calls.dart';
import '/components/diabetes_component/diabetes_component_widget.dart';
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
import 'patient_dashboard_widget.dart' show PatientDashboardWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientDashboardModel extends FlutterFlowModel<PatientDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (patientProfile)] action in Patient_Dashboard widget.
  ApiCallResponse? diabetes;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Patient_Dashboard widget.
  ApiCallResponse? apiResultbbhproviderData;
  // State field(s) for himoglobin widget.
  String? himoglobinValue1;
  FormFieldController<String>? himoglobinValueController1;
  // State field(s) for cholestrol widget.
  String? cholestrolValue;
  FormFieldController<String>? cholestrolValueController;
  // State field(s) for All widget.
  String? allValue1;
  FormFieldController<String>? allValueController1;
  // Stores action output result for [Backend Call - API (patientProfile)] action in Icon widget.
  ApiCallResponse? resultpdf1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for himoglobin widget.
  String? himoglobinValue2;
  FormFieldController<String>? himoglobinValueController2;
  // State field(s) for colostrolmob widget.
  String? colostrolmobValue;
  FormFieldController<String>? colostrolmobValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  // State field(s) for All widget.
  String? allValue2;
  FormFieldController<String>? allValueController2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  // Stores action output result for [Backend Call - API (patientProfile)] action in Icon widget.
  ApiCallResponse? resultpdf1C;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController6;

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
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
    expandableController5.dispose();
    expandableController6.dispose();
    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
