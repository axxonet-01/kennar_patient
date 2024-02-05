import '/backend/api_requests/api_calls.dart';
import '/components/caregap_question_widget.dart';
import '/components/empty_data_container1_widget.dart';
import '/components/msg_container_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'patient_care_answer_list_model.dart';
export 'patient_care_answer_list_model.dart';

class PatientCareAnswerListWidget extends StatefulWidget {
  const PatientCareAnswerListWidget({
    super.key,
    this.patientId,
    this.patientName,
  });

  final String? patientId;
  final String? patientName;

  @override
  State<PatientCareAnswerListWidget> createState() =>
      _PatientCareAnswerListWidgetState();
}

class _PatientCareAnswerListWidgetState
    extends State<PatientCareAnswerListWidget> with TickerProviderStateMixin {
  late PatientCareAnswerListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientCareAnswerListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().pagingcount = 0;
        FFAppState().sort = 'id';
        FFAppState().sortcondition = false;
      });
      setState(() {
        FFAppState().pagingcount = FFAppState().pagingcount + 1;
      });
    });

    _model.webController ??= TextEditingController();
    _model.webFocusNode ??= FocusNode();

    _model.webMoController ??= TextEditingController();
    _model.webMoFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 80.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.spaceBetween,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Wrap(
                                          spacing: 0.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    'Patient_Dashboard');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'x7p6j2yh' /* Dashboard */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_right,
                                              color: Colors.black,
                                              size: 24.0,
                                            ),
                                            if (FFAppState().defaultRoleId ==
                                                '4')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wx22tr6y' /* Patients */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            if (FFAppState().defaultRoleId ==
                                                '4')
                                              Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                            if (FFAppState().defaultRoleId ==
                                                '4')
                                              Text(
                                                '${widget.patientName}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                              ),
                                            if (FFAppState().defaultRoleId ==
                                                '4')
                                              Text(
                                                ' : Care Gap Details',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            if (FFAppState().defaultRoleId ==
                                                '5')
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'Patient_Dashboard');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'btz2xr2x' /* Care Gap Details */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
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
                                            if (FFAppState().defaultRoleId ==
                                                '5')
                                              Builder(
                                                builder: (context) => Padding(
                                                  padding: EdgeInsets.all(10.0),
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
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  CaregapQuestionWidget(
                                                                patientId: widget
                                                                    .patientId,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 150.0,
                                                      height: 54.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF8A61FF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.add,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'e53pn4u9' /* My Questions */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 0.0, 10.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().pagingcount =
                                                        1;
                                                  });
                                                },
                                                child: Container(
                                                  width: 180.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.webController,
                                                    focusNode:
                                                        _model.webFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.webController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => setState(() {}),
                                                    ),
                                                    onFieldSubmitted:
                                                        (_) async {
                                                      setState(() {
                                                        FFAppState()
                                                            .pagingcount = 1;
                                                      });
                                                    },
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ktobegeh' /* Search.. */,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF5A2BA8),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      prefixIcon: Icon(
                                                        Icons.search,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                      suffixIcon: _model
                                                              .webController!
                                                              .text
                                                              .isNotEmpty
                                                          ? InkWell(
                                                              onTap: () async {
                                                                _model
                                                                    .webController
                                                                    ?.clear();
                                                                setState(() {});
                                                              },
                                                              child: Icon(
                                                                Icons.clear,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 22.0,
                                                              ),
                                                            )
                                                          : null,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .webControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FutureBuilder<ApiCallResponse>(
                                  future: CareGapsCall.call(
                                    refreshToken:
                                        FFAppState().sessionRefreshToken,
                                    formstep: 'patientAnswerlist',
                                    id: widget.patientId,
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
                                                AlwaysStoppedAnimation<Color>(
                                              Color(0x00FFFFFF),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final containerCareGapsResponse =
                                        snapshot.data!;
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          if (functions.jsonLength(
                                                  containerCareGapsResponse
                                                      .jsonBody) !=
                                              0)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.7,
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final list = functions
                                                          .pagination(
                                                              functions
                                                                  .sortData(
                                                                      CareGapsCall
                                                                              .data(
                                                                        containerCareGapsResponse
                                                                            .jsonBody,
                                                                      )!
                                                                          .where((e) =>
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..qtn''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..ans''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..rmark''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..en_date''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..n_en_date''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..lastupdated''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())))
                                                                          .toList(),
                                                                      FFAppState().sort,
                                                                      FFAppState().sortcondition)
                                                                  .toList(),
                                                              _model.countValue1!,
                                                              FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1,
                                                              CareGapsCall.data(
                                                                containerCareGapsResponse
                                                                    .jsonBody,
                                                              )!
                                                                  .where((e) =>
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..qtn''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..ans''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..rmark''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..en_date''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..n_en_date''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..lastupdated''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())))
                                                                  .toList()
                                                                  .length)
                                                          .toList();
                                                      if (list.isEmpty) {
                                                        return EmptyDataContainer1Widget(
                                                          emptyMsg:
                                                              'No details available for the requested input.',
                                                        );
                                                      }
                                                      return SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 500.0,
                                                          child: DataTable2(
                                                            columns: [
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      Container(),
                                                                ),
                                                                fixedWidth: 1.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'qtn';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'qrd4qeq3' /* Question */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'qtn')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 14.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'ans';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'fcjfbsrr' /* Answer */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'ans')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 14.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'rmark';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'z33vljyv' /* Remark */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'rmark')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 14.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'en_date';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'np8dnntu' /* Last Encounter Date */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'en_date')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 14.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'n_en_date';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'y3mr0xho' /* Next Encounter Date */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'n_en_date')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 14.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            rows: (list
                                                                    as Iterable)
                                                                .mapIndexed((listIndex,
                                                                        listItem) =>
                                                                    [
                                                                      Container(),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..qtn''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..ans''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..rmark''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..en_date''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..n_en_date''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .map((c) =>
                                                                            DataCell(
                                                                                c))
                                                                        .toList())
                                                                .map((e) =>
                                                                    DataRow(
                                                                        cells:
                                                                            e))
                                                                .toList(),
                                                            headingRowColor:
                                                                MaterialStateProperty
                                                                    .all(
                                                              Color(0xFFCBB8FF),
                                                            ),
                                                            headingRowHeight:
                                                                30.0,
                                                            dataRowColor:
                                                                MaterialStateProperty
                                                                    .all(
                                                              Color(0x00000000),
                                                            ),
                                                            dataRowHeight: 40.0,
                                                            border: TableBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            dividerThickness:
                                                                1.0,
                                                            showBottomBorder:
                                                                true,
                                                            minWidth: 49.0,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (functions.jsonLength(
                                                  containerCareGapsResponse
                                                      .jsonBody) !=
                                              0)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(),
                                                  child: Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.end,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Wrap(
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
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'sllwcg6f' /* Rows per page */,
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
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 90.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                controller: _model
                                                                        .countValueController1 ??=
                                                                    FormFieldController<
                                                                        String>(
                                                                  _model.countValue1 ??=
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                    'xpl0hb3d' /* 20 */,
                                                                  ),
                                                                ),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'k5x3b4k2' /* 20 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'n894yyvz' /* 40 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '4a12rygi' /* 60 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'et8jue1v' /* 80 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xkfqf15k' /* 100 */,
                                                                  )
                                                                ],
                                                                onChanged:
                                                                    (val) async {
                                                                  setState(() =>
                                                                      _model.countValue1 =
                                                                          val);
                                                                  setState(() {
                                                                    FFAppState()
                                                                        .pagingcount = 1;
                                                                  });
                                                                },
                                                                width: 60.0,
                                                                height: 40.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                fillColor: Color(
                                                                    0xFFE0E0E0),
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    0.0,
                                                                margin:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            4.0,
                                                                            0.0,
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
                                                          Text(
                                                            '${functions.startpage(FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1, _model.countValue1!).toString()}-${functions.endcount(CareGapsCall.data(
                                                                  containerCareGapsResponse
                                                                      .jsonBody,
                                                                )!.where((e) => (getJsonField(
                                                                      e,
                                                                      r'''$..qtn''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..ans''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..rmark''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..en_date''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..n_en_date''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..lastupdated''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase()))).toList().length, FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1, _model.countValue1!).toString()} of ${functions.inttostring(CareGapsCall.data(
                                                              containerCareGapsResponse
                                                                  .jsonBody,
                                                            )!.where((e) => (getJsonField(
                                                                  e,
                                                                  r'''$..qtn''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..ans''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..rmark''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..en_date''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..n_en_date''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..lastupdated''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase()))).toList().length)}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          InkWell(
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
                                                              if (FFAppState()
                                                                      .pagingcount !=
                                                                  1) {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .pagingcount =
                                                                      FFAppState()
                                                                              .pagingcount +
                                                                          -1;
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_left,
                                                              color:
                                                                  Colors.black,
                                                              size: 18.0,
                                                            ),
                                                          ),
                                                          InkWell(
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
                                                              if (functions.pagemaxcount(
                                                                      CareGapsCall.data(
                                                                        containerCareGapsResponse
                                                                            .jsonBody,
                                                                      )!
                                                                          .where((e) =>
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..did''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..name''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..area''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..clinic''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..patient''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..visit''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..ctime''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())))
                                                                          .toList()
                                                                          .length,
                                                                      _model.countValue1!,
                                                                      FFAppState().pagingcount) ==
                                                                  true) {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .pagingcount =
                                                                      FFAppState()
                                                                              .pagingcount +
                                                                          1;
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_right_rounded,
                                                              color:
                                                                  Colors.black,
                                                              size: 18.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (functions.jsonLength(
                                                  containerCareGapsResponse
                                                      .jsonBody) ==
                                              0)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.7,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kn3yve6t' /* No questions are answered yet! */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Container(
                                      width: 1200.0,
                                      decoration: BoxDecoration(),
                                      child: Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment:
                                            WrapAlignment.spaceBetween,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 0.0, 0.0),
                                            child: Wrap(
                                              spacing: 0.0,
                                              runSpacing: 0.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'Patient_Dashboard');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n11phkeu' /* Dashboard */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                if (FFAppState()
                                                        .defaultRoleId ==
                                                    '4')
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7jxeuidc' /* Patients */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                if (FFAppState()
                                                        .defaultRoleId ==
                                                    '4')
                                                  Icon(
                                                    Icons.keyboard_arrow_right,
                                                    color: Colors.black,
                                                    size: 24.0,
                                                  ),
                                                if (FFAppState()
                                                        .defaultRoleId ==
                                                    '4')
                                                  Text(
                                                    '${widget.patientName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                  ),
                                                if (FFAppState()
                                                        .defaultRoleId ==
                                                    '4')
                                                  Text(
                                                    '  : Care Gap Details',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                if (FFAppState()
                                                        .defaultRoleId ==
                                                    '5')
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'Patient_Dashboard');
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'o62krhfr' /* Care Gap Details */,
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
                                                                    .lineColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
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
                                              if (FFAppState().defaultRoleId ==
                                                  '5')
                                                Builder(
                                                  builder: (context) => Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
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
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    CaregapQuestionWidget(
                                                                  patientId: widget
                                                                      .patientId,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: Container(
                                                        width: 150.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF8A61FF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Icon(
                                                              Icons.add,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'yodtkpqs' /* My Questions */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 10.0),
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
                                                    setState(() {
                                                      FFAppState().pagingcount =
                                                          1;
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 180.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .webMoController,
                                                      focusNode:
                                                          _model.webMoFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.webMoController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () => setState(() {}),
                                                      ),
                                                      onFieldSubmitted:
                                                          (_) async {
                                                        setState(() {
                                                          FFAppState()
                                                              .pagingcount = 1;
                                                        });
                                                      },
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '2074587p' /* Search.. */,
                                                        ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF5A2BA8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        prefixIcon: Icon(
                                                          Icons.search,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                        suffixIcon: _model
                                                                .webMoController!
                                                                .text
                                                                .isNotEmpty
                                                            ? InkWell(
                                                                onTap:
                                                                    () async {
                                                                  _model
                                                                      .webMoController
                                                                      ?.clear();
                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.clear,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                              )
                                                            : null,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      validator: _model
                                                          .webMoControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: CareGapsCall.call(
                                      refreshToken:
                                          FFAppState().sessionRefreshToken,
                                      formstep: 'patientAnswerlist',
                                      id: widget.patientId,
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
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0x00FFFFFF),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final containerCareGapsResponse =
                                          snapshot.data!;
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            if ((CareGapsCall.data(
                                                      containerCareGapsResponse
                                                          .jsonBody,
                                                    )!
                                                        .where((e) =>
                                                            (getJsonField(
                                                              e,
                                                              r'''$..qtn''',
                                                            )
                                                                .toString()
                                                                .toLowerCase()
                                                                .contains(_model
                                                                    .webMoController
                                                                    .text
                                                                    .toLowerCase())) ||
                                                            (getJsonField(
                                                              e,
                                                              r'''$..ans''',
                                                            )
                                                                .toString()
                                                                .toLowerCase()
                                                                .contains(_model
                                                                    .webMoController
                                                                    .text
                                                                    .toLowerCase())) ||
                                                            (getJsonField(
                                                              e,
                                                              r'''$..rmark''',
                                                            )
                                                                .toString()
                                                                .toLowerCase()
                                                                .contains(_model
                                                                    .webMoController
                                                                    .text
                                                                    .toLowerCase())) ||
                                                            (getJsonField(
                                                              e,
                                                              r'''$..en_date''',
                                                            )
                                                                .toString()
                                                                .toLowerCase()
                                                                .contains(_model
                                                                    .webMoController
                                                                    .text
                                                                    .toLowerCase())) ||
                                                            (getJsonField(
                                                              e,
                                                              r'''$..n_en_date''',
                                                            )
                                                                .toString()
                                                                .toLowerCase()
                                                                .contains(_model
                                                                    .webMoController
                                                                    .text
                                                                    .toLowerCase())))
                                                        .toList()
                                                        .length >
                                                    0) &&
                                                responsiveVisibility(
                                                  context: context,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                              Builder(
                                                builder: (context) {
                                                  final saCareGapList = CareGapsCall
                                                              .data(
                                                        containerCareGapsResponse
                                                            .jsonBody,
                                                      )
                                                          ?.where((e) =>
                                                              (getJsonField(
                                                                e,
                                                                r'''$..qtn''',
                                                              )
                                                                  .toString()
                                                                  .toLowerCase()
                                                                  .contains(_model
                                                                      .webMoController
                                                                      .text
                                                                      .toLowerCase())) ||
                                                              (getJsonField(
                                                                e,
                                                                r'''$..ans''',
                                                              )
                                                                  .toString()
                                                                  .toLowerCase()
                                                                  .contains(_model
                                                                      .webMoController
                                                                      .text
                                                                      .toLowerCase())) ||
                                                              (getJsonField(
                                                                e,
                                                                r'''$..rmark''',
                                                              )
                                                                  .toString()
                                                                  .toLowerCase()
                                                                  .contains(_model
                                                                      .webMoController
                                                                      .text
                                                                      .toLowerCase())) ||
                                                              (getJsonField(
                                                                e,
                                                                r'''$..en_date''',
                                                              )
                                                                  .toString()
                                                                  .toLowerCase()
                                                                  .contains(_model
                                                                      .webMoController
                                                                      .text
                                                                      .toLowerCase())) ||
                                                              (getJsonField(
                                                                e,
                                                                r'''$..n_en_date''',
                                                              )
                                                                  .toString()
                                                                  .toLowerCase()
                                                                  .contains(
                                                                      _model.webMoController.text.toLowerCase())))
                                                          .toList()
                                                          ?.toList() ??
                                                      [];
                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          saCareGapList.length,
                                                          (saCareGapListIndex) {
                                                        final saCareGapListItem =
                                                            saCareGapList[
                                                                saCareGapListIndex];
                                                        return Visibility(
                                                          visible:
                                                              responsiveVisibility(
                                                            context: context,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        20.0,
                                                                        10.0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 10.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Container(
                                                                width: 300.0,
                                                                height: 140.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x1F000000),
                                                                      offset: Offset(
                                                                          0.0,
                                                                          2.0),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                0.0,
                                                                            runSpacing:
                                                                                0.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.start,
                                                                            direction:
                                                                                Axis.vertical,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children: [
                                                                              Container(
                                                                                width: 280.0,
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
                                                                                    InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                content: Text(FFAppState().SelectedMenu),
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
                                                                                      },
                                                                                      child: AutoSizeText(
                                                                                        getJsonField(
                                                                                          saCareGapListItem,
                                                                                          r'''$..qtn''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Inter',
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              0.0,
                                                                          runSpacing:
                                                                              0.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.vertical,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 280.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Wrap(
                                                                                    spacing: 0.0,
                                                                                    runSpacing: 0.0,
                                                                                    alignment: WrapAlignment.start,
                                                                                    crossAxisAlignment: WrapCrossAlignment.start,
                                                                                    direction: Axis.horizontal,
                                                                                    runAlignment: WrapAlignment.start,
                                                                                    verticalDirection: VerticalDirection.down,
                                                                                    clipBehavior: Clip.none,
                                                                                    children: [
                                                                                      AutoSizeText(
                                                                                        'Remark : ${getJsonField(
                                                                                          saCareGapListItem,
                                                                                          r'''$..rmark''',
                                                                                        ).toString()}'
                                                                                            .maybeHandleOverflow(maxChars: 30),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Inter',
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              0.0,
                                                                          runSpacing:
                                                                              0.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.vertical,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 280.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.spaceBetween,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 280.0,
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
                                                                                        AutoSizeText(
                                                                                          'Last Encounter Date : ${getJsonField(
                                                                                            saCareGapListItem,
                                                                                            r'''$..en_date''',
                                                                                          ).toString()}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 280.0,
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
                                                                                        AutoSizeText(
                                                                                          'Next Encounter Date : ${getJsonField(
                                                                                            saCareGapListItem,
                                                                                            r'''$..n_en_date''',
                                                                                          ).toString()}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.normal,
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
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'containerOnPageLoadAnimation']!),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                            if ((functions.jsonLength(
                                                        containerCareGapsResponse
                                                            .jsonBody) !=
                                                    0) &&
                                                responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                ))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  height: 500.0,
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final list = functions
                                                          .pagination(
                                                              functions
                                                                  .sortData(
                                                                      CareGapsCall
                                                                              .data(
                                                                        containerCareGapsResponse
                                                                            .jsonBody,
                                                                      )!
                                                                          .where((e) =>
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..qtn''',
                                                                              ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..ans''',
                                                                              ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..rmark''',
                                                                              ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..en_date''',
                                                                              ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..n_en_date''',
                                                                              ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..lastupdated''',
                                                                              ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())))
                                                                          .toList(),
                                                                      FFAppState().sort,
                                                                      FFAppState().sortcondition)
                                                                  .toList(),
                                                              _model.countValue2!,
                                                              FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1,
                                                              CareGapsCall.data(
                                                                containerCareGapsResponse
                                                                    .jsonBody,
                                                              )!
                                                                  .where((e) =>
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..qtn''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..ans''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..rmark''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..en_date''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..n_en_date''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..lastupdated''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())))
                                                                  .toList()
                                                                  .length)
                                                          .toList();
                                                      if (list.isEmpty) {
                                                        return MsgContainerWidget(
                                                          msg:
                                                              'No details available for the requested input.',
                                                        );
                                                      }
                                                      return SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: Container(
                                                          width: 1200.0,
                                                          height: 500.0,
                                                          child: DataTable2(
                                                            columns: [
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      Container(),
                                                                ),
                                                                fixedWidth: 1.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'qtn';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'k4xjid1e' /* Question */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'did')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'ans';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'kvqpldz5' /* Answer */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'name')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'rmark';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '2lg4lvom' /* Remarks */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'area')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'en_date';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            't1ls7dkq' /* Encounter
Date */
                                                                            ,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'clinic')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'n_en_date';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4pp819p1' /* New Encounter 
Date */
                                                                            ,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'patient')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().sort =
                                                                            'lastupdated';
                                                                      });
                                                                      if (FFAppState()
                                                                              .sortcondition ==
                                                                          true) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              false;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().sortcondition =
                                                                              true;
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'bma89psh' /* Last Updated */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                              ),
                                                                        ),
                                                                        if (FFAppState().sort ==
                                                                            'visit')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.sort,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            rows: (list
                                                                    as Iterable)
                                                                .mapIndexed((listIndex,
                                                                        listItem) =>
                                                                    [
                                                                      Container(),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..qtn''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..ans''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..rmark''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..en_date''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..n_en_date''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.black,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..lastupdated''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .map((c) =>
                                                                            DataCell(
                                                                                c))
                                                                        .toList())
                                                                .map((e) =>
                                                                    DataRow(
                                                                        cells:
                                                                            e))
                                                                .toList(),
                                                            headingRowColor:
                                                                MaterialStateProperty
                                                                    .all(
                                                              Color(0xFFCBB8FF),
                                                            ),
                                                            headingRowHeight:
                                                                56.0,
                                                            dataRowColor:
                                                                MaterialStateProperty
                                                                    .all(
                                                              Color(0x00000000),
                                                            ),
                                                            dataRowHeight: 56.0,
                                                            border: TableBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            dividerThickness:
                                                                1.0,
                                                            showBottomBorder:
                                                                true,
                                                            minWidth: 49.0,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            if ((functions.jsonLength(
                                                        containerCareGapsResponse
                                                            .jsonBody) !=
                                                    0) &&
                                                responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                ))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Container(
                                                    width: 1200.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(),
                                                    child: Wrap(
                                                      spacing: 0.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.end,
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
                                                        Wrap(
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
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ygcrspk8' /* Rows per page */,
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
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 60.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child:
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .countValueController2 ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model
                                                                        .countValue2 ??= FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5l3i1w4y' /* 7 */,
                                                                    ),
                                                                  ),
                                                                  options: [
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ia0ihyiu' /* 7 */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'eq04au55' /* 10 */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'r9684lmd' /* 25 */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '3cjh6p7s' /* 50 */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5pdgq1j9' /* 100 */,
                                                                    )
                                                                  ],
                                                                  onChanged:
                                                                      (val) async {
                                                                    setState(() =>
                                                                        _model.countValue2 =
                                                                            val);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .pagingcount = 1;
                                                                    });
                                                                  },
                                                                  width: 60.0,
                                                                  height: 50.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                      ),
                                                                  fillColor: Color(
                                                                      0xFFE0E0E0),
                                                                  elevation:
                                                                      2.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      0.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          4.0,
                                                                          0.0,
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
                                                            Text(
                                                              '${functions.startpage(FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1, _model.countValue2!).toString()}-${functions.endcount(CareGapsCall.data(
                                                                    containerCareGapsResponse
                                                                        .jsonBody,
                                                                  )!.where((e) => (getJsonField(
                                                                        e,
                                                                        r'''$..qtn''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                        e,
                                                                        r'''$..ans''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                        e,
                                                                        r'''$..rmark''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                        e,
                                                                        r'''$..en_date''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                        e,
                                                                        r'''$..n_en_date''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                        e,
                                                                        r'''$..lastupdated''',
                                                                      ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase()))).toList().length, FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1, _model.countValue2!).toString()} of ${functions.inttostring(CareGapsCall.data(
                                                                containerCareGapsResponse
                                                                    .jsonBody,
                                                              )!.where((e) => (getJsonField(
                                                                    e,
                                                                    r'''$..qtn''',
                                                                  ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                    e,
                                                                    r'''$..ans''',
                                                                  ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                    e,
                                                                    r'''$..rmark''',
                                                                  ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                    e,
                                                                    r'''$..en_date''',
                                                                  ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                    e,
                                                                    r'''$..n_en_date''',
                                                                  ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) || (getJsonField(
                                                                    e,
                                                                    r'''$..lastupdated''',
                                                                  ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase()))).toList().length)}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                            InkWell(
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
                                                                if (FFAppState()
                                                                        .pagingcount !=
                                                                    1) {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .pagingcount =
                                                                        FFAppState().pagingcount +
                                                                            -1;
                                                                  });
                                                                }
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_left,
                                                                color: Colors
                                                                    .black,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                            InkWell(
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
                                                                if (functions.pagemaxcount(
                                                                        CareGapsCall.data(
                                                                          containerCareGapsResponse
                                                                              .jsonBody,
                                                                        )!
                                                                            .where((e) =>
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..did''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..name''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..area''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..clinic''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..patient''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..visit''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())) ||
                                                                                (getJsonField(
                                                                                  e,
                                                                                  r'''$..ctime''',
                                                                                ).toString().toLowerCase().contains(_model.webMoController.text.toLowerCase())))
                                                                            .toList()
                                                                            .length,
                                                                        _model.countValue2!,
                                                                        FFAppState().pagingcount) ==
                                                                    true) {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .pagingcount =
                                                                        FFAppState().pagingcount +
                                                                            1;
                                                                  });
                                                                }
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_right_rounded,
                                                                color: Colors
                                                                    .black,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (functions.jsonLength(
                                                    containerCareGapsResponse
                                                        .jsonBody) ==
                                                0)
                                              Container(
                                                width: 1200.0,
                                                height: 500.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wlfa0omb' /* No questions are answered yet! */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                            if (CareGapsCall.data(
                                                  containerCareGapsResponse
                                                      .jsonBody,
                                                )
                                                    ?.where((e) =>
                                                        (getJsonField(
                                                          e,
                                                          r'''$..qtn''',
                                                        )
                                                            .toString()
                                                            .toLowerCase()
                                                            .contains(_model
                                                                .webMoController
                                                                .text
                                                                .toLowerCase())) ||
                                                        (getJsonField(
                                                          e,
                                                          r'''$..ans''',
                                                        )
                                                            .toString()
                                                            .toLowerCase()
                                                            .contains(_model
                                                                .webMoController
                                                                .text
                                                                .toLowerCase())) ||
                                                        (getJsonField(
                                                          e,
                                                          r'''$..rmark''',
                                                        )
                                                            .toString()
                                                            .toLowerCase()
                                                            .contains(_model
                                                                .webMoController
                                                                .text
                                                                .toLowerCase())) ||
                                                        (getJsonField(
                                                          e,
                                                          r'''$..en_date''',
                                                        )
                                                            .toString()
                                                            .toLowerCase()
                                                            .contains(_model
                                                                .webMoController
                                                                .text
                                                                .toLowerCase())) ||
                                                        (getJsonField(
                                                          e,
                                                          r'''$..n_en_date''',
                                                        )
                                                            .toString()
                                                            .toLowerCase()
                                                            .contains(_model
                                                                .webMoController
                                                                .text
                                                                .toLowerCase())))
                                                    .toList()
                                                    ?.length ==
                                                0)
                                              Container(
                                                width: 1200.0,
                                                height: 500.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oo1uawza' /* No details available for the r... */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
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
