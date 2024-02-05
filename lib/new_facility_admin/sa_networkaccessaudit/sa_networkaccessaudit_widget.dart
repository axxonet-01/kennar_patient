import '/backend/api_requests/api_calls.dart';
import '/components/msg_container_widget.dart';
import '/components/patient_header_widget.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
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
import 'sa_networkaccessaudit_model.dart';
export 'sa_networkaccessaudit_model.dart';

class SaNetworkaccessauditWidget extends StatefulWidget {
  const SaNetworkaccessauditWidget({
    super.key,
    this.requestType,
  });

  final String? requestType;

  @override
  State<SaNetworkaccessauditWidget> createState() =>
      _SaNetworkaccessauditWidgetState();
}

class _SaNetworkaccessauditWidgetState extends State<SaNetworkaccessauditWidget>
    with TickerProviderStateMixin {
  late SaNetworkaccessauditModel _model;

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
    _model = createModel(context, () => SaNetworkaccessauditModel());

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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 70.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.86,
                    decoration: BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.spaceBetween,
                                crossAxisAlignment: WrapCrossAlignment.center,
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
                                        WrapCrossAlignment.start,
                                    direction: Axis.vertical,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
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
                                                    '4l10h973' /* Dashboard */,
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
                                              Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2znpjwq4' /* Network Access Details */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
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
                                        WrapCrossAlignment.center,
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
                                          setState(() {
                                            FFAppState().pagingcount = 1;
                                          });
                                        },
                                        child: Container(
                                          width: 320.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          child: TextFormField(
                                            controller: _model.webController,
                                            focusNode: _model.webFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.webController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              setState(() {
                                                FFAppState().pagingcount = 1;
                                              });
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'm6xtw8qj' /* Search.. */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF5A2BA8),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                              suffixIcon: _model.webController!
                                                      .text.isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model.webController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 22.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            validator: _model
                                                .webControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: GetUserDetailsOverviewCall.call(
                                formstep: 'getPatientDetails',
                                refreshToken: FFAppState().sessionRefreshToken,
                                requestType: widget.requestType,
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
                                final containerGetUserDetailsOverviewResponse =
                                    snapshot.data!;
                                return Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              if (GetUserDetailsOverviewCall
                                                          .data(
                                                    containerGetUserDetailsOverviewResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          (getJsonField(
                                                            e,
                                                            r'''$..patient_name''',
                                                          )
                                                              .toString()
                                                              .toLowerCase()
                                                              .contains(_model
                                                                  .webController
                                                                  .text
                                                                  .toLowerCase())) ||
                                                          (getJsonField(
                                                            e,
                                                            r'''$..init''',
                                                          )
                                                              .toString()
                                                              .toLowerCase()
                                                              .contains(_model
                                                                  .webController
                                                                  .text
                                                                  .toLowerCase())) ||
                                                          (getJsonField(
                                                            e,
                                                            r'''$..date''',
                                                          )
                                                              .toString()
                                                              .toLowerCase()
                                                              .contains(_model
                                                                  .webController
                                                                  .text
                                                                  .toLowerCase())) ||
                                                          (getJsonField(
                                                            e,
                                                            r'''$..type''',
                                                          )
                                                              .toString()
                                                              .toLowerCase()
                                                              .contains(_model
                                                                  .webController
                                                                  .text
                                                                  .toLowerCase())) ||
                                                          (getJsonField(
                                                            e,
                                                            r'''$..status''',
                                                          )
                                                              .toString()
                                                              .toLowerCase()
                                                              .contains(_model
                                                                  .webController
                                                                  .text
                                                                  .toLowerCase())))
                                                      .toList()
                                                      ?.length ==
                                                  0)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 30.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCBB8FF),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
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
                                                            if (FFAppState()
                                                                    .defaultRoleId ==
                                                                '5')
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'qzcchmk5' /* Name */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                              ),
                                                            if (FFAppState()
                                                                    .defaultRoleId !=
                                                                '5')
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '6fgasjb6' /* Patient Name */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                              ),
                                                          ],
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rw92ny4l' /* Initiated By */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2yzzkiho' /* Date */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'nwsuhra2' /* Type */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3fbj18ce' /* Status */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lrxsrama' /* Action */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 400.0,
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final list = functions
                                                          .pagination(
                                                              functions
                                                                  .sortData(
                                                                      GetUserDetailsOverviewCall
                                                                              .data(
                                                                        containerGetUserDetailsOverviewResponse
                                                                            .jsonBody,
                                                                      )!
                                                                          .where((e) =>
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..patient_name''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..init''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..date''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..type''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..status''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())))
                                                                          .toList(),
                                                                      FFAppState().sort,
                                                                      FFAppState().sortcondition)
                                                                  .toList(),
                                                              _model.countValue!,
                                                              FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1,
                                                              GetUserDetailsOverviewCall.data(
                                                                containerGetUserDetailsOverviewResponse
                                                                    .jsonBody,
                                                              )!
                                                                  .where((e) =>
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..patient_name''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..init''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..date''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..type''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                      (getJsonField(
                                                                        e,
                                                                        r'''$..status''',
                                                                      ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())))
                                                                  .toList()
                                                                  .length)
                                                          .toList();
                                                      if (list.isEmpty) {
                                                        return MsgContainerWidget(
                                                          msg:
                                                              'No record found',
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
                                                          height: 400.0,
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
                                                                fixedWidth: 0.0,
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
                                                                            'patient_name';
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
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            if (FFAppState().defaultRoleId !=
                                                                                '5')
                                                                              Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'h8dy5nv7' /* Patient Name */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: Colors.black,
                                                                                    ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                        if (FFAppState().defaultRoleId ==
                                                                            '5')
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '76tcsm79' /* Name */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: Colors.black,
                                                                                ),
                                                                          ),
                                                                        if (FFAppState().sort ==
                                                                            'did')
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
                                                                            'init';
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
                                                                            'b0x6uxem' /* Initiated By */,
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
                                                                            'date';
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
                                                                            'pyezuww6' /* Facility Name */,
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
                                                                            'type';
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
                                                                            'ggo03r0a' /* Date */,
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
                                                                            'status';
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
                                                                            '7q56p8b1' /* Type */,
                                                                          ),
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
                                                                            'status';
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
                                                                            'z6n4jwc4' /* Hospital/ 
ER Visits  */
                                                                            ,
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
                                                                fixedWidth: 0.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
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
                                                                          'en7avyu1' /* Chat
Time  */
                                                                          ,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: Colors.black,
                                                                            ),
                                                                      ),
                                                                      if (FFAppState()
                                                                              .sort ==
                                                                          'ctime')
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              2.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.sort,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                fixedWidth: 0.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
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
                                                                          '76w5nhvy' /* Status */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: Colors.black,
                                                                            ),
                                                                      ),
                                                                      if (FFAppState()
                                                                              .sort ==
                                                                          'patient')
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.sort,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '08odbs86' /* Action */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                Colors.black,
                                                                          ),
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
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if (functions.listcontainitemas(
                                                                                  FFAppState().staff.toList(),
                                                                                  getJsonField(
                                                                                    listItem,
                                                                                    r'''$..id''',
                                                                                  ).toString()) ==
                                                                              false)
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                setState(() {
                                                                                  FFAppState().addToStaff(getJsonField(
                                                                                    listItem,
                                                                                    r'''$..id''',
                                                                                  ).toString());
                                                                                });
                                                                              },
                                                                              child: Icon(
                                                                                Icons.circle_outlined,
                                                                                color: Colors.black,
                                                                                size: 22.0,
                                                                              ),
                                                                            ),
                                                                          if (functions.listcontainitemas(
                                                                                  FFAppState().staff.toList(),
                                                                                  getJsonField(
                                                                                    listItem,
                                                                                    r'''$..id''',
                                                                                  ).toString()) ==
                                                                              true)
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                setState(() {
                                                                                  FFAppState().removeFromStaff(getJsonField(
                                                                                    listItem,
                                                                                    r'''$..id''',
                                                                                  ).toString());
                                                                                });
                                                                              },
                                                                              child: Icon(
                                                                                Icons.check_circle_sharp,
                                                                                color: Color(0xFF8A61FF),
                                                                                size: 22.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..patient_name''',
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
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                listItem,
                                                                                r'''$..init''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Inter',
                                                                                    color: Colors.black,
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listItem,
                                                                            r'''$..facilityname''',
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
                                                                            r'''$..date''',
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
                                                                            r'''$..type''',
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
                                                                      Visibility(
                                                                        visible:
                                                                            responsiveVisibility(
                                                                          context:
                                                                              context,
                                                                          phone:
                                                                              false,
                                                                          tablet:
                                                                              false,
                                                                          tabletLandscape:
                                                                              false,
                                                                          desktop:
                                                                              false,
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              listItem,
                                                                              r'''$..visits''',
                                                                            ).toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
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
                                                                            r'''$..ctime''',
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
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                            desktop:
                                                                                false,
                                                                          ))
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.ststus = await ChatCall.call(
                                                                                    refreshToken: FFAppState().sessionRefreshToken,
                                                                                    formstep: 'rocketchatstatus',
                                                                                    userId: getJsonField(
                                                                                      listItem,
                                                                                      r'''$..m_id''',
                                                                                    ).toString(),
                                                                                  );
                                                                                  if ((_model.ststus?.succeeded ?? true)) {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            content: Text('status changed.'),
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
                                                                                  } else {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            content: Text('something went wrong.'),
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

                                                                                  setState(() {});
                                                                                },
                                                                                text: getJsonField(
                                                                                  listItem,
                                                                                  r'''$..status''',
                                                                                ).toString(),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: Colors.white,
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
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                listItem,
                                                                                r'''$..status''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Inter',
                                                                                    color: Colors.black,
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'byv9dyn8' /* View Details */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: 'Inter',
                                                                                    color: Colors.black,
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
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
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
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
                                                              'qh69d9vn' /* Rows per page */,
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
                                                                EdgeInsets.all(
                                                                    2.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .countValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.countValue ??=
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'y8ra92a4' /* 20 */,
                                                                ),
                                                              ),
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'esg55udz' /* 20 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'uyioy3lc' /* 40 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'sfhujoyh' /* 60 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '90c3fec0' /* 80 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'azho19si' /* 100 */,
                                                                )
                                                              ],
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.countValue =
                                                                        val);
                                                                setState(() {
                                                                  FFAppState()
                                                                      .pagingcount = 1;
                                                                });
                                                              },
                                                              width: 90.0,
                                                              height: 40.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                              fillColor: Color(
                                                                  0xFFE0E0E0),
                                                              elevation: 2.0,
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderWidth: 0.0,
                                                              borderRadius: 0.0,
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
                                                          Text(
                                                            '${functions.startpage(FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1, _model.countValue!).toString()}-${functions.endcount(GetUserDetailsOverviewCall.data(
                                                                  containerGetUserDetailsOverviewResponse
                                                                      .jsonBody,
                                                                )!.where((e) => (getJsonField(
                                                                      e,
                                                                      r'''$..patient_name''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..init''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..date''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..type''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                      e,
                                                                      r'''$..status''',
                                                                    ).toString().toLowerCase().contains(_model.webController.text.toLowerCase()))).toList().length, FFAppState().pagingcount >= 1 ? FFAppState().pagingcount : 1, _model.countValue!).toString()} of ${functions.inttostring(GetUserDetailsOverviewCall.data(
                                                              containerGetUserDetailsOverviewResponse
                                                                  .jsonBody,
                                                            )!.where((e) => (getJsonField(
                                                                  e,
                                                                  r'''$..patient_name''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..init''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..date''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..type''',
                                                                ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) || (getJsonField(
                                                                  e,
                                                                  r'''$..status''',
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
                                                                      GetUserDetailsOverviewCall.data(
                                                                        containerGetUserDetailsOverviewResponse
                                                                            .jsonBody,
                                                                      )!
                                                                          .where((e) =>
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..patient_name''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..init''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..date''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..type''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())) ||
                                                                              (getJsonField(
                                                                                e,
                                                                                r'''$..status''',
                                                                              ).toString().toLowerCase().contains(_model.webController.text.toLowerCase())))
                                                                          .toList()
                                                                          .length,
                                                                      _model.countValue!,
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
                                            ],
                                          ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (functions.jsonLength(
                                                      containerGetUserDetailsOverviewResponse
                                                          .jsonBody) >
                                                  0)
                                                Builder(
                                                  builder: (context) {
                                                    final saCareGapList = GetUserDetailsOverviewCall
                                                                .alldata(
                                                          containerGetUserDetailsOverviewResponse
                                                              .jsonBody,
                                                        )
                                                            ?.where((e) =>
                                                                (getJsonField(
                                                                  e,
                                                                  r'''$..patient_name''',
                                                                )
                                                                    .toString()
                                                                    .toLowerCase()
                                                                    .contains(_model
                                                                        .webController
                                                                        .text
                                                                        .toLowerCase())) ||
                                                                (getJsonField(
                                                                  e,
                                                                  r'''$..init''',
                                                                )
                                                                    .toString()
                                                                    .toLowerCase()
                                                                    .contains(_model
                                                                        .webController
                                                                        .text
                                                                        .toLowerCase())) ||
                                                                (getJsonField(
                                                                  e,
                                                                  r'''$..date''',
                                                                )
                                                                    .toString()
                                                                    .toLowerCase()
                                                                    .contains(_model
                                                                        .webController
                                                                        .text
                                                                        .toLowerCase())) ||
                                                                (getJsonField(
                                                                  e,
                                                                  r'''$..type''',
                                                                )
                                                                    .toString()
                                                                    .toLowerCase()
                                                                    .contains(_model
                                                                        .webController
                                                                        .text
                                                                        .toLowerCase())))
                                                            .toList()
                                                            ?.toList() ??
                                                        [];
                                                    return SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            saCareGapList
                                                                .length,
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
                                                                child:
                                                                    Container(
                                                                  width: 320.0,
                                                                  height: 120.0,
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
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width:
                                                                          1.0,
                                                                    ),
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
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.vertical,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                              r'''$..patient_name''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: 50.0,
                                                                                          height: 40.0,
                                                                                          child: custom_widgets.PopupMenu(
                                                                                            width: 50.0,
                                                                                            height: 40.0,
                                                                                            menuElevation: 2.0,
                                                                                            values: FFAppState().networkAudit,
                                                                                            action: () async {},
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Wrap(
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.vertical,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
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
                                                                                            'Initiated By${getJsonField(
                                                                                              saCareGapListItem,
                                                                                              r'''$..init''',
                                                                                            ).toString()}'
                                                                                                .maybeHandleOverflow(maxChars: 30),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 12.0,
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
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.vertical,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
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
                                                                                            'Date: ${getJsonField(
                                                                                              saCareGapListItem,
                                                                                              r'''$..date''',
                                                                                            ).toString()}'
                                                                                                .maybeHandleOverflow(maxChars: 30),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 12.0,
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
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.vertical,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
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
                                                                                            'Type :${getJsonField(
                                                                                              saCareGapListItem,
                                                                                              r'''$..type''',
                                                                                            ).toString()}'
                                                                                                .maybeHandleOverflow(maxChars: 30),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
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
                                              if (functions.jsonLength(
                                                      containerGetUserDetailsOverviewResponse
                                                          .jsonBody) ==
                                                  0)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 150.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k70lk8ow' /* No data found! */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
          ],
        ),
      ),
    );
  }
}
