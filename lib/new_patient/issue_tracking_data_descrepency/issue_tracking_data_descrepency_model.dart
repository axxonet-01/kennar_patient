import '/backend/api_requests/api_calls.dart';
import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'issue_tracking_data_descrepency_widget.dart'
    show IssueTrackingDataDescrepencyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class IssueTrackingDataDescrepencyModel
    extends FlutterFlowModel<IssueTrackingDataDescrepencyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fle3n535' /* Description is required. */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? outputIssueTrackingwithoutidData;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for issues_form_header component.
  late IssuesFormHeaderModel issuesFormHeaderModel;
  // Model for issues_form_header1 component.
  late IssuesFormHeader1Model issuesFormHeader1Model;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    issuesFormHeaderModel = createModel(context, () => IssuesFormHeaderModel());
    issuesFormHeader1Model =
        createModel(context, () => IssuesFormHeader1Model());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    patientNewNavBarModel.dispose();
    issuesFormHeaderModel.dispose();
    issuesFormHeader1Model.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
