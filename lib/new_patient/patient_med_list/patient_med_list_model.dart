import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_med_list_widget.dart' show PatientMedListWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PatientMedListModel extends FlutterFlowModel<PatientMedListWidget> {
  ///  Local state fields for this page.

  List<String> selectedMedi = [];
  void addToSelectedMedi(String item) => selectedMedi.add(item);
  void removeFromSelectedMedi(String item) => selectedMedi.remove(item);
  void removeAtIndexFromSelectedMedi(int index) => selectedMedi.removeAt(index);
  void insertAtIndexInSelectedMedi(int index, String item) =>
      selectedMedi.insert(index, item);
  void updateSelectedMediAtIndex(int index, Function(String) updateFn) =>
      selectedMedi[index] = updateFn(selectedMedi[index]);

  List<String> unselectMedi = [];
  void addToUnselectMedi(String item) => unselectMedi.add(item);
  void removeFromUnselectMedi(String item) => unselectMedi.remove(item);
  void removeAtIndexFromUnselectMedi(int index) => unselectMedi.removeAt(index);
  void insertAtIndexInUnselectMedi(int index, String item) =>
      unselectMedi.insert(index, item);
  void updateUnselectMediAtIndex(int index, Function(String) updateFn) =>
      unselectMedi[index] = updateFn(unselectMedi[index]);

  ///  State fields for stateful widgets in this page.

  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;
  // State field(s) for kennar widget.
  FocusNode? kennarFocusNode;
  TextEditingController? kennarController;
  String? Function(BuildContext, String?)? kennarControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (managePatients)] action in Button widget.
  ApiCallResponse? apiResultn9tt;
  // Stores action output result for [Backend Call - API (managePatients)] action in Button widget.
  ApiCallResponse? apiResultn9t;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
    kennarFocusNode?.dispose();
    kennarController?.dispose();

    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
