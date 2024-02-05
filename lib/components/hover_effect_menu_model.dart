import '/backend/api_requests/api_calls.dart';
import '/components/issue_tracking_eamil/issue_tracking_eamil_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'hover_effect_menu_widget.dart' show HoverEffectMenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HoverEffectMenuModel extends FlutterFlowModel<HoverEffectMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? apiResult3uholdInProgressmob;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? apiResult3uholdMob;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? apiResult3rejectMob;
  // Stores action output result for [Backend Call - API (issuesTracking)] action in Button widget.
  ApiCallResponse? apiResult3resolvedMob01;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
