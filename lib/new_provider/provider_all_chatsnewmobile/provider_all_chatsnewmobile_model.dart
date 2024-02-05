import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/providerselect_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'provider_all_chatsnewmobile_widget.dart'
    show ProviderAllChatsnewmobileWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProviderAllChatsnewmobileModel
    extends FlutterFlowModel<ProviderAllChatsnewmobileWidget> {
  ///  Local state fields for this page.

  bool toggleChat = true;

  ///  State fields for stateful widgets in this page.

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
    patientHeaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
