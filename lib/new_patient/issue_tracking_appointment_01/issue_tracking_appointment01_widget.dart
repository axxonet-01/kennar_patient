import '/backend/api_requests/api_calls.dart';
import '/components/issues_form_header1_widget.dart';
import '/components/issues_form_header_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'issue_tracking_appointment01_model.dart';
export 'issue_tracking_appointment01_model.dart';

class IssueTrackingAppointment01Widget extends StatefulWidget {
  const IssueTrackingAppointment01Widget({super.key});

  @override
  State<IssueTrackingAppointment01Widget> createState() =>
      _IssueTrackingAppointment01WidgetState();
}

class _IssueTrackingAppointment01WidgetState
    extends State<IssueTrackingAppointment01Widget> {
  late IssueTrackingAppointment01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssueTrackingAppointment01Model());

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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 115.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'dxdm64tb' /* Appointment */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 25.0,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'dg5un6d5' /* Request appointment */,
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
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 500.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (FFAppState().defaultRoleId == '5')
                                  Form(
                                    key: _model.formKey1,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: IssuesTrackingListCall.call(
                                        refreshToken:
                                            FFAppState().sessionRefreshToken,
                                        formStep: 'patient_link_list',
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20.0,
                                              height: 20.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final columnIssuesTrackingListResponse =
                                            snapshot.data!;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 400.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'beq6wqu6' /* Patient */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 0.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownPatientValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownPatientValue ??=
                                                                    '',
                                                              ),
                                                              options: List<
                                                                  String>.from(IssuesTrackingListCall
                                                                              .data(
                                                                        columnIssuesTrackingListResponse
                                                                            .jsonBody,
                                                                      )
                                                                          ?.length ==
                                                                      0
                                                                  ? IssuesTrackingListCall
                                                                          .data(
                                                                      columnIssuesTrackingListResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) => e
                                                                          .toString())
                                                                      .toList()
                                                                  : IssuesTrackingListCall
                                                                          .ids(
                                                                      columnIssuesTrackingListResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) =>
                                                                          e.toString())
                                                                      .toList()),
                                                              optionLabels: IssuesTrackingListCall
                                                                              .data(
                                                                        columnIssuesTrackingListResponse
                                                                            .jsonBody,
                                                                      )
                                                                          ?.length ==
                                                                      0
                                                                  ? IssuesTrackingListCall
                                                                          .data(
                                                                      columnIssuesTrackingListResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) => e
                                                                          .toString())
                                                                      .toList()
                                                                  : IssuesTrackingListCall
                                                                          .name(
                                                                      columnIssuesTrackingListResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) =>
                                                                          e.toString())
                                                                      .toList(),
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownPatientValue =
                                                                        val);
                                                                setState(() {
                                                                  FFAppState()
                                                                          .issuePatient =
                                                                      _model
                                                                          .dropDownPatientValue!;
                                                                  FFAppState()
                                                                          .patient =
                                                                      getJsonField(
                                                                    functions.searchFunction(
                                                                        _model
                                                                            .dropDownPatientValue!,
                                                                        columnIssuesTrackingListResponse
                                                                            .jsonBody),
                                                                    r'''$..name''',
                                                                  ).toString();
                                                                });
                                                              },
                                                              width: 250.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                '3k3h1kmr' /* Select Patient */,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                              elevation: 5.0,
                                                              borderColor: Color(
                                                                  0xFFF1F1F1),
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.apiResult4qd =
                                                                  await IssuesTrackingCall
                                                                      .call(
                                                                refreshToken:
                                                                    FFAppState()
                                                                        .sessionRefreshToken,
                                                                defaultRoleId:
                                                                    FFAppState()
                                                                        .defaultRoleId,
                                                                formStep: functions
                                                                            .jsonLength(columnIssuesTrackingListResponse.jsonBody) >=
                                                                        1
                                                                    ? 'patientLinkingEmail'
                                                                    : 'getFacilityId',
                                                                category: functions
                                                                            .jsonLength(columnIssuesTrackingListResponse.jsonBody) >=
                                                                        1
                                                                    ? getJsonField(
                                                                        functions.searchFunction(
                                                                            functions.trim(_model.dropDownPatientValue!),
                                                                            columnIssuesTrackingListResponse.jsonBody),
                                                                        r'''$..id''',
                                                                      ).toString()
                                                                    : 'NA',
                                                              );
                                                              if ((_model
                                                                      .apiResult4qd
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .dropdownVisible =
                                                                      true;
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                      .issueFacilityData = (_model
                                                                          .apiResult4qd
                                                                          ?.jsonBody ??
                                                                      '');
                                                                  FFAppState()
                                                                          .patientLinkingData =
                                                                      columnIssuesTrackingListResponse
                                                                          .jsonBody;
                                                                });
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        content:
                                                                            Text('Something went wrong please contact support.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              setState(() {});
                                                            },
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '53wzaye9' /* Get Facilities */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (FFAppState().dropdownVisible)
                                              Container(
                                                width: 400.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future:
                                                      IssuesTrackingCall.call(
                                                    refreshToken: FFAppState()
                                                        .sessionRefreshToken,
                                                    formStep: functions.jsonLength(
                                                                columnIssuesTrackingListResponse
                                                                    .jsonBody) >=
                                                            1
                                                        ? 'patientLinkingEmail'
                                                        : 'getFacilityId',
                                                    defaultRoleId: FFAppState()
                                                        .defaultRoleId,
                                                    category: functions.jsonLength(
                                                                columnIssuesTrackingListResponse
                                                                    .jsonBody) >=
                                                            1
                                                        ? getJsonField(
                                                            functions.searchFunction(
                                                                functions.trim(
                                                                    _model
                                                                        .dropDownPatientValue!),
                                                                columnIssuesTrackingListResponse
                                                                    .jsonBody),
                                                            r'''$..id''',
                                                          ).toString()
                                                        : 'NA',
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
                                                    final wrapIssuesTrackingResponse =
                                                        snapshot.data!;
                                                    return Wrap(
                                                      spacing: 0.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'c0c9m61h' /* Facility */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownFacilityValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownFacilityValue ??=
                                                                    '',
                                                              ),
                                                              options: List<
                                                                  String>.from(IssuesTrackingCall
                                                                              .data(
                                                                        wrapIssuesTrackingResponse
                                                                            .jsonBody,
                                                                      )
                                                                          ?.length ==
                                                                      0
                                                                  ? IssuesTrackingCall
                                                                          .data(
                                                                      wrapIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) => e
                                                                          .toString())
                                                                      .toList()
                                                                  : IssuesTrackingCall
                                                                          .ids(
                                                                      wrapIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) =>
                                                                          e.toString())
                                                                      .toList()),
                                                              optionLabels: IssuesTrackingCall
                                                                              .data(
                                                                        wrapIssuesTrackingResponse
                                                                            .jsonBody,
                                                                      )
                                                                          ?.length ==
                                                                      0
                                                                  ? IssuesTrackingCall
                                                                          .data(
                                                                      wrapIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) => e
                                                                          .toString())
                                                                      .toList()
                                                                  : IssuesTrackingCall
                                                                          .facilityNames(
                                                                      wrapIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) =>
                                                                          e.toString())
                                                                      .toList(),
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownFacilityValue =
                                                                        val);
                                                                setState(() {
                                                                  FFAppState()
                                                                          .issueFacility =
                                                                      _model
                                                                          .dropDownFacilityValue!;
                                                                  FFAppState()
                                                                          .facility =
                                                                      getJsonField(
                                                                    functions.searchFunction(
                                                                        _model
                                                                            .dropDownFacilityValue!,
                                                                        wrapIssuesTrackingResponse
                                                                            .jsonBody),
                                                                    r'''$..facilityname''',
                                                                  ).toString();
                                                                });
                                                              },
                                                              width: 400.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                '2w2funya' /* Select Facility */,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                              elevation: 5.0,
                                                              borderColor: Color(
                                                                  0xFFF1F1F1),
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 40.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  if (_model
                                                          .dropDownPatientValue ==
                                                      '') {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            content: Text(
                                                                'Please select patient and click on get facility.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  } else {
                                                    if (_model
                                                            .dropDownFacilityValue ==
                                                        '') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return WebViewAware(
                                                            child: AlertDialog(
                                                              content: Text(
                                                                  'Please select facility.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
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

                                                  if (_model.formKey1
                                                              .currentState ==
                                                          null ||
                                                      !_model.formKey1
                                                          .currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  if (_model
                                                          .dropDownPatientValue ==
                                                      null) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            content: Text(
                                                                'Please select patient.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok.'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    return;
                                                  }
                                                  if (_model
                                                          .dropDownFacilityValue ==
                                                      null) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            content: Text(
                                                                'Please select facility.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok.'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    return;
                                                  }
                                                  if ('${getJsonField(
                                                        (_model.apiResult4qd
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$..facilityname''',
                                                      ).toString()}' ==
                                                      'Facility not found') {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            content: Text(
                                                                'Facility name is not found. Please try again!'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  } else {
                                                    setState(() {
                                                      FFAppState()
                                                              .issueFacility =
                                                          functions.trim(_model
                                                              .dropDownFacilityValue!);
                                                      FFAppState()
                                                              .issuePatient =
                                                          functions.trim(_model
                                                              .dropDownPatientValue!);
                                                    });
                                                  }

                                                  _model.apiResultbbhproviderData =
                                                      await IssuesTrackingCall
                                                          .call(
                                                    refreshToken: FFAppState()
                                                        .sessionRefreshToken,
                                                    defaultRoleId: FFAppState()
                                                        .defaultRoleId,
                                                    formStep: 'getProviders',
                                                    facilityId: getJsonField(
                                                      functions.getDataJson(
                                                          functions.trim(
                                                              FFAppState()
                                                                  .issueFacility),
                                                          FFAppState()
                                                              .issueFacilityData),
                                                      r'''$..facility_id''',
                                                    ).toString(),
                                                  );
                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .apiResultbbhproviderData
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState()
                                                          .getUserData = (_model
                                                              .apiResultbbhproviderData
                                                              ?.jsonBody ??
                                                          '');
                                                    });
                                                    if (getJsonField(
                                                          (_model.apiResultbbhproviderData
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$..noDataFound''',
                                                        ) !=
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return WebViewAware(
                                                            child: AlertDialog(
                                                              content: Text(
                                                                  'No ${getJsonField(
                                                                (_model.apiResultbbhproviderData
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$..role''',
                                                              ).toString()} is available currently. Please try after some time.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    } else {
                                                      if ('${getJsonField(
                                                            (_model.apiResultbbhproviderData
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$..facilityname''',
                                                          ).toString()}' ==
                                                          'No facility has been mapped yet!') {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                content: Text(
                                                                    'No facility has been mapped yet!'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                        if (_shouldSetState)
                                                          setState(() {});
                                                        return;
                                                      } else {
                                                        context.pushNamed(
                                                            'issue_tracking_appointment_02');
                                                      }
                                                    }
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            content: Text(
                                                                'Oops something went wrong please contact support.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'xhq7h69q' /* Continue */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 400.0,
                                                  height: 40.0,
                                                  padding: EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                if (FFAppState().defaultRoleId != '5')
                                  Form(
                                    key: _model.formKey2,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: IssuesTrackingCall.call(
                                        refreshToken:
                                            FFAppState().sessionRefreshToken,
                                        formStep: 'getFacilityId',
                                        defaultRoleId:
                                            FFAppState().defaultRoleId,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20.0,
                                              height: 20.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final columnIssuesTrackingResponse =
                                            snapshot.data!;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 400.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'x5ckeb54' /* Facility */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 0.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownFaValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownFaValue ??=
                                                                    '',
                                                              ),
                                                              options: List<
                                                                  String>.from(IssuesTrackingCall
                                                                              .data(
                                                                        columnIssuesTrackingResponse
                                                                            .jsonBody,
                                                                      )
                                                                          ?.length ==
                                                                      0
                                                                  ? IssuesTrackingCall
                                                                          .data(
                                                                      columnIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) => e
                                                                          .toString())
                                                                      .toList()
                                                                  : IssuesTrackingCall
                                                                          .ids(
                                                                      columnIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) =>
                                                                          e.toString())
                                                                      .toList()),
                                                              optionLabels: IssuesTrackingCall
                                                                              .data(
                                                                        columnIssuesTrackingResponse
                                                                            .jsonBody,
                                                                      )
                                                                          ?.length ==
                                                                      0
                                                                  ? IssuesTrackingCall
                                                                          .data(
                                                                      columnIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) => e
                                                                          .toString())
                                                                      .toList()
                                                                  : IssuesTrackingCall
                                                                          .facilityNames(
                                                                      columnIssuesTrackingResponse
                                                                          .jsonBody,
                                                                    )!
                                                                      .map((e) =>
                                                                          e.toString())
                                                                      .toList(),
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownFaValue =
                                                                        val);
                                                                setState(() {
                                                                  FFAppState()
                                                                          .facility =
                                                                      getJsonField(
                                                                    functions.searchFunction(
                                                                        _model
                                                                            .dropDownFaValue!,
                                                                        columnIssuesTrackingResponse
                                                                            .jsonBody),
                                                                    r'''$..facilityname''',
                                                                  ).toString();
                                                                });
                                                              },
                                                              width: 250.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                'bqcytr10' /* Select Facility */,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                              elevation: 2.0,
                                                              borderColor: Color(
                                                                  0xFFF1F1F1),
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var _shouldSetState =
                                                                  false;
                                                              _model.getpatient =
                                                                  await IssuesTrackingCall
                                                                      .call(
                                                                refreshToken:
                                                                    FFAppState()
                                                                        .sessionRefreshToken,
                                                                defaultRoleId:
                                                                    FFAppState()
                                                                        .defaultRoleId,
                                                                formStep:
                                                                    'getPatients',
                                                                facilityId: _model
                                                                    .dropDownFaValue,
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .getpatient
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                if (getJsonField(
                                                                      (_model.getpatient
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$..noDataFound''',
                                                                    ) !=
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            AlertDialog(
                                                                          content:
                                                                              Text('No ${getJsonField(
                                                                            (_model.getpatient?.jsonBody ??
                                                                                ''),
                                                                            r'''$..role''',
                                                                          ).toString()} is available currently. Please try after some time.'),
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
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                } else {
                                                                  if (getJsonField(
                                                                        (_model.getpatient?.jsonBody ??
                                                                            ''),
                                                                        r'''$..facilityname''',
                                                                      ) ==
                                                                      'No facility has been mapped yet!') {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            content:
                                                                                Text('No facility has been mapped yet!'),
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
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                }

                                                                setState(() {
                                                                  FFAppState()
                                                                          .dropdownVisible =
                                                                      true;
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                      .patientLinkingData = (_model
                                                                          .getpatient
                                                                          ?.jsonBody ??
                                                                      '');
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                          .issueFacilityData =
                                                                      columnIssuesTrackingResponse
                                                                          .jsonBody;
                                                                });
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        content:
                                                                            Text('Oops something went wrong please contact support.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              if (_shouldSetState)
                                                                setState(() {});
                                                            },
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                't3vxk4cr' /* Get Patient */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (FFAppState().dropdownVisible)
                                              Container(
                                                width: 400.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future:
                                                      IssuesTrackingCall.call(
                                                    refreshToken: FFAppState()
                                                        .sessionRefreshToken,
                                                    formStep: 'getUserId',
                                                    defaultRoleId: FFAppState()
                                                        .defaultRoleId,
                                                    facilityId:
                                                        _model.dropDownFaValue,
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
                                                    final wrapIssuesTrackingResponse =
                                                        snapshot.data!;
                                                    return Wrap(
                                                      spacing: 0.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '9qr4shpi' /* Patient */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownPaValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model
                                                                    .dropDownPaValue ??= FFAppState().issuePatient !=
                                                                            null &&
                                                                        FFAppState().issuePatient !=
                                                                            ''
                                                                    ? FFAppState()
                                                                        .issuePatient
                                                                    : '\'\'',
                                                              ),
                                                              options: functions
                                                                  .dropdoenlist(
                                                                      functions
                                                                          .trim(
                                                                              getJsonField(
                                                                (_model.getpatient
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$..full_name''',
                                                              ).toString())),
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownPaValue =
                                                                        val);
                                                                setState(() {
                                                                  FFAppState()
                                                                          .patient =
                                                                      _model
                                                                          .dropDownPaValue!;
                                                                });
                                                              },
                                                              width: 400.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                'ih60str6' /* Select patient */,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                              elevation: 5.0,
                                                              borderColor: Color(
                                                                  0xFFF1F1F1),
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 40.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.dropDownFaValue ==
                                                      '\'\'') {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            content: Text(
                                                                'Please select facility and click on get patient.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    if (_model
                                                            .dropDownPaValue ==
                                                        '\'\'') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return WebViewAware(
                                                            child: AlertDialog(
                                                              content: Text(
                                                                  'Please select patient.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    } else {
                                                      if (_model.formKey2
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey2
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      if (_model
                                                              .dropDownFaValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                content: Text(
                                                                    'Please select facility.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                        return;
                                                      }
                                                      if (_model
                                                              .dropDownPaValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                content: Text(
                                                                    'Please select patient.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                        return;
                                                      }
                                                      setState(() {
                                                        FFAppState()
                                                                .issueFacility =
                                                            functions.trim(_model
                                                                .dropDownFaValue!);
                                                        FFAppState()
                                                                .issuePatient =
                                                            functions.trim(_model
                                                                .dropDownPaValue!);
                                                      });

                                                      context.pushNamed(
                                                          'issue_tracking_appointment_02');
                                                    }
                                                  }
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'lz767gls' /* Continue */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 400.0,
                                                  height: 40.0,
                                                  padding: EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
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
                    currentPage: '01',
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
