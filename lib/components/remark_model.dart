import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'remark_widget.dart' show RemarkWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RemarkModel extends FlutterFlowModel<RemarkWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_clinicName widget.
  FocusNode? textFieldClinicNameFocusNode;
  TextEditingController? textFieldClinicNameController;
  String? Function(BuildContext, String?)?
      textFieldClinicNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldClinicNameFocusNode?.dispose();
    textFieldClinicNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
