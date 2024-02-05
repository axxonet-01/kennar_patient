import '/backend/api_requests/api_calls.dart';
import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'issue_tracking_appointment01_widget.dart'
    show IssueTrackingAppointment01Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class IssueTrackingAppointment01Model
    extends FlutterFlowModel<IssueTrackingAppointment01Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for DropDown_patient widget.
  String? dropDownPatientValue;
  FormFieldController<String>? dropDownPatientValueController;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Text widget.
  ApiCallResponse? apiResult4qd;
  // State field(s) for DropDown_facility widget.
  String? dropDownFacilityValue;
  FormFieldController<String>? dropDownFacilityValueController;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? apiResultbbhproviderData;
  // State field(s) for DropDown_fa widget.
  String? dropDownFaValue;
  FormFieldController<String>? dropDownFaValueController;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Text widget.
  ApiCallResponse? getpatient;
  // State field(s) for DropDown_pa widget.
  String? dropDownPaValue;
  FormFieldController<String>? dropDownPaValueController;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for issues_form_header component.
  late IssuesFormHeaderModel issuesFormHeaderModel;
  // Model for issues_form_header1 component.
  late IssuesFormHeader1Model issuesFormHeader1Model;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    issuesFormHeaderModel = createModel(context, () => IssuesFormHeaderModel());
    issuesFormHeader1Model =
        createModel(context, () => IssuesFormHeader1Model());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
    issuesFormHeaderModel.dispose();
    issuesFormHeader1Model.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
