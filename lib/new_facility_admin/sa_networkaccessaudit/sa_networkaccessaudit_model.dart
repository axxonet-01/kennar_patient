import '/backend/api_requests/api_calls.dart';
import '/components/msg_container_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'sa_networkaccessaudit_widget.dart' show SaNetworkaccessauditWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SaNetworkaccessauditModel
    extends FlutterFlowModel<SaNetworkaccessauditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for web widget.
  FocusNode? webFocusNode;
  TextEditingController? webController;
  String? Function(BuildContext, String?)? webControllerValidator;
  // Stores action output result for [Backend Call - API (Chat)] action in Button widget.
  ApiCallResponse? ststus;
  // State field(s) for Count widget.
  String? countValue;
  FormFieldController<String>? countValueController;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
  }

  void dispose() {
    webFocusNode?.dispose();
    webController?.dispose();

    patientHeaderModel.dispose();
    patientNewNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
