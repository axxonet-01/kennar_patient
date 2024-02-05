import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_listing_pro_popup_widget.dart'
    show PatientListingProPopupWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientListingProPopupModel
    extends FlutterFlowModel<PatientListingProPopupWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for reason widget.
  FocusNode? reasonFocusNode;
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;
  String? _reasonControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e3c1abqb' /* Please enter reason */,
      );
    }

    return null;
  }

  // State field(s) for DropDown_risk widget.
  String? dropDownRiskValue;
  FormFieldController<String>? dropDownRiskValueController;
  // State field(s) for TextField_remarks widget.
  FocusNode? textFieldRemarksFocusNode;
  TextEditingController? textFieldRemarksController;
  String? Function(BuildContext, String?)? textFieldRemarksControllerValidator;
  String? _textFieldRemarksControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f79kvmcv' /* Please enter remarks */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (providerDashboard)] action in Button widget.
  ApiCallResponse? apiResultvye;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    reasonControllerValidator = _reasonControllerValidator;
    textFieldRemarksControllerValidator = _textFieldRemarksControllerValidator;
  }

  void dispose() {
    reasonFocusNode?.dispose();
    reasonController?.dispose();

    textFieldRemarksFocusNode?.dispose();
    textFieldRemarksController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
