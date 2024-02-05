import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'issue_tracking_appointment03_widget.dart'
    show IssueTrackingAppointment03Widget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class IssueTrackingAppointment03Model
    extends FlutterFlowModel<IssueTrackingAppointment03Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for TextField_description widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionControllerValidator;
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
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    issuesFormHeaderModel = createModel(context, () => IssuesFormHeaderModel());
    issuesFormHeader1Model =
        createModel(context, () => IssuesFormHeader1Model());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionController?.dispose();

    patientNewNavBarModel.dispose();
    issuesFormHeaderModel.dispose();
    issuesFormHeader1Model.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
