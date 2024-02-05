import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'patient_new_menu_bar_model.dart';
export 'patient_new_menu_bar_model.dart';

class PatientNewMenuBarWidget extends StatefulWidget {
  const PatientNewMenuBarWidget({super.key});

  @override
  State<PatientNewMenuBarWidget> createState() =>
      _PatientNewMenuBarWidgetState();
}

class _PatientNewMenuBarWidgetState extends State<PatientNewMenuBarWidget> {
  late PatientNewMenuBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientNewMenuBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
      child: Container(
        width: 195.0,
        height: 320.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0xFF6C6C6C),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'QD';
                });

                context.pushNamed(
                  'PatientCareAnswerList',
                  queryParameters: {
                    'patientId': serializeParam(
                      getJsonField(
                        FFAppState().universalLoginData,
                        r'''$..id''',
                      ).toString(),
                      ParamType.String,
                    ),
                    'patientName': serializeParam(
                      getJsonField(
                        FFAppState().universalLoginData,
                        r'''$..firstName''',
                      ).toString(),
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              },
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'QD'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.tire_repair,
                          color: FFAppState().facilityAdminDashboard == 'QA'
                              ? Color(0xFF5A2BA8)
                              : Color(0xFF8C8C8C),
                          size: 18.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '9nyc8we7' /* Care Gaps */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'QD'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'HIE';
                });
                FFAppState().update(() {
                  FFAppState().colourChanges = '';
                });

                context.pushNamed('providerPatientHIE');
              },
              child: Container(
                height: 35.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'HIE'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.format_line_spacing,
                          color: FFAppState().facilityAdminDashboard == 'HIE'
                              ? Color(0xFF5A2BA8)
                              : Color(0xFF8C8C8C),
                          size: 18.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'vuapkgbb' /* HIE Consent */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'HIE'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'HC';
                });

                context.pushNamed('patient_Selected_facilities');
              },
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'HC'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 8.0, 0.0),
                      child: Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.reorder,
                          color: FFAppState().facilityAdminDashboard == 'HC'
                              ? Color(0xFF5A2BA8)
                              : Color(0xFF8C8C8C),
                          size: 18.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'tviy9i2h' /* Health Care Facilities */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'HC'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'IN';
                });

                context.pushNamed('insurance_All_facilities');
              },
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'IN'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 8.0, 0.0),
                      child: Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.credit_card,
                          color: FFAppState().facilityAdminDashboard == 'IN'
                              ? Color(0xFF5A2BA8)
                              : Color(0xFF8C8C8C),
                          size: 18.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'wywjyx0w' /* Insurance */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'IN'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'MED';
                });

                context.pushNamed('patientMedList');
              },
              child: Container(
                height: 35.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'MED'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 12.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: FaIcon(
                          FontAwesomeIcons.syringe,
                          color: FFAppState().facilityAdminDashboard == 'MED'
                              ? Color(0xFF5A2BA8)
                              : Color(0xFF8C8C8C),
                          size: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'ms5largb' /* Medication */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'MED'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'NF';
                });

                context.pushNamed(
                  'sa_networkaccessaudit',
                  queryParameters: {
                    'requestType': serializeParam(
                      'self',
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              },
              child: Container(
                height: 35.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'NF'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 12.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: FaIcon(
                          FontAwesomeIcons.patreon,
                          color: FFAppState().facilityAdminDashboard == 'NF'
                              ? Color(0xFF5A2BA8)
                              : Color(0xFF8C8C8C),
                          size: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '4kusfyc5' /* Network Search */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'NF'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().facilityAdminDashboard = 'PL';
                });
                FFAppState().update(() {
                  FFAppState().colourChanges = '';
                });

                context.pushNamed('patient_link_email');
              },
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: FFAppState().facilityAdminDashboard == 'PL'
                      ? Color(0xFFCBB8FF)
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.link,
                            color: FFAppState().facilityAdminDashboard == 'PL'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            size: 14.0,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'lg94up1i' /* Patient Linking */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FFAppState().facilityAdminDashboard == 'PL'
                                ? Color(0xFF5A2BA8)
                                : Color(0xFF8C8C8C),
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40.0,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 10.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.logout_sharp,
                          color: Color(0xFFEF476F),
                          size: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().sessionRefreshToken != null &&
                            FFAppState().sessionRefreshToken != '') {
                          _model.apiCallLogout011 = await NLogoutCall.call(
                            refreshToken: FFAppState().sessionRefreshToken,
                          );
                          if ((_model.apiCallLogout011?.succeeded ?? true)) {
                            await actions.clearLocalStateValue();
                            FFAppState().update(() {
                              FFAppState().sessionRefreshToken = '';
                            });
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Error Logging out'),
                                    content: Text('Logout Error  - Try again'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }

                          context.pushNamed('Login');
                        }

                        setState(() {});
                      },
                      child: Text(
                        functions
                            .loginLogoutBottonText(FFAppState().sessionToken),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).error,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              getJsonField(
                FFAppState().universalLoginData,
                r'''$..email''',
              ).toString().maybeHandleOverflow(maxChars: 25),
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'Inter',
                    color: Color(0xFF8C8C8C),
                    fontSize: 10.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
