import '/backend/api_requests/api_calls.dart';
import '/components/custom_pop_up_widget.dart';
import '/components/kennar_connect1/kennar_connect1_widget.dart';
import '/components/msg_container_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/providerselect_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'provider_all_chatsnew_widget.dart' show ProviderAllChatsnewWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProviderAllChatsnewModel
    extends FlutterFlowModel<ProviderAllChatsnewWidget> {
  ///  Local state fields for this page.

  bool toggleChat = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (patientProfile)] action in Button widget.
  ApiCallResponse? apiResult3dooCopy;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for search_All_active widget.
  FocusNode? searchAllActiveFocusNode;
  TextEditingController? searchAllActiveController;
  String? Function(BuildContext, String?)? searchAllActiveControllerValidator;
  // State field(s) for search_All_achive widget.
  FocusNode? searchAllAchiveFocusNode;
  TextEditingController? searchAllAchiveController;
  String? Function(BuildContext, String?)? searchAllAchiveControllerValidator;
  // State field(s) for search_All_inactive widget.
  FocusNode? searchAllInactiveFocusNode;
  TextEditingController? searchAllInactiveController;
  String? Function(BuildContext, String?)? searchAllInactiveControllerValidator;
  // Stores action output result for [Backend Call - API (NkennarChat)] action in Text widget.
  ApiCallResponse? unarchive4Copy;
  // Stores action output result for [Backend Call - API (NkennarChat)] action in Text widget.
  ApiCallResponse? archive124Copy;
  // Model for patientHeader component.
  late PatientHeaderModel patientHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientHeaderModel = createModel(context, () => PatientHeaderModel());
  }

  void dispose() {
    tabBarController?.dispose();
    searchAllActiveFocusNode?.dispose();
    searchAllActiveController?.dispose();

    searchAllAchiveFocusNode?.dispose();
    searchAllAchiveController?.dispose();

    searchAllInactiveFocusNode?.dispose();
    searchAllInactiveController?.dispose();

    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
