import '/backend/api_requests/api_calls.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'patient_encounter_details_widget.dart'
    show PatientEncounterDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PatientEncounterDetailsModel
    extends FlutterFlowModel<PatientEncounterDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for patient_new_navBar component.
  late PatientNewNavBarModel patientNewNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    patientNewNavBarModel = createModel(context, () => PatientNewNavBarModel());
  }

  void dispose() {
    patientNewNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
