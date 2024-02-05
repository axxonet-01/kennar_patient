import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'provider_patient_h_i_e_widget.dart' show ProviderPatientHIEWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProviderPatientHIEModel
    extends FlutterFlowModel<ProviderPatientHIEWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode1;
  TextEditingController? firstNameController1;
  String? Function(BuildContext, String?)? firstNameController1Validator;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode2;
  TextEditingController? firstNameController2;
  String? Function(BuildContext, String?)? firstNameController2Validator;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode3;
  TextEditingController? firstNameController3;
  String? Function(BuildContext, String?)? firstNameController3Validator;
  // State field(s) for legal widget.
  FocusNode? legalFocusNode;
  TextEditingController? legalController;
  String? Function(BuildContext, String?)? legalControllerValidator;
  // State field(s) for legal1 widget.
  FocusNode? legal1FocusNode;
  TextEditingController? legal1Controller;
  String? Function(BuildContext, String?)? legal1ControllerValidator;
  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Button widget.
  ApiCallResponse? apiResult23g;
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
    firstNameFocusNode1?.dispose();
    firstNameController1?.dispose();

    firstNameFocusNode2?.dispose();
    firstNameController2?.dispose();

    firstNameFocusNode3?.dispose();
    firstNameController3?.dispose();

    legalFocusNode?.dispose();
    legalController?.dispose();

    legal1FocusNode?.dispose();
    legal1Controller?.dispose();

    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
