import '/backend/api_requests/api_calls.dart';
import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'issue_tracking_listing_mob_widget.dart'
    show IssueTrackingListingMobWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class IssueTrackingListingMobModel
    extends FlutterFlowModel<IssueTrackingListingMobWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Model for issues_form_header component.
  late IssuesFormHeaderModel issuesFormHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Stores action output result for [Backend Call - API (issuesExport)] action in Icon widget.
  ApiCallResponse? apiResult303resolved;
  // Stores action output result for [Backend Call - API (issuesExport)] action in Icon widget.
  ApiCallResponse? apiResult3322resolvedCopyCopy;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for issues_form_header1 component.
  late IssuesFormHeader1Model issuesFormHeader1Model;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    issuesFormHeaderModel = createModel(context, () => IssuesFormHeaderModel());
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    issuesFormHeader1Model =
        createModel(context, () => IssuesFormHeader1Model());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    instantTimer?.cancel();
    issuesFormHeaderModel.dispose();
    tabBarController?.dispose();
    patientNewNavBarModel.dispose();
    issuesFormHeader1Model.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
