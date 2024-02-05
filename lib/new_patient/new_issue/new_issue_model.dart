import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_issue_widget.dart' show NewIssueWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NewIssueModel extends FlutterFlowModel<NewIssueWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for DropDown_category widget.
  String? dropDownCategoryValue;
  FormFieldController<String>? dropDownCategoryValueController;
  // State field(s) for DropDown_patient widget.
  String? dropDownPatientValue;
  FormFieldController<String>? dropDownPatientValueController;
  // State field(s) for DropDown_facility widget.
  String? dropDownFacilityValue;
  FormFieldController<String>? dropDownFacilityValueController;
  // State field(s) for DropDown_user widget.
  String? dropDownUserValue;
  FormFieldController<String>? dropDownUserValueController;
  // State field(s) for DropDown_fa widget.
  String? dropDownFaValue;
  FormFieldController<String>? dropDownFaValueController;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Text widget.
  ApiCallResponse? getpatient;
  // State field(s) for DropDown_pa widget.
  String? dropDownPaValue;
  FormFieldController<String>? dropDownPaValueController;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField_description widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionControllerValidator;
  String? _textFieldDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ubal8f7q' /* Please enter description. */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? outputIssueTrackingwithoutid;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? issueTrackingprovider;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? issueTrackingPatient;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldDescriptionControllerValidator =
        _textFieldDescriptionControllerValidator;
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionController?.dispose();

    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
