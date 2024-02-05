import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_all_facilities_widget.dart' show PatientAllFacilitiesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientAllFacilitiesModel
    extends FlutterFlowModel<PatientAllFacilitiesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // State field(s) for kennar widget.
  FocusNode? kennarFocusNode;
  TextEditingController? kennarController;
  String? Function(BuildContext, String?)? kennarControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (knPatientDetails)] action in Button widget.
  ApiCallResponse? patientStatusYesnetwork;
  // State field(s) for network widget.
  FocusNode? networkFocusNode;
  TextEditingController? networkController;
  String? Function(BuildContext, String?)? networkControllerValidator;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
    kennarFocusNode?.dispose();
    kennarController?.dispose();

    tabBarController?.dispose();
    networkFocusNode?.dispose();
    networkController?.dispose();

    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
