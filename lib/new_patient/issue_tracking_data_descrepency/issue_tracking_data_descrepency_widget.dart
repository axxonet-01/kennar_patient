import '/backend/api_requests/api_calls.dart';
import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'issue_tracking_data_descrepency_model.dart';
export 'issue_tracking_data_descrepency_model.dart';

class IssueTrackingDataDescrepencyWidget extends StatefulWidget {
  const IssueTrackingDataDescrepencyWidget({
    super.key,
    this.pageName,
    this.email,
  });

  final String? pageName;
  final String? email;

  @override
  State<IssueTrackingDataDescrepencyWidget> createState() =>
      _IssueTrackingDataDescrepencyWidgetState();
}

class _IssueTrackingDataDescrepencyWidgetState
    extends State<IssueTrackingDataDescrepencyWidget> {
  late IssueTrackingDataDescrepencyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssueTrackingDataDescrepencyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().uploadimgname = '';
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().consent == 'data')
                        Text(
                          FFLocalizations.of(context).getText(
                            '3x4xhbol' /* Data Discrepancy */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 25.0,
                                  ),
                        ),
                      if (FFAppState().consent == 'consent')
                        Text(
                          FFLocalizations.of(context).getText(
                            '4ftidyql' /* Data Consent */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 25.0,
                                  ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fav4hgrw' /* Your information is secure. Yo... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.always,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'rsokjz95' /* How can we help you? */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'egy3gukp' /* Write here... */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6B6B6B),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      maxLines: 3,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: custom_widgets.LogoPickerWidget(
                                        width: 300.0,
                                        height: 300.0,
                                        file: 'dummy',
                                        galleryText: 'Gallery',
                                        cameraText: 'Camera',
                                        clearText: 'Clear',
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        buttonBackground: Color(0xFF9F9F9F),
                                        saveText: 'Save',
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            _model.outputIssueTrackingwithoutidData =
                                await IssuesTrackingCall.call(
                              refreshToken: FFAppState().sessionRefreshToken,
                              formStep: 'issueTrackingInsert',
                              category:
                                  FFAppState().consent == 'data' ? '3' : '2',
                              issueDescription: functions
                                  .jsonString(_model.textController.text),
                              issueImage: FFAppState().uploadimgname,
                              role: () {
                                if (FFAppState().defaultRoleId == '5') {
                                  return 'Patient';
                                } else if (FFAppState().defaultRoleId == '4') {
                                  return 'Provider';
                                } else {
                                  return 'Staff';
                                }
                              }(),
                              status: 'Open',
                            );
                            _shouldSetState = true;
                            if ((_model.outputIssueTrackingwithoutidData
                                    ?.succeeded ??
                                true)) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      content: Text(
                                          'Your query has been received. We\'ll contact you soon. Thank you!'),
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

                              context.pushNamed('issueList');
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Oops'),
                                      content: Text(
                                          'Something went wrong. Please try again or contact support administrator.'),
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
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'djwmwh9i' /* Continue to dashboard */,
                          ),
                          options: FFButtonOptions(
                            width: 400.0,
                            height: 40.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 65.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.issuesFormHeaderModel,
                  updateCallback: () => setState(() {}),
                  child: IssuesFormHeaderWidget(
                    currentPage: '01',
                  ),
                ),
              ),
            if (FFAppState().defaultRoleId != '5')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
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
