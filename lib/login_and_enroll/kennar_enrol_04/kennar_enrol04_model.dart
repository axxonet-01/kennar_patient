import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'kennar_enrol04_widget.dart' show KennarEnrol04Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class KennarEnrol04Model extends FlutterFlowModel<KennarEnrol04Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Button widget.
  ApiCallResponse? apiResult23gknpat;
  // State field(s) for first_name widget.
  FocusNode? firstNameFocusNode1;
  TextEditingController? firstNameController1;
  String? Function(BuildContext, String?)? firstNameController1Validator;
  // State field(s) for first_name widget.
  FocusNode? firstNameFocusNode2;
  TextEditingController? firstNameController2;
  String? Function(BuildContext, String?)? firstNameController2Validator;
  String? _firstNameController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zb6z2lz4' /* First name is required */,
      );
    }

    return null;
  }

  // State field(s) for DropDown_Month widget.
  String? dropDownMonthValue;
  FormFieldController<String>? dropDownMonthValueController;
  // State field(s) for DropDown_Date widget.
  String? dropDownDateValue;
  FormFieldController<String>? dropDownDateValueController;
  // State field(s) for DropDown_year widget.
  String? dropDownYearValue;
  FormFieldController<String>? dropDownYearValueController;
  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for legal widget.
  FocusNode? legalFocusNode;
  TextEditingController? legalController;
  String? Function(BuildContext, String?)? legalControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameController2Validator = _firstNameController2Validator;
  }

  void dispose() {
    firstNameFocusNode1?.dispose();
    firstNameController1?.dispose();

    firstNameFocusNode2?.dispose();
    firstNameController2?.dispose();

    legalFocusNode?.dispose();
    legalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
