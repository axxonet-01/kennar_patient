import '/backend/api_requests/api_calls.dart';
import '/components/multiple_phone/multiple_phone_widget.dart';
import '/components/termandpolice/termandpolice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for Textfield_email widget.
  FocusNode? textfieldEmailFocusNode;
  TextEditingController? textfieldEmailController;
  String? Function(BuildContext, String?)? textfieldEmailControllerValidator;
  // Stores action output result for [Backend Call - API (sendOTP)] action in Button_Admin widget.
  ApiCallResponse? sendOTP;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    textfieldEmailFocusNode?.dispose();
    textfieldEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
