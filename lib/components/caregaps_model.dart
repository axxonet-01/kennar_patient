import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'caregaps_widget.dart' show CaregapsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CaregapsModel extends FlutterFlowModel<CaregapsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_clinicName widget.
  FocusNode? textFieldClinicNameFocusNode;
  TextEditingController? textFieldClinicNameController;
  String? Function(BuildContext, String?)?
      textFieldClinicNameControllerValidator;
  String? _textFieldClinicNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1lbxhhfc' /* Please enter name */,
      );
    }

    return null;
  }

  // State field(s) for Question widget.
  FocusNode? questionFocusNode;
  TextEditingController? questionController;
  String? Function(BuildContext, String?)? questionControllerValidator;
  String? _questionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xbk0jrve' /* Please enter question */,
      );
    }

    return null;
  }

  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for Measure widget.
  String? measureValue;
  FormFieldController<String>? measureValueController;
  // State field(s) for FromAge widget.
  FocusNode? fromAgeFocusNode;
  TextEditingController? fromAgeController;
  String? Function(BuildContext, String?)? fromAgeControllerValidator;
  String? _fromAgeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'udmz7c6i' /* Please enter from age */,
      );
    }

    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'qnyfmdc6' /* Please enter from age correctl... */,
      );
    }
    return null;
  }

  // State field(s) for ToAge widget.
  FocusNode? toAgeFocusNode;
  TextEditingController? toAgeController;
  String? Function(BuildContext, String?)? toAgeControllerValidator;
  String? _toAgeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'invt508p' /* Please enter to age */,
      );
    }

    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'v4ptsgiw' /* Please enter to age correctly! */,
      );
    }
    return null;
  }

  // State field(s) for Geder widget.
  String? gederValue;
  FormFieldController<String>? gederValueController;
  // State field(s) for Frequency widget.
  String? frequencyValue;
  FormFieldController<String>? frequencyValueController;
  // State field(s) for OtherFrequency widget.
  FocusNode? otherFrequencyFocusNode;
  TextEditingController? otherFrequencyController;
  String? Function(BuildContext, String?)? otherFrequencyControllerValidator;
  // State field(s) for test widget.
  FocusNode? testFocusNode;
  TextEditingController? testController;
  String? Function(BuildContext, String?)? testControllerValidator;
  // State field(s) for Textfield_Zipcode widget.
  FocusNode? textfieldZipcodeFocusNode;
  TextEditingController? textfieldZipcodeController;
  String? Function(BuildContext, String?)? textfieldZipcodeControllerValidator;
  String? _textfieldZipcodeControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd3ln7yp3' /* Please enter to criteria */,
      );
    }

    return null;
  }

  // State field(s) for TextField_city widget.
  FocusNode? textFieldCityFocusNode;
  TextEditingController? textFieldCityController;
  String? Function(BuildContext, String?)? textFieldCityControllerValidator;
  // Stores action output result for [Backend Call - API (CareGaps)] action in Button widget.
  ApiCallResponse? outputcare;
  // Stores action output result for [Backend Call - API (CareGaps)] action in Button widget.
  ApiCallResponse? outputcareUpdate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldClinicNameControllerValidator =
        _textFieldClinicNameControllerValidator;
    questionControllerValidator = _questionControllerValidator;
    fromAgeControllerValidator = _fromAgeControllerValidator;
    toAgeControllerValidator = _toAgeControllerValidator;
    textfieldZipcodeControllerValidator = _textfieldZipcodeControllerValidator;
  }

  void dispose() {
    textFieldClinicNameFocusNode?.dispose();
    textFieldClinicNameController?.dispose();

    questionFocusNode?.dispose();
    questionController?.dispose();

    fromAgeFocusNode?.dispose();
    fromAgeController?.dispose();

    toAgeFocusNode?.dispose();
    toAgeController?.dispose();

    otherFrequencyFocusNode?.dispose();
    otherFrequencyController?.dispose();

    testFocusNode?.dispose();
    testController?.dispose();

    textfieldZipcodeFocusNode?.dispose();
    textfieldZipcodeController?.dispose();

    textFieldCityFocusNode?.dispose();
    textFieldCityController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
