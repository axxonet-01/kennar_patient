import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'issue_tracking_new_form_widget.dart' show IssueTrackingNewFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IssueTrackingNewFormModel
    extends FlutterFlowModel<IssueTrackingNewFormWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for issues_form_header component.
  late IssuesFormHeaderModel issuesFormHeaderModel;
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
    issuesFormHeaderModel.dispose();
    patientNewNavBarModel.dispose();
    issuesFormHeader1Model.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
