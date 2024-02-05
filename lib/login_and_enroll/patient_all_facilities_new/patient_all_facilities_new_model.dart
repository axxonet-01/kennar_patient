import '/backend/api_requests/api_calls.dart';
import '/components/empty_data_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'patient_all_facilities_new_widget.dart'
    show PatientAllFacilitiesNewWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PatientAllFacilitiesNewModel
    extends FlutterFlowModel<PatientAllFacilitiesNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for web widget.
  FocusNode? webFocusNode;
  TextEditingController? webController;
  String? Function(BuildContext, String?)? webControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    webFocusNode?.dispose();
    webController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
