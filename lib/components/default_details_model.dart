import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'default_details_widget.dart' show DefaultDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DefaultDetailsModel extends FlutterFlowModel<DefaultDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for sub_category widget.
  String? subCategoryValue;
  FormFieldController<String>? subCategoryValueController;
  // State field(s) for label widget.
  FocusNode? labelFocusNode;
  TextEditingController? labelController;
  String? Function(BuildContext, String?)? labelControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  // Stores action output result for [Backend Call - API (superAdminDefaultDetails)] action in Button widget.
  ApiCallResponse? apiResultr1f;
  // Stores action output result for [Backend Call - API (superAdminDefaultDetails)] action in Button widget.
  ApiCallResponse? apiResultr1f2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    labelFocusNode?.dispose();
    labelController?.dispose();

    ageFocusNode?.dispose();
    ageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
