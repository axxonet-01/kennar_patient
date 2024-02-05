import '/backend/api_requests/api_calls.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'insurancelist_widget.dart' show InsurancelistWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InsurancelistModel extends FlutterFlowModel<InsurancelistWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Button widget.
  ApiCallResponse? patientDetailsNo;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
