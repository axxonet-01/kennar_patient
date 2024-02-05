import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'insurance_all_facilities_widget.dart' show InsuranceAllFacilitiesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InsuranceAllFacilitiesModel
    extends FlutterFlowModel<InsuranceAllFacilitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;
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

  // State field(s) for network widget.
  FocusNode? networkFocusNode;
  TextEditingController? networkController;
  String? Function(BuildContext, String?)? networkControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    patientHeaderModel.dispose();
    patientNewNavBarModel.dispose();
    kennarFocusNode?.dispose();
    kennarController?.dispose();

    tabBarController?.dispose();
    networkFocusNode?.dispose();
    networkController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
