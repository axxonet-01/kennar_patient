import '/backend/api_requests/api_calls.dart';
import '/components/custom_pop_up_widget.dart';
import '/components/empty_data_container1_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/components/reason_check_box/reason_check_box_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_link_email_widget.dart' show PatientLinkEmailWidget;
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

class PatientLinkEmailModel extends FlutterFlowModel<PatientLinkEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode1;
  TextEditingController? textFieldEmailController1;
  String? Function(BuildContext, String?)? textFieldEmailController1Validator;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResult8jlnew01;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for web widget.
  FocusNode? webFocusNode1;
  TextEditingController? webController1;
  String? Function(BuildContext, String?)? webController1Validator;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResultne11;
  // State field(s) for Count widget.
  String? countValue1;
  FormFieldController<String>? countValueController1;
  // State field(s) for TextField_02 widget.
  FocusNode? textField02FocusNode1;
  TextEditingController? textField02Controller1;
  String? Function(BuildContext, String?)? textField02Controller1Validator;
  // Model for reasonCheckBox component.
  late ReasonCheckBoxModel reasonCheckBoxModel1;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new67Copy2;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh56A7;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new67;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new0967;
  // Model for reasonCheckBox component.
  late ReasonCheckBoxModel reasonCheckBoxModel3;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new67Copy;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh12345;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new67CopyCopy;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh12345Copy;
  // State field(s) for web1 widget.
  FocusNode? web1FocusNode1;
  TextEditingController? web1Controller1;
  String? Function(BuildContext, String?)? web1Controller1Validator;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new6712;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh56A71;
  // State field(s) for Count widget.
  String? countValue2;
  FormFieldController<String>? countValueController2;
  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode2;
  TextEditingController? textFieldEmailController2;
  String? Function(BuildContext, String?)? textFieldEmailController2Validator;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResult8jlnew01Email;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for web widget.
  FocusNode? webFocusNode2;
  TextEditingController? webController2;
  String? Function(BuildContext, String?)? webController2Validator;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? delink;
  // State field(s) for TextField_02 widget.
  FocusNode? textField02FocusNode2;
  TextEditingController? textField02Controller2;
  String? Function(BuildContext, String?)? textField02Controller2Validator;
  // Model for reasonCheckBox component.
  late ReasonCheckBoxModel reasonCheckBoxModel6;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new6722;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh56A7123;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new6767;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new0967da;
  // Model for reasonCheckBox component.
  late ReasonCheckBoxModel reasonCheckBoxModel8;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new67C1;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh12345675;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh567new67ccc;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? apiResulttgh123456;
  // State field(s) for web1 widget.
  FocusNode? web1FocusNode2;
  TextEditingController? web1Controller2;
  String? Function(BuildContext, String?)? web1Controller2Validator;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? reject;
  // Stores action output result for [Backend Call - API (patientLinking)] action in Button widget.
  ApiCallResponse? accept;
  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    reasonCheckBoxModel1 = createModel(context, () => ReasonCheckBoxModel());
    reasonCheckBoxModel3 = createModel(context, () => ReasonCheckBoxModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    reasonCheckBoxModel6 = createModel(context, () => ReasonCheckBoxModel());
    reasonCheckBoxModel8 = createModel(context, () => ReasonCheckBoxModel());
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    textFieldEmailFocusNode1?.dispose();
    textFieldEmailController1?.dispose();

    tabBarController1?.dispose();
    webFocusNode1?.dispose();
    webController1?.dispose();

    textField02FocusNode1?.dispose();
    textField02Controller1?.dispose();

    reasonCheckBoxModel1.dispose();
    reasonCheckBoxModel3.dispose();
    web1FocusNode1?.dispose();
    web1Controller1?.dispose();

    textFieldEmailFocusNode2?.dispose();
    textFieldEmailController2?.dispose();

    tabBarController2?.dispose();
    webFocusNode2?.dispose();
    webController2?.dispose();

    textField02FocusNode2?.dispose();
    textField02Controller2?.dispose();

    reasonCheckBoxModel6.dispose();
    reasonCheckBoxModel8.dispose();
    web1FocusNode2?.dispose();
    web1Controller2?.dispose();

    patientNewNavBarModel.dispose();
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
