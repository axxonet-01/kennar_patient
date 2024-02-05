import '/backend/api_requests/api_calls.dart';
import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
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
import 'issue_tracking_appointment04_model.dart';
export 'issue_tracking_appointment04_model.dart';

class IssueTrackingAppointment04Widget extends StatefulWidget {
  const IssueTrackingAppointment04Widget({
    super.key,
    this.dis,
  });

  final String? dis;

  @override
  State<IssueTrackingAppointment04Widget> createState() =>
      _IssueTrackingAppointment04WidgetState();
}

class _IssueTrackingAppointment04WidgetState
    extends State<IssueTrackingAppointment04Widget> {
  late IssueTrackingAppointment04Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssueTrackingAppointment04Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().requestStatus = false;
      });
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 110.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().requestStatus)
                        Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.vertical,
                          runAlignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Icon(
                              Icons.auto_awesome,
                              color: Color(0xFF8A61FF),
                              size: 100.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'jciio138' /* Request Sent! */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 25.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      if (FFAppState().requestStatus == false)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '6v45gdn7' /* Appointment */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 25.0,
                                ),
                          ),
                        ),
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          width: 350.0,
                          height: 350.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '2sdjmnmf' /* Facility : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFCECECE),
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 230.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        FFAppState().facility,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'gmacy8ux' /* Patient : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFCECECE),
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 230.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        FFAppState().patient,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'o1pvss1u' /* Provider : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFCECECE),
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 230.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        FFAppState().defaultRoleId == '5'
                                            ? FFAppState().isssueProvider
                                            : '${getJsonField(
                                                FFAppState().universalLoginData,
                                                r'''$..firstName''',
                                              ).toString()} ${getJsonField(
                                                FFAppState().universalLoginData,
                                                r'''$..lastName''',
                                              ).toString()}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'l2n4vvt5' /* Date : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFCECECE),
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 230.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        '${dateTimeFormat(
                                          'yMMMd',
                                          FFAppState().appDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )} (${dateTimeFormat(
                                          'EEEE',
                                          FFAppState().appDate,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )})',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().requestStatus == false)
                                Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.center,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() {
                                            FFAppState().requestStatus = true;
                                          });
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'g0p239yv' /* Request Appointment */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 400.0,
                                          height: 40.0,
                                          padding: EdgeInsets.all(0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              'issue_tracking_appointment_03');
                                        },
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '2myisj27' /* Go Back and Edit */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFF8A61FF),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              if (FFAppState().requestStatus)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            var _shouldSetState = false;
                                            if (FFAppState().defaultRoleId ==
                                                '5') {
                                              _model.patient =
                                                  await IssuesTrackingCall.call(
                                                refreshToken: FFAppState()
                                                    .sessionRefreshToken,
                                                formStep: 'issueTrackingInsert',
                                                category: '1',
                                                role: () {
                                                  if (FFAppState()
                                                          .defaultRoleId ==
                                                      '5') {
                                                    return 'Patient';
                                                  } else if (FFAppState()
                                                          .defaultRoleId ==
                                                      '4') {
                                                    return 'Provider';
                                                  } else {
                                                    return 'Staff';
                                                  }
                                                }(),
                                                facilityId:
                                                    FFAppState().issueFacility,
                                                userId:
                                                    FFAppState().issuePatient,
                                                status: 'Open',
                                                id: getJsonField(
                                                  functions.getDataJson(
                                                      functions.trim(
                                                          FFAppState()
                                                              .isssueProvider),
                                                      FFAppState().getUserData),
                                                  r'''$..user_id''',
                                                ).toString(),
                                                date: dateTimeFormat(
                                                  'yMMMd',
                                                  FFAppState().appDate,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                appType: FFAppState().appType,
                                                issueDescription: functions
                                                    .jsonString(widget.dis!),
                                                issueImage:
                                                    FFAppState().uploadimgname,
                                              );
                                              _shouldSetState = true;
                                              if ((_model.patient?.succeeded ??
                                                  true)) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        content: Text(
                                                            'Your query has been received. We\'ll contact you soon. Thank you!'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );

                                                context.pushNamed(
                                                    'Patient_Dashboard');
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: Text('Oops'),
                                                        content: Text(
                                                            'Something went wrong. Please try again or contact support administrator.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
                                            }
                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '4ul7ap3f' /* Continue to Homepage */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 400.0,
                                            height: 40.0,
                                            padding: EdgeInsets.all(0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              'issue_tracking_appointment_01');
                                        },
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'i4nkqygc' /* Not sure? Modify appointment */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFF8A61FF),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
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
            if (FFAppState().defaultRoleId == '5')
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
            if (FFAppState().defaultRoleId == '5')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.issuesFormHeaderModel,
                  updateCallback: () => setState(() {}),
                  child: IssuesFormHeaderWidget(
                    currentPage: '04',
                  ),
                ),
              ),
            if (FFAppState().defaultRoleId != '5')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.issuesFormHeader1Model,
                  updateCallback: () => setState(() {}),
                  child: IssuesFormHeader1Widget(
                    currentPage: 'newform_page',
                  ),
                ),
              ),
            if (FFAppState().defaultRoleId == '5')
              wrapWithModel(
                model: _model.patientHeaderModel,
                updateCallback: () => setState(() {}),
                child: PatientHeaderWidget(
                  visibility: false,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
