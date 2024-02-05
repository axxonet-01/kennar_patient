import '/backend/api_requests/api_calls.dart';
import '/components/empty_data_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'provider_listing_facility_widget.dart'
    show ProviderListingFacilityWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProviderListingFacilityModel
    extends FlutterFlowModel<ProviderListingFacilityWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (patientProfile)] action in Text widget.
  ApiCallResponse? apiResult60m;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
