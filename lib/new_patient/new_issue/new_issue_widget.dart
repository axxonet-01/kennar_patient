import '/backend/api_requests/api_calls.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'new_issue_model.dart';
export 'new_issue_model.dart';

class NewIssueWidget extends StatefulWidget {
  const NewIssueWidget({super.key});

  @override
  State<NewIssueWidget> createState() => _NewIssueWidgetState();
}

class _NewIssueWidgetState extends State<NewIssueWidget> {
  late NewIssueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewIssueModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().uploadimgname = '';
        FFAppState().dropdownvisible2 = false;
        FFAppState().dropdownVisible = false;
      });
    });

    _model.textFieldDescriptionController ??= TextEditingController();
    _model.textFieldDescriptionFocusNode ??= FocusNode();

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
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 70.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'uplrcxsu' /* New Request */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .displaySmall
                            .override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 20.0),
                        child: Container(
                          width: 1200.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.end,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 200.0,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'zxmuj6qw' /* Category */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                        ),
                                      ),
                                      FutureBuilder<ApiCallResponse>(
                                        future: IssuesTrackingCall.call(
                                          refreshToken:
                                              FFAppState().sessionRefreshToken,
                                          formStep: 'getCategory',
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
                                          final dropDownCategoryIssuesTrackingResponse =
                                              snapshot.data!;
                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownCategoryValueController ??=
                                                FormFieldController<String>(
                                              _model.dropDownCategoryValue ??=
                                                  '',
                                            ),
                                            options: List<String>.from(
                                                IssuesTrackingCall.data(
                                                          dropDownCategoryIssuesTrackingResponse
                                                              .jsonBody,
                                                        )?.length ==
                                                        0
                                                    ? IssuesTrackingCall.data(
                                                        dropDownCategoryIssuesTrackingResponse
                                                            .jsonBody,
                                                      )!
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList()
                                                    : IssuesTrackingCall.ids(
                                                        dropDownCategoryIssuesTrackingResponse
                                                            .jsonBody,
                                                      )!
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList()),
                                            optionLabels:
                                                IssuesTrackingCall.data(
                                                          dropDownCategoryIssuesTrackingResponse
                                                              .jsonBody,
                                                        )?.length ==
                                                        0
                                                    ? IssuesTrackingCall.data(
                                                        dropDownCategoryIssuesTrackingResponse
                                                            .jsonBody,
                                                      )!
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList()
                                                    : (getJsonField(
                                                        dropDownCategoryIssuesTrackingResponse
                                                            .jsonBody,
                                                        r'''$..category''',
                                                        true,
                                                      ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()!,
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownCategoryValue =
                                                    val),
                                            width: 350.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'su9cvfw9' /* Please select category */,
                                            ),
                                            elevation: 2.0,
                                            borderColor: Color(0xFFCBB8FF),
                                            borderWidth: 0.0,
                                            borderRadius: 10.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 4.0, 12.0, 4.0),
                                            hidesUnderline: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                if (_model.dropDownCategoryValue == '1')
                                  Container(
                                    width: 550.0,
                                    decoration: BoxDecoration(),
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
                                        Form(
                                          key: _model.formKey1,
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          child: Visibility(
                                            visible:
                                                FFAppState().defaultRoleId ==
                                                    '5',
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future:
                                                  IssuesTrackingListCall.call(
                                                refreshToken: FFAppState()
                                                    .sessionRefreshToken,
                                                formStep: 'patient_link_list',
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
                                                final wrapIssuesTrackingListResponse =
                                                    snapshot.data!;
                                                return Wrap(
                                                  spacing: 0.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.start,
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
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  10.0),
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
                                                            WrapAlignment
                                                                .center,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Container(
                                                            width: 200.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'bx4z0jxn' /* Patient */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                  ),
                                                            ),
                                                          ),
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
                                                                      wrapIssuesTrackingListResponse
                                                                          .jsonBody,
                                                                    )?.length ==
                                                                    0
                                                                ? IssuesTrackingListCall
                                                                        .data(
                                                                    wrapIssuesTrackingListResponse
                                                                        .jsonBody,
                                                                  )!
                                                                    .map((e) => e
                                                                        .toString())
                                                                    .toList()
                                                                : IssuesTrackingListCall
                                                                        .ids(
                                                                    wrapIssuesTrackingListResponse
                                                                        .jsonBody,
                                                                  )!
                                                                    .map((e) =>
                                                                        e.toString())
                                                                    .toList()),
                                                            optionLabels: IssuesTrackingListCall
                                                                        .data(
                                                                      wrapIssuesTrackingListResponse
                                                                          .jsonBody,
                                                                    )?.length ==
                                                                    0
                                                                ? IssuesTrackingListCall
                                                                        .data(
                                                                    wrapIssuesTrackingListResponse
                                                                        .jsonBody,
                                                                  )!
                                                                    .map((e) => e
                                                                        .toString())
                                                                    .toList()
                                                                : IssuesTrackingListCall
                                                                        .name(
                                                                    wrapIssuesTrackingListResponse
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
                                                              'ezpctwz8' /* Select Patient */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            elevation: 5.0,
                                                            borderColor: Color(
                                                                0xFFCBB8FF),
                                                            borderWidth: 1.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        4.0,
                                                                        14.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
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
                                                                setState(() {
                                                                  FFAppState()
                                                                          .dropdownVisible =
                                                                      true;
                                                                });
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'tow4w24q' /* Get Facilities */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                    if (FFAppState()
                                                            .dropdownVisible ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              IssuesTrackingCall
                                                                  .call(
                                                            refreshToken:
                                                                FFAppState()
                                                                    .sessionRefreshToken,
                                                            formStep:
                                                                'getFacilityId',
                                                            defaultRoleId:
                                                                FFAppState()
                                                                    .defaultRoleId,
                                                            category: _model
                                                                .dropDownPatientValue,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      Color(
                                                                          0x00FFFFFF),
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
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .center,
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
                                                              children: [
                                                                Container(
                                                                  width: 200.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'sem8i1z9' /* Facility */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
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
                                                                        String>.from(IssuesTrackingCall.data(
                                                                              wrapIssuesTrackingResponse.jsonBody,
                                                                            )?.length ==
                                                                            0
                                                                        ? IssuesTrackingCall.data(
                                                                            wrapIssuesTrackingResponse.jsonBody,
                                                                          )!
                                                                            .map((e) => e.toString())
                                                                            .toList()
                                                                        : IssuesTrackingCall.ids(
                                                                            wrapIssuesTrackingResponse.jsonBody,
                                                                          )!
                                                                            .map((e) => e.toString())
                                                                            .toList()),
                                                                    optionLabels: IssuesTrackingCall.data(
                                                                              wrapIssuesTrackingResponse.jsonBody,
                                                                            )?.length ==
                                                                            0
                                                                        ? IssuesTrackingCall.data(
                                                                            wrapIssuesTrackingResponse.jsonBody,
                                                                          )!
                                                                            .map((e) => e.toString())
                                                                            .toList()
                                                                        : IssuesTrackingCall.facilityNames(
                                                                            wrapIssuesTrackingResponse.jsonBody,
                                                                          )!
                                                                            .map((e) => e.toString())
                                                                            .toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(() =>
                                                                          _model.dropDownFacilityValue =
                                                                              val);
                                                                      setState(
                                                                          () {
                                                                        FFAppState().dropdownvisible2 =
                                                                            true;
                                                                      });
                                                                      setState(
                                                                          () {
                                                                        FFAppState().issueFacility =
                                                                            _model.dropDownFacilityValue!;
                                                                      });
                                                                    },
                                                                    width:
                                                                        350.0,
                                                                    height:
                                                                        50.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bm1x7c8h' /* Select Facility */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    elevation:
                                                                        5.0,
                                                                    borderColor:
                                                                        Color(
                                                                            0xFFCBB8FF),
                                                                    borderWidth:
                                                                        1.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            4.0,
                                                                            12.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .dropdownvisible2 ==
                                                        true)
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                IssuesTrackingCall
                                                                    .call(
                                                              refreshToken:
                                                                  FFAppState()
                                                                      .sessionRefreshToken,
                                                              defaultRoleId:
                                                                  FFAppState()
                                                                      .defaultRoleId,
                                                              formStep:
                                                                  'getProviders',
                                                              facilityId: _model
                                                                              .dropDownFacilityValue !=
                                                                          null &&
                                                                      _model.dropDownFacilityValue !=
                                                                          ''
                                                                  ? _model
                                                                      .dropDownFacilityValue
                                                                  : '0',
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        Color(
                                                                            0x00FFFFFF),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final wrapIssuesTrackingResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return Wrap(
                                                                spacing: 0.0,
                                                                runSpacing: 0.0,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                direction: Axis
                                                                    .horizontal,
                                                                runAlignment:
                                                                    WrapAlignment
                                                                        .end,
                                                                verticalDirection:
                                                                    VerticalDirection
                                                                        .down,
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        200.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                    ),
                                                                    child: Wrap(
                                                                      spacing:
                                                                          0.0,
                                                                      runSpacing:
                                                                          0.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '3uewrrkb' /* Provider */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                        .dropDownUserValueController ??= FormFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: IssuesTrackingCall.allData(
                                                                              wrapIssuesTrackingResponse.jsonBody,
                                                                            )!
                                                                                .length >=
                                                                            1
                                                                        ? functions.dropdoenlist(functions.trim(getJsonField(
                                                                            wrapIssuesTrackingResponse.jsonBody,
                                                                            r'''$..full_name''',
                                                                          ).toString()))
                                                                        : functions.dropdoenlist('No providers are avaleble'),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(() =>
                                                                          _model.dropDownUserValue =
                                                                              val);
                                                                      setState(
                                                                          () {
                                                                        FFAppState().isssueProvider =
                                                                            getJsonField(
                                                                          functions.getDataJson(
                                                                              functions.trim(_model.dropDownUserValue!),
                                                                              wrapIssuesTrackingResponse.jsonBody),
                                                                          r'''$..user_id''',
                                                                        ).toString();
                                                                      });
                                                                    },
                                                                    width:
                                                                        350.0,
                                                                    height:
                                                                        50.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7bwv21c6' /* Please select provider */,
                                                                    ),
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        Color(
                                                                            0xFFCBB8FF),
                                                                    borderWidth:
                                                                        0.0,
                                                                    borderRadius:
                                                                        10.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            4.0,
                                                                            12.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        if (FFAppState().defaultRoleId == '4')
                                          Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Form(
                                                key: _model.formKey4,
                                                autovalidateMode:
                                                    AutovalidateMode.always,
                                                child: Wrap(
                                                  spacing: 0.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.start,
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
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            IssuesTrackingCall
                                                                .call(
                                                          refreshToken: FFAppState()
                                                              .sessionRefreshToken,
                                                          formStep:
                                                              'getFacilityId',
                                                          defaultRoleId:
                                                              FFAppState()
                                                                  .defaultRoleId,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    Color(
                                                                        0x00FFFFFF),
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
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .center,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .center,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Container(
                                                                width: 200.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'cqcdr59g' /* Facility */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                      ),
                                                                ),
                                                              ),
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
                                                                      _model.dropDownFaValue =
                                                                          val);
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .issueFacility =
                                                                        getJsonField(
                                                                      functions.getDataJson(
                                                                          functions.trim(_model
                                                                              .dropDownFaValue!),
                                                                          wrapIssuesTrackingResponse
                                                                              .jsonBody),
                                                                      r'''$..facility_id''',
                                                                    ).toString();
                                                                  });
                                                                },
                                                                width: 250.0,
                                                                height: 50.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'irz0acne' /* Select Facility */,
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
                                                                    0xFFCBB8FF),
                                                                borderWidth:
                                                                    1.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: EdgeInsetsDirectional
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
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
                                                                      facilityId:
                                                                          _model
                                                                              .dropDownFaValue,
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .getpatient
                                                                            ?.succeeded ??
                                                                        true)) {
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
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .patientLinkingData = (_model
                                                                                .getpatient?.jsonBody ??
                                                                            '');
                                                                        FFAppState().dropdownVisible =
                                                                            true;
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
                                                                              content: Text('Oops something went wrong please contact support.'),
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

                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                  },
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '1g7eduwr' /* Get Patient */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .dropdownVisible ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .center,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Container(
                                                              width: 200.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'detwrt65' /* Patient */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
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
                                                                        null),
                                                                options: functions
                                                                    .dropdoenlist(
                                                                        getJsonField(
                                                                  FFAppState()
                                                                      .patientLinkingData,
                                                                  r'''$..full_name''',
                                                                ).toString()),
                                                                onChanged:
                                                                    (val) async {
                                                                  setState(() =>
                                                                      _model.dropDownPaValue =
                                                                          val);
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .issuePatient =
                                                                        getJsonField(
                                                                      functions.getDataJson(
                                                                          functions.trim(_model
                                                                              .dropDownPaValue!),
                                                                          FFAppState()
                                                                              .patientLinkingData),
                                                                      r'''$..user_id''',
                                                                    ).toString();
                                                                  });
                                                                },
                                                                width: 350.0,
                                                                height: 50.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'im1981ue' /* Select patient */,
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
                                                                    0xFFCBB8FF),
                                                                borderWidth:
                                                                    1.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: EdgeInsetsDirectional
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
                                                          ],
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        Form(
                                          key: _model.formKey2,
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Wrap(
                                                  spacing: 0.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.center,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.end,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Container(
                                                      width: 200.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ank0cjjz' /* Date  */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  1.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          final _datePickedDate =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                getCurrentTimestamp,
                                                            firstDate:
                                                                getCurrentTimestamp,
                                                            lastDate:
                                                                DateTime(2050),
                                                          );

                                                          if (_datePickedDate !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked =
                                                                  DateTime(
                                                                _datePickedDate
                                                                    .year,
                                                                _datePickedDate
                                                                    .month,
                                                                _datePickedDate
                                                                    .day,
                                                              );
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 345.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .transparent,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFCBB8FF),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        0.0,
                                                                    runSpacing:
                                                                        0.0,
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
                                                                    children: [
                                                                      if (_model
                                                                              .datePicked !=
                                                                          null)
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat(
                                                                              'yMMMd',
                                                                              _model.datePicked,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      if (_model
                                                                              .datePicked !=
                                                                          null)
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'EEEE',
                                                                            _model.datePicked,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      if (_model
                                                                              .datePicked ==
                                                                          null)
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'we64lfgc' /*   Select Date */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .calendar,
                                                                  color: Color(
                                                                      0xFF8A61FF),
                                                                  size: 24.0,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Wrap(
                                                  spacing: 0.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.center,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.end,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Container(
                                                      width: 200.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wtj2mmon' /* Appointment Type */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<String>(
                                                      controller: _model
                                                              .dropDownValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c86igt3x' /* Regular Check up */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4sqvquog' /* Emergency */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .dropDownValue =
                                                              val),
                                                      width: 350.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'io4ablx6' /* Select Appointment Type */,
                                                      ),
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Color(0xFFCBB8FF),
                                                      borderWidth: 0.0,
                                                      borderRadius: 10.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  4.0,
                                                                  12.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                Form(
                                  key: _model.formKey3,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.end,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '7ayrfd2q' /* Description  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 1.0, 0.0),
                                          child: Container(
                                            width: 350.0,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Color(0xFFCBB8FF),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldDescriptionController,
                                                focusNode: _model
                                                    .textFieldDescriptionFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '1sbj9psq' /* Enter brief description about ... */,
                                                  ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                maxLines: 3,
                                                validator: _model
                                                    .textFieldDescriptionControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 550.0,
                                      height: 320.0,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 200.0,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '85uo4zlx' /* Description  */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child:
                                                custom_widgets.LogoPickerWidget(
                                              width: 350.0,
                                              height: 300.0,
                                              file: 'dummy',
                                              galleryText: 'Gallery',
                                              cameraText: 'Camera',
                                              clearText: 'Clear',
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              buttonBackground:
                                                  Color(0xFF9F9F9F),
                                              saveText: 'Save',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (_model.dropDownCategoryValue != '1')
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 12.0),
                                      child: Wrap(
                                        spacing: 20.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.center,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if (FFAppState().consent ==
                                                  'Consent') {
                                                context.pushNamed('Login');

                                                setState(() {
                                                  FFAppState()
                                                      .sessionRefreshToken = '';
                                                });
                                              } else {
                                                context.pop();
                                                return;
                                              }
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'yg0jvpru' /* Cancel */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Color(0xFF8A61FF),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 2.0,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              if (_model.dropDownCategoryValue ==
                                                      null ||
                                                  _model.dropDownCategoryValue ==
                                                      '') {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        content: Text(
                                                            'Please select category'),
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
                                              } else {
                                                if (_model.textFieldDescriptionController
                                                            .text ==
                                                        null ||
                                                    _model.textFieldDescriptionController
                                                            .text ==
                                                        '') {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          content: Text(
                                                              'Please enter description'),
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

                                              _model.outputIssueTrackingwithoutid =
                                                  await IssuesTrackingCall.call(
                                                refreshToken: FFAppState()
                                                    .sessionRefreshToken,
                                                formStep: 'issueTrackingInsert',
                                                category: _model
                                                    .dropDownCategoryValue,
                                                issueDescription:
                                                    functions.jsonString(_model
                                                        .textFieldDescriptionController
                                                        .text),
                                                issueImage:
                                                    FFAppState().uploadimgname,
                                                role: () {
                                                  if (FFAppState()
                                                          .defaultRoleId ==
                                                      '5') {
                                                    return 'Patient';
                                                  } else if (FFAppState()
                                                          .defaultRoleId ==
                                                      '4') {
                                                    return 'Provider';
                                                  } else if (FFAppState()
                                                          .defaultRoleId ==
                                                      '0') {
                                                    return 'Facility Admin';
                                                  } else {
                                                    return 'Staff';
                                                  }
                                                }(),
                                                status: 'Open',
                                              );
                                              _shouldSetState = true;
                                              if ((_model
                                                      .outputIssueTrackingwithoutid
                                                      ?.succeeded ??
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

                                                context.pushNamed('issueList');
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

                                              if (_shouldSetState)
                                                setState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'opj2jz8t' /* Submit */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF8A61FF),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 2.0,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (_model.dropDownCategoryValue == '1')
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 12.0),
                                      child: Wrap(
                                        spacing: 20.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.center,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.pop();
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'musysgfp' /* Cancel */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Color(0xFF8A61FF),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 2.0,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              if (FFAppState().defaultRoleId ==
                                                  '4') {
                                                if (_model.formKey4
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey4.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.dropDownFaValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          content: Text(
                                                              'Please select Facility.'),
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
                                                  return;
                                                }
                                                if (_model.dropDownPaValue ==
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
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  return;
                                                }
                                                if (_model.formKey2
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey2.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.datePicked == null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          content: Text(
                                                              'Please select date.'),
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
                                                  return;
                                                }
                                                if (_model.dropDownValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          content: Text(
                                                              'Please select appointment type.'),
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
                                                  return;
                                                }
                                                if (_model.formKey3
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey3.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.dropDownFaValue ==
                                                    'No facility available') {
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
                                                _model.issueTrackingprovider =
                                                    await IssuesTrackingCall
                                                        .call(
                                                  refreshToken: FFAppState()
                                                      .sessionRefreshToken,
                                                  formStep:
                                                      'issueTrackingInsert',
                                                  category: _model
                                                      .dropDownCategoryValue,
                                                  issueDescription: functions
                                                      .jsonString(_model
                                                          .textFieldDescriptionController
                                                          .text),
                                                  issueImage: FFAppState()
                                                      .uploadimgname,
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
                                                  date: dateTimeFormat(
                                                    'yMMMd',
                                                    _model.datePicked,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  facilityId: FFAppState()
                                                      .issueFacility,
                                                  userId:
                                                      FFAppState().issuePatient,
                                                  appType: _model.dropDownValue,
                                                );
                                                _shouldSetState = true;
                                                if ((_model
                                                        .issueTrackingprovider
                                                        ?.succeeded ??
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

                                                  context
                                                      .pushNamed('issueList');
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
                                              } else {
                                                if (_model.formKey1
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey1.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.formKey2
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey2.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.datePicked == null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          content: Text(
                                                              'Please select date.'),
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
                                                  return;
                                                }
                                                if (_model.dropDownValue ==
                                                    null) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          content: Text(
                                                              'Please select appointment type.'),
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
                                                  return;
                                                }
                                                if (_model.formKey3
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey3.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model
                                                        .dropDownPatientValue !=
                                                    'No linked patients found.') {
                                                  if (_model
                                                          .dropDownFacilityValue ==
                                                      'Please select patient.') {
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
                                                  }
                                                  _model.issueTrackingPatient =
                                                      await IssuesTrackingCall
                                                          .call(
                                                    refreshToken: FFAppState()
                                                        .sessionRefreshToken,
                                                    formStep:
                                                        'issueTrackingInsert',
                                                    category: _model
                                                        .dropDownCategoryValue,
                                                    issueImage: FFAppState()
                                                        .uploadimgname,
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
                                                    date: dateTimeFormat(
                                                      'yMMMd',
                                                      _model.datePicked,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    facilityId: FFAppState()
                                                        .issueFacility,
                                                    userId: FFAppState()
                                                        .issuePatient,
                                                    id: FFAppState()
                                                        .isssueProvider,
                                                    issueDescription: functions
                                                        .jsonString(_model
                                                            .textFieldDescriptionController
                                                            .text),
                                                    appType:
                                                        _model.dropDownValue,
                                                  );
                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .issueTrackingPatient
                                                          ?.succeeded ??
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
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    context
                                                        .pushNamed('issueList');

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
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
                                                  }
                                                } else {
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
                                              'ejiqf6ac' /* Submit */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF8A61FF),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 2.0,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
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
