import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/components/patient_search_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'patient_all_medication_model.dart';
export 'patient_all_medication_model.dart';

class PatientAllMedicationWidget extends StatefulWidget {
  const PatientAllMedicationWidget({
    super.key,
    this.pageName,
    this.email,
  });

  final String? pageName;
  final String? email;

  @override
  State<PatientAllMedicationWidget> createState() =>
      _PatientAllMedicationWidgetState();
}

class _PatientAllMedicationWidgetState
    extends State<PatientAllMedicationWidget> {
  late PatientAllMedicationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientAllMedicationModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().colourChanges = '';
        FFAppState().user = '';
        FFAppState().uploadimgname = '';
      });
      setState(() {
        FFAppState().visits = 'All';
      });
      setState(() {
        FFAppState().visibleDisplay = '0';
      });
      _model.diabetes = await PatientProfileCall.call(
        refreshToken: FFAppState().sessionRefreshToken,
        email: FFAppState().emailView,
        type: '3',
        formstep: 'diabetes',
      );
      if (widget.email != null && widget.email != '') {
        if (FFAppState().emailView == null || FFAppState().emailView == '') {
          setState(() {
            FFAppState().emailView = widget.email!;
          });
        }
      } else {
        setState(() {
          FFAppState().emailView = '';
        });
      }

      _model.apiResultbbhproviderData = await IssuesTrackingCall.call(
        refreshToken: FFAppState().sessionRefreshToken,
        defaultRoleId: FFAppState().defaultRoleId,
        formStep: 'getUserId',
        facilityId: getJsonField(
          functions.getDataJson(functions.trim(FFAppState().issueFacility),
              FFAppState().issueFacilityData),
          r'''$..facility_id''',
        ).toString().toString(),
      );
      if ((_model.apiResultbbhproviderData?.succeeded ?? true)) {
        setState(() {
          FFAppState().getUserData =
              (_model.apiResultbbhproviderData?.jsonBody ?? '');
        });
        if (getJsonField(
              (_model.apiResultbbhproviderData?.jsonBody ?? ''),
              r'''$..noDataFound''',
            ) !=
            null) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  content: Text('No ${getJsonField(
                    (_model.apiResultbbhproviderData?.jsonBody ?? ''),
                    r'''$..role''',
                  ).toString().toString()} is available currently. Please try after some time.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                ),
              );
            },
          );
          return;
        } else {
          if (getJsonField(
                (_model.apiResultbbhproviderData?.jsonBody ?? ''),
                r'''$..facilityname''',
              ) ==
              'No facility has been mapped yet!') {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return WebViewAware(
                  child: AlertDialog(
                    content: Text('No facility has been mapped yet!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Ok'),
                      ),
                    ],
                  ),
                );
              },
            );
            return;
          }
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                content:
                    Text('Oops something went wrong please contact support.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              ),
            );
          },
        );
      }

      _model.apiResultaui = await KnNetworkCall.call(
        refreshToken: FFAppState().sessionRefreshToken,
        formstep: 'getpatientdetailsbyuser',
      );
      if ((_model.apiResultaui?.succeeded ?? true)) {
        await showDialog(
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: WebViewAware(
                child: Container(
                  height: 100.0,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  child: PatientSearchCardWidget(
                    name: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..name''',
                    ).toString().toString(),
                    data: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..data''',
                      true,
                    ),
                    dob: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..dob''',
                    ).toString().toString(),
                    gender: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..gender''',
                    ).toString().toString(),
                  ),
                ),
              ),
            );
          },
        ).then((value) => setState(() {}));
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Builder(
      builder: (context) => Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.patientNewNavBarModel,
                  updateCallback: () => setState(() {}),
                  child: PatientNewNavBarWidget(
                    visibility: false,
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.patientHeaderModel,
                updateCallback: () => setState(() {}),
                child: PatientHeaderWidget(
                  visibility: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 70.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 10.0, 0.0, 15.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.95,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context
                                              .pushNamed('Patient_Dashboard');
                                        },
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '052vz137' /* Dashboard */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'r3tthznn' /* Medication */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: ManagePatientsCall.call(
                                                  refreshToken: FFAppState()
                                                      .sessionRefreshToken,
                                                  formstep: 'teamEvents',
                                                  step: FFAppState().visits,
                                                  id: getJsonField(
                                                    FFAppState()
                                                        .universalLoginData,
                                                    r'''$..id''',
                                                  ).toString(),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            Color(0x00FFFFFF),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final columnManagePatientsResponse =
                                                      snapshot.data!;
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Container(
                                                          width: 370.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'o6o4a2k6' /* Medication */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      if (ManagePatientsCall
                                                                  .medication(
                                                            columnManagePatientsResponse
                                                                .jsonBody,
                                                          )!
                                                              .length >
                                                          0)
                                                        Builder(
                                                          builder: (context) {
                                                            final medicationlist =
                                                                ManagePatientsCall
                                                                        .medication(
                                                                      columnManagePatientsResponse
                                                                          .jsonBody,
                                                                    )?.toList() ??
                                                                    [];
                                                            return Wrap(
                                                              spacing: 0.0,
                                                              runSpacing: 0.0,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .down,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: List.generate(
                                                                  medicationlist
                                                                      .length,
                                                                  (medicationlistIndex) {
                                                                final medicationlistItem =
                                                                    medicationlist[
                                                                        medicationlistIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          10.0,
                                                                          5.0,
                                                                          10.0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        15.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          230.0,
                                                                      height:
                                                                          130.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFCBB8FF),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 250.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    SelectionArea(
                                                                                        child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'v51w49sa' /* Medication */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: Color(0xFF8A61FF),
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                    )),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: SelectionArea(
                                                                                          child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '0hom2zlz' /* Date */,
                                                                                        ),
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Inter',
                                                                                              color: Color(0xFF8A61FF),
                                                                                              fontSize: 12.0,
                                                                                            ),
                                                                                      )),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                6.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 140.0,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Wrap(
                                                                                          spacing: 0.0,
                                                                                          runSpacing: 0.0,
                                                                                          alignment: WrapAlignment.start,
                                                                                          crossAxisAlignment: WrapCrossAlignment.start,
                                                                                          direction: Axis.horizontal,
                                                                                          runAlignment: WrapAlignment.start,
                                                                                          verticalDirection: VerticalDirection.down,
                                                                                          clipBehavior: Clip.none,
                                                                                          children: [
                                                                                            SelectionArea(
                                                                                                child: Text(
                                                                                              getJsonField(
                                                                                                medicationlistItem,
                                                                                                r'''$..medic''',
                                                                                              ).toString(),
                                                                                              textAlign: TextAlign.start,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    color: Color(0xFF57636C),
                                                                                                    fontSize: 13.0,
                                                                                                  ),
                                                                                            )),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: SelectionArea(
                                                                                          child: Text(
                                                                                        getJsonField(
                                                                                          medicationlistItem,
                                                                                          r'''$..date''',
                                                                                        ).toString(),
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Inter',
                                                                                              color: Color(0xFF57636C),
                                                                                              fontSize: 13.0,
                                                                                            ),
                                                                                      )),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                            );
                                                          },
                                                        ),
                                                      if (ManagePatientsCall
                                                              .medication(
                                                            columnManagePatientsResponse
                                                                .jsonBody,
                                                          )?.length ==
                                                          0)
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '2c3cndsk' /* No medication details availabl... */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
