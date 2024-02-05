import '/backend/api_requests/api_calls.dart';
import '/components/msg_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'providerselect_widget.dart' show ProviderselectWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProviderselectModel extends FlutterFlowModel<ProviderselectWidget> {
  ///  Local state fields for this component.

  List<String> selectedprovide = [];
  void addToSelectedprovide(String item) => selectedprovide.add(item);
  void removeFromSelectedprovide(String item) => selectedprovide.remove(item);
  void removeAtIndexFromSelectedprovide(int index) =>
      selectedprovide.removeAt(index);
  void insertAtIndexInSelectedprovide(int index, String item) =>
      selectedprovide.insert(index, item);
  void updateSelectedprovideAtIndex(int index, Function(String) updateFn) =>
      selectedprovide[index] = updateFn(selectedprovide[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for groupname widget.
  FocusNode? groupnameFocusNode;
  TextEditingController? groupnameController;
  String? Function(BuildContext, String?)? groupnameControllerValidator;
  String? _groupnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sip3b2hy' /* Group name is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (NkennarChat)] action in Button widget.
  ApiCallResponse? apiResultvb4Copy1;
  // Stores action output result for [Backend Call - API (NkennarChat)] action in Button widget.
  ApiCallResponse? providerpatient;
  // Stores action output result for [Backend Call - API (NkennarChat)] action in Button widget.
  ApiCallResponse? providerpatientCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    groupnameControllerValidator = _groupnameControllerValidator;
  }

  void dispose() {
    groupnameFocusNode?.dispose();
    groupnameController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
