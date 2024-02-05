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
import '/flutter_flow/instant_timer.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'issue_tracking_listing_mob_model.dart';
export 'issue_tracking_listing_mob_model.dart';

class IssueTrackingListingMobWidget extends StatefulWidget {
  const IssueTrackingListingMobWidget({super.key});

  @override
  State<IssueTrackingListingMobWidget> createState() =>
      _IssueTrackingListingMobWidgetState();
}

class _IssueTrackingListingMobWidgetState
    extends State<IssueTrackingListingMobWidget> with TickerProviderStateMixin {
  late IssueTrackingListingMobModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssueTrackingListingMobModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().uploadimgname = '';
      });
      setState(() {
        FFAppState().visibleDisplay = '0';
      });
      setState(() {
        FFAppState().idList = [];
      });
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1),
        callback: (timer) async {},
        startImmediately: true,
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 100.0, 10.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().requestStatus == false)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'hsrym0og' /* Help */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 25.0,
                                ),
                          ),
                        ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.95,
                              height: 600.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0, 0),
                                    child: TabBar(
                                      labelColor: FlutterFlowTheme.of(context)
                                          .customColor2,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium,
                                      unselectedLabelStyle: TextStyle(),
                                      indicatorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      padding: EdgeInsets.all(4.0),
                                      tabs: [
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'wgffne1t' /* Open */,
                                          ),
                                        ),
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '4ayf4iwk' /* Closed */,
                                          ),
                                        ),
                                      ],
                                      controller: _model.tabBarController,
                                      onTap: (i) async {
                                        [() async {}, () async {}][i]();
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _model.tabBarController,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future:
                                                  IssuesTrackingListCall.call(
                                                refreshToken: FFAppState()
                                                    .sessionRefreshToken,
                                                formStep: 'issueListPrPtSt',
                                                id: FFAppState().sortdata,
                                                status: 'open',
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
                                                final columnIssuesTrackingListResponse =
                                                    snapshot.data!;
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (functions.jsonLength(
                                                              columnIssuesTrackingListResponse
                                                                  .jsonBody) !=
                                                          0)
                                                        Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .spaceBetween,
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
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final categary = functions
                                                                        .dropdownfilter(getJsonField(
                                                                          columnIssuesTrackingListResponse
                                                                              .jsonBody,
                                                                          r'''$..category''',
                                                                        ).toString())
                                                                        .toList();
                                                                    return SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            categary.length,
                                                                            (categaryIndex) {
                                                                          final categaryItem =
                                                                              categary[categaryIndex];
                                                                          return Padding(
                                                                            padding:
                                                                                EdgeInsets.all(5.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                if (categaryItem == 'All-') {
                                                                                  setState(() {
                                                                                    FFAppState().issuesTrack = '';
                                                                                  });
                                                                                } else {
                                                                                  setState(() {
                                                                                    FFAppState().issuesTrack = functions.trim(categaryItem);
                                                                                  });
                                                                                }
                                                                              },
                                                                              child: Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.center,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  FaIcon(
                                                                                    FontAwesomeIcons.solidCircle,
                                                                                    color: () {
                                                                                      if (categaryItem == 'Appointment') {
                                                                                        return Color(0xFF8A61FF);
                                                                                      } else if (categaryItem == 'Data Discrepancy') {
                                                                                        return Color(0xFFC3B1F8);
                                                                                      } else if (categaryItem == 'Data Consent') {
                                                                                        return Color(0xFF1D0762);
                                                                                      } else {
                                                                                        return FlutterFlowTheme.of(context).primaryBackground;
                                                                                      }
                                                                                    }(),
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      categaryItem,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.2,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Visibility(
                                                                visible:
                                                                    responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'wsrv1bce' /* Filters */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController1 ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options:
                                                                            functions.dropdownfilter(getJsonField(
                                                                          columnIssuesTrackingListResponse
                                                                              .jsonBody,
                                                                          r'''$..category''',
                                                                        ).toString()),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(() =>
                                                                              _model.dropDownValue1 = val);
                                                                          if (_model.dropDownValue1 ==
                                                                              'All') {
                                                                            setState(() {
                                                                              FFAppState().issuesTrack = '';
                                                                            });
                                                                          } else {
                                                                            setState(() {
                                                                              FFAppState().issuesTrack = functions.trim(_model.dropDownValue1!);
                                                                            });
                                                                          }
                                                                        },
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            30.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'mejj24oi' /* All */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            Color(0xFFDADADA),
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            15.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
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
                                                                      FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController2 ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options: [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'lxpn17m0' /* Option 1 */,
                                                                          )
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownValue2 = val),
                                                                        width:
                                                                            140.0,
                                                                        height:
                                                                            30.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'w5ujmtjh' /* Last 2 years */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            Color(0xFFDADADA),
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            15.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
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
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      if ((functions.jsonLength(
                                                                  columnIssuesTrackingListResponse
                                                                      .jsonBody) !=
                                                              0) &&
                                                          responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
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
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '58kdkkzb' /* Filters */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController3 ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options:
                                                                            functions.dropdownfilter(getJsonField(
                                                                          columnIssuesTrackingListResponse
                                                                              .jsonBody,
                                                                          r'''$..category''',
                                                                        ).toString()),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(() =>
                                                                              _model.dropDownValue3 = val);
                                                                          if (_model.dropDownValue3 ==
                                                                              'All') {
                                                                            setState(() {
                                                                              FFAppState().issuesTrack = '';
                                                                            });
                                                                          } else {
                                                                            setState(() {
                                                                              FFAppState().issuesTrack = functions.trim(_model.dropDownValue3!);
                                                                            });
                                                                          }
                                                                        },
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            30.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '7me2wliw' /* All */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            Color(0xFFDADADA),
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            15.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
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
                                                                      FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController4 ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options: [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'nxe6a47g' /* Option 1 */,
                                                                          )
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownValue4 = val),
                                                                        width:
                                                                            140.0,
                                                                        height:
                                                                            30.0,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'qnhlzrlu' /* Last 2 years */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            Color(0xFFDADADA),
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            15.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
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
                                                                  ],
                                                                ),
                                                              ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final categary = functions
                                                                          .dropdownfilter(getJsonField(
                                                                            columnIssuesTrackingListResponse.jsonBody,
                                                                            r'''$..category''',
                                                                          ).toString())
                                                                          .toList();
                                                                      return SingleChildScrollView(
                                                                        scrollDirection:
                                                                            Axis.horizontal,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(
                                                                              categary.length,
                                                                              (categaryIndex) {
                                                                            final categaryItem =
                                                                                categary[categaryIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsets.all(5.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  setState(() {
                                                                                    FFAppState().issuesTrack = categaryItem;
                                                                                  });
                                                                                },
                                                                                child: Wrap(
                                                                                  spacing: 0.0,
                                                                                  runSpacing: 0.0,
                                                                                  alignment: WrapAlignment.start,
                                                                                  crossAxisAlignment: WrapCrossAlignment.center,
                                                                                  direction: Axis.horizontal,
                                                                                  runAlignment: WrapAlignment.start,
                                                                                  verticalDirection: VerticalDirection.down,
                                                                                  clipBehavior: Clip.none,
                                                                                  children: [
                                                                                    FaIcon(
                                                                                      FontAwesomeIcons.solidCircle,
                                                                                      color: () {
                                                                                        if (FFAppState().issuesTrack == 'Appointment') {
                                                                                          return FlutterFlowTheme.of(context).primary;
                                                                                        } else if (FFAppState().issuesTrack == 'Data Descrepency') {
                                                                                          return Color(0xFFC3B1F8);
                                                                                        } else {
                                                                                          return FlutterFlowTheme.of(context).primary;
                                                                                        }
                                                                                      }(),
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        categaryItem,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      if (FFAppState()
                                                                  .issuesTrack ==
                                                              null ||
                                                          FFAppState()
                                                                  .issuesTrack ==
                                                              '')
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (functions.jsonLength(
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody) >
                                                                1)
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final list =
                                                                      getJsonField(
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody,
                                                                    r'''$[*]''',
                                                                  ).toList();
                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        list.length,
                                                                        (listIndex) {
                                                                      final listItem =
                                                                          list[
                                                                              listIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 1.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                0.0,
                                                                            runSpacing:
                                                                                0.0,
                                                                            alignment:
                                                                                WrapAlignment.spaceBetween,
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
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                    child: FaIcon(
                                                                                      FontAwesomeIcons.solidCircle,
                                                                                      color: () {
                                                                                        if ('${getJsonField(
                                                                                              listItem,
                                                                                              r'''$..category''',
                                                                                            ).toString()}' ==
                                                                                            'Appointment') {
                                                                                          return FlutterFlowTheme.of(context).primary;
                                                                                        } else if ('${getJsonField(
                                                                                              listItem,
                                                                                              r'''$..category''',
                                                                                            ).toString()}' ==
                                                                                            'Data Discrepancy') {
                                                                                          return Color(0xFFC3B1F8);
                                                                                        } else if ('${getJsonField(
                                                                                              listItem,
                                                                                              r'''$..category''',
                                                                                            ).toString()}' ==
                                                                                            'Data Consent') {
                                                                                          return Color(0xFF1D0762);
                                                                                        } else {
                                                                                          return FlutterFlowTheme.of(context).primaryBackground;
                                                                                        }
                                                                                      }(),
                                                                                      size: 15.0,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                                            Text(
                                                                                              getJsonField(
                                                                                                listItem,
                                                                                                r'''$..issue_id''',
                                                                                              ).toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                            if (FFAppState().visibleDisplay == '0')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    setState(() {
                                                                                                      FFAppState().visibleDisplay = getJsonField(
                                                                                                        listItem,
                                                                                                        r'''$..issue_id''',
                                                                                                      ).toString();
                                                                                                    });
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.keyboard_arrow_down,
                                                                                                    color: FlutterFlowTheme.of(context).customColor1,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (FFAppState().visibleDisplay ==
                                                                                                getJsonField(
                                                                                                  listItem,
                                                                                                  r'''$..issue_id''',
                                                                                                ))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    setState(() {
                                                                                                      FFAppState().visibleDisplay = '0';
                                                                                                    });
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.keyboard_arrow_up,
                                                                                                    color: FlutterFlowTheme.of(context).customColor1,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        if (FFAppState().visibleDisplay == '0')
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
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
                                                                                                Text(
                                                                                                  getJsonField(
                                                                                                    listItem,
                                                                                                    r'''$..description''',
                                                                                                  ).toString().maybeHandleOverflow(maxChars: 100),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                                if (functions.noOfCharactersInString(getJsonField(
                                                                                                      listItem,
                                                                                                      r'''$..description''',
                                                                                                    ).toString()) >=
                                                                                                    100)
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'ap6545kb' /* ... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        if (FFAppState().visibleDisplay ==
                                                                                            getJsonField(
                                                                                              listItem,
                                                                                              r'''$..issue_id''',
                                                                                            ))
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                SingleChildScrollView(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'lgwqrpvu' /* Name:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    getJsonField(
                                                                                                                      listItem,
                                                                                                                      r'''$..patientname''',
                                                                                                                    ).toString(),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'awg73czo' /* Facility Name:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    getJsonField(
                                                                                                                      listItem,
                                                                                                                      r'''$..fname''',
                                                                                                                    ).toString(),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'tb8s0pqm' /* Date:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      getJsonField(
                                                                                                                        listItem,
                                                                                                                        r'''$..date''',
                                                                                                                      ).toString(),
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'g8l8165p' /* Description:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              ),
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
                                                                                                                  Align(
                                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        getJsonField(
                                                                                                                          listItem,
                                                                                                                          r'''$..description''',
                                                                                                                        ).toString(),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      if ('${getJsonField(
                                                                                                                listItem,
                                                                                                                r'''$..image''',
                                                                                                              ).toString()}' !=
                                                                                                              null &&
                                                                                                          '${getJsonField(
                                                                                                                listItem,
                                                                                                                r'''$..image''',
                                                                                                              ).toString()}' !=
                                                                                                              '')
                                                                                                        Container(
                                                                                                          width: 350.0,
                                                                                                          height: 300.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          ),
                                                                                                          child: Wrap(
                                                                                                            spacing: 0.0,
                                                                                                            runSpacing: 0.0,
                                                                                                            alignment: WrapAlignment.center,
                                                                                                            crossAxisAlignment: WrapCrossAlignment.center,
                                                                                                            direction: Axis.horizontal,
                                                                                                            runAlignment: WrapAlignment.start,
                                                                                                            verticalDirection: VerticalDirection.down,
                                                                                                            clipBehavior: Clip.none,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                                child: FutureBuilder<ApiCallResponse>(
                                                                                                                  future: ManageFacilityCall.call(
                                                                                                                    refreshToken: FFAppState().sessionRefreshToken,
                                                                                                                    formStep: 'issueimage',
                                                                                                                    facilityLogo: getJsonField(
                                                                                                                      listItem,
                                                                                                                      r'''$..image''',
                                                                                                                    ).toString(),
                                                                                                                  ),
                                                                                                                  builder: (context, snapshot) {
                                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                                    if (!snapshot.hasData) {
                                                                                                                      return Center(
                                                                                                                        child: SizedBox(
                                                                                                                          width: 20.0,
                                                                                                                          height: 20.0,
                                                                                                                          child: CircularProgressIndicator(
                                                                                                                            valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                              Color(0x00FFFFFF),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      );
                                                                                                                    }
                                                                                                                    final base64ImageManageFacilityResponse = snapshot.data!;
                                                                                                                    return Container(
                                                                                                                      width: 350.0,
                                                                                                                      height: 300.0,
                                                                                                                      child: custom_widgets.Base64Image(
                                                                                                                        width: 350.0,
                                                                                                                        height: 300.0,
                                                                                                                        base64: getJsonField(
                                                                                                                          base64ImageManageFacilityResponse.jsonBody,
                                                                                                                          r'''$..data''',
                                                                                                                        ).toString(),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ),
                                                                                                              ),
                                                                                                              if (getJsonField(
                                                                                                                    listItem,
                                                                                                                    r'''$..image''',
                                                                                                                  ) ==
                                                                                                                  null)
                                                                                                                Text(
                                                                                                                  FFLocalizations.of(context).getText(
                                                                                                                    '7v6hfvv9' /* Image not available. */,
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {},
                                                                                text: getJsonField(
                                                                                  listItem,
                                                                                  r'''$..status''',
                                                                                ).toString(),
                                                                                options: FFButtonOptions(
                                                                                  width: 80.0,
                                                                                  height: 20.0,
                                                                                  padding: EdgeInsets.all(0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: () {
                                                                                    if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        null) {
                                                                                      return Color(0xFFFDD06A);
                                                                                    } else if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        'On hold') {
                                                                                      return Color(0xFFEF8C22);
                                                                                    } else if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        'Open') {
                                                                                      return Color(0xFFFDD06A);
                                                                                    } else if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        'Rejected') {
                                                                                      return Color(0xFFF15C6D);
                                                                                    } else {
                                                                                      return Color(0xFFEF8C22);
                                                                                    }
                                                                                  }(),
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if (functions.jsonLength(
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody) ==
                                                                1)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        0.0,
                                                                    runSpacing:
                                                                        0.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .spaceBetween,
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
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                3.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.solidCircle,
                                                                              color: () {
                                                                                if ('${getJsonField(
                                                                                      columnIssuesTrackingListResponse.jsonBody,
                                                                                      r'''$..category''',
                                                                                    ).toString()}' ==
                                                                                    'Appointment') {
                                                                                  return FlutterFlowTheme.of(context).primary;
                                                                                } else if ('${getJsonField(
                                                                                      columnIssuesTrackingListResponse.jsonBody,
                                                                                      r'''$..category''',
                                                                                    ).toString()}' ==
                                                                                    'Data Discrepancy') {
                                                                                  return Color(0xFFC3B1F8);
                                                                                } else if ('${getJsonField(
                                                                                      columnIssuesTrackingListResponse.jsonBody,
                                                                                      r'''$..category''',
                                                                                    ).toString()}' ==
                                                                                    'Data Consent') {
                                                                                  return Color(0xFF1D0762);
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).primaryBackground;
                                                                                }
                                                                              }(),
                                                                              size: 15.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                                    Text(
                                                                                      getJsonField(
                                                                                        columnIssuesTrackingListResponse.jsonBody,
                                                                                        r'''$..issue_id''',
                                                                                      ).toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                    ),
                                                                                    if (FFAppState().visibleDisplay == '0')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().visibleDisplay = getJsonField(
                                                                                                columnIssuesTrackingListResponse.jsonBody,
                                                                                                r'''$..issue_id''',
                                                                                              ).toString();
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_down,
                                                                                            color: FlutterFlowTheme.of(context).customColor1,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    if (FFAppState().visibleDisplay ==
                                                                                        getJsonField(
                                                                                          columnIssuesTrackingListResponse.jsonBody,
                                                                                          r'''$..issue_id''',
                                                                                        ))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().visibleDisplay = '0';
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_up,
                                                                                            color: FlutterFlowTheme.of(context).customColor1,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                if (FFAppState().visibleDisplay == '0')
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
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
                                                                                        Text(
                                                                                          getJsonField(
                                                                                            columnIssuesTrackingListResponse.jsonBody,
                                                                                            r'''$..description''',
                                                                                          ).toString().maybeHandleOverflow(maxChars: 100),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        ),
                                                                                        if (functions.noOfCharactersInString(getJsonField(
                                                                                              columnIssuesTrackingListResponse.jsonBody,
                                                                                              r'''$..description''',
                                                                                            ).toString()) >=
                                                                                            100)
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '03qk6xpc' /* ... */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                if (FFAppState().visibleDisplay ==
                                                                                    getJsonField(
                                                                                      columnIssuesTrackingListResponse.jsonBody,
                                                                                      r'''$..issue_id''',
                                                                                    ))
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        SingleChildScrollView(
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          '7g247ug0' /* Name:  */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Inter',
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
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
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Text(
                                                                                                            getJsonField(
                                                                                                              columnIssuesTrackingListResponse.jsonBody,
                                                                                                              r'''$..patientname''',
                                                                                                            ).toString(),
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          '6a0y7d8b' /* Facility Name:  */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Inter',
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
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
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Text(
                                                                                                            getJsonField(
                                                                                                              columnIssuesTrackingListResponse.jsonBody,
                                                                                                              r'''$..fname''',
                                                                                                            ).toString(),
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          'bep9fko8' /* Date:  */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Inter',
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
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
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              getJsonField(
                                                                                                                columnIssuesTrackingListResponse.jsonBody,
                                                                                                                r'''$..date''',
                                                                                                              ).toString(),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          'alr0i6p7' /* Description:  */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Inter',
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
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
                                                                                                          Align(
                                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                getJsonField(
                                                                                                                  columnIssuesTrackingListResponse.jsonBody,
                                                                                                                  r'''$..description''',
                                                                                                                ).toString(),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              if ('${getJsonField(
                                                                                                        columnIssuesTrackingListResponse.jsonBody,
                                                                                                        r'''$..image''',
                                                                                                      ).toString()}' !=
                                                                                                      null &&
                                                                                                  '${getJsonField(
                                                                                                        columnIssuesTrackingListResponse.jsonBody,
                                                                                                        r'''$..image''',
                                                                                                      ).toString()}' !=
                                                                                                      '')
                                                                                                Container(
                                                                                                  width: 350.0,
                                                                                                  height: 300.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Wrap(
                                                                                                    spacing: 0.0,
                                                                                                    runSpacing: 0.0,
                                                                                                    alignment: WrapAlignment.center,
                                                                                                    crossAxisAlignment: WrapCrossAlignment.center,
                                                                                                    direction: Axis.horizontal,
                                                                                                    runAlignment: WrapAlignment.start,
                                                                                                    verticalDirection: VerticalDirection.down,
                                                                                                    clipBehavior: Clip.none,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: FutureBuilder<ApiCallResponse>(
                                                                                                          future: ManageFacilityCall.call(
                                                                                                            refreshToken: FFAppState().sessionRefreshToken,
                                                                                                            formStep: 'issueimage',
                                                                                                            facilityLogo: getJsonField(
                                                                                                              columnIssuesTrackingListResponse.jsonBody,
                                                                                                              r'''$..image''',
                                                                                                            ).toString(),
                                                                                                          ),
                                                                                                          builder: (context, snapshot) {
                                                                                                            // Customize what your widget looks like when it's loading.
                                                                                                            if (!snapshot.hasData) {
                                                                                                              return Center(
                                                                                                                child: SizedBox(
                                                                                                                  width: 20.0,
                                                                                                                  height: 20.0,
                                                                                                                  child: CircularProgressIndicator(
                                                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                      Color(0x00FFFFFF),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            }
                                                                                                            final base64ImageManageFacilityResponse = snapshot.data!;
                                                                                                            return Container(
                                                                                                              width: 350.0,
                                                                                                              height: 300.0,
                                                                                                              child: custom_widgets.Base64Image(
                                                                                                                width: 350.0,
                                                                                                                height: 300.0,
                                                                                                                base64: getJsonField(
                                                                                                                  base64ImageManageFacilityResponse.jsonBody,
                                                                                                                  r'''$..data''',
                                                                                                                ).toString(),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ),
                                                                                                      ),
                                                                                                      if (getJsonField(
                                                                                                            columnIssuesTrackingListResponse.jsonBody,
                                                                                                            r'''$..image''',
                                                                                                          ) ==
                                                                                                          null)
                                                                                                        Text(
                                                                                                          FFLocalizations.of(context).getText(
                                                                                                            'anw1vtr2' /* Image not available. */,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {},
                                                                        text:
                                                                            getJsonField(
                                                                          columnIssuesTrackingListResponse
                                                                              .jsonBody,
                                                                          r'''$..status''',
                                                                        ).toString(),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              80.0,
                                                                          height:
                                                                              20.0,
                                                                          padding:
                                                                              EdgeInsets.all(0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              () {
                                                                            if (getJsonField(
                                                                                  columnIssuesTrackingListResponse.jsonBody,
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                null) {
                                                                              return Color(0xFFFDD06A);
                                                                            } else if (getJsonField(
                                                                                  columnIssuesTrackingListResponse.jsonBody,
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                'On hold') {
                                                                              return Color(0xFFEF8C22);
                                                                            } else if (getJsonField(
                                                                                  columnIssuesTrackingListResponse.jsonBody,
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                'Open') {
                                                                              return Color(0xFFFDD06A);
                                                                            } else if (getJsonField(
                                                                                  columnIssuesTrackingListResponse.jsonBody,
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                'Rejected') {
                                                                              return Color(0xFFF15C6D);
                                                                            } else {
                                                                              return Color(0xFFEF8C22);
                                                                            }
                                                                          }(),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                              ),
                                                                          elevation:
                                                                              3.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            if (functions.jsonLength(
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody) ==
                                                                0)
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '4j0iqsst' /* No help is availble yet! */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                          ],
                                                        ),
                                                      if (FFAppState()
                                                                  .issuesTrack !=
                                                              null &&
                                                          FFAppState()
                                                                  .issuesTrack !=
                                                              '')
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (functions.jsonLength(functions.searchfunctionforcolor(
                                                                    FFAppState()
                                                                        .issuesTrack,
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody)) >
                                                                1)
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final list =
                                                                      getJsonField(
                                                                    functions.searchfunctionforcolor(
                                                                        FFAppState()
                                                                            .issuesTrack,
                                                                        columnIssuesTrackingListResponse
                                                                            .jsonBody),
                                                                    r'''$[*]''',
                                                                  ).toList();
                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        list.length,
                                                                        (listIndex) {
                                                                      final listItem =
                                                                          list[
                                                                              listIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 1.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                0.0,
                                                                            runSpacing:
                                                                                0.0,
                                                                            alignment:
                                                                                WrapAlignment.spaceBetween,
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
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                    child: FaIcon(
                                                                                      FontAwesomeIcons.solidCircle,
                                                                                      color: () {
                                                                                        if (FFAppState().issuesTrack == 'Appointment') {
                                                                                          return FlutterFlowTheme.of(context).primary;
                                                                                        } else if (FFAppState().issuesTrack == 'Data Discrepancy') {
                                                                                          return Color(0xFFC3B1F8);
                                                                                        } else if (FFAppState().issuesTrack == 'Consent Data') {
                                                                                          return Color(0xFF1D0762);
                                                                                        } else {
                                                                                          return FlutterFlowTheme.of(context).primaryBackground;
                                                                                        }
                                                                                      }(),
                                                                                      size: 15.0,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                                            Text(
                                                                                              getJsonField(
                                                                                                listItem,
                                                                                                r'''$..issue_id''',
                                                                                              ).toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                            if (FFAppState().visibleDisplay == '0')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    setState(() {
                                                                                                      FFAppState().visibleDisplay = getJsonField(
                                                                                                        listItem,
                                                                                                        r'''$..issue_id''',
                                                                                                      ).toString();
                                                                                                    });
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.keyboard_arrow_down,
                                                                                                    color: FlutterFlowTheme.of(context).customColor1,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (FFAppState().visibleDisplay ==
                                                                                                getJsonField(
                                                                                                  listItem,
                                                                                                  r'''$..issue_id''',
                                                                                                ))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    setState(() {
                                                                                                      FFAppState().visibleDisplay = '0';
                                                                                                    });
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.keyboard_arrow_up,
                                                                                                    color: FlutterFlowTheme.of(context).customColor1,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        if (FFAppState().visibleDisplay == '0')
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
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
                                                                                                Text(
                                                                                                  getJsonField(
                                                                                                    listItem,
                                                                                                    r'''$..description''',
                                                                                                  ).toString().maybeHandleOverflow(maxChars: 100),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                                if (functions.noOfCharactersInString(getJsonField(
                                                                                                      listItem,
                                                                                                      r'''$..description''',
                                                                                                    ).toString()) >=
                                                                                                    100)
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'm56kbcrn' /* ... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        if (FFAppState().visibleDisplay ==
                                                                                            getJsonField(
                                                                                              listItem,
                                                                                              r'''$..issue_id''',
                                                                                            ))
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                SingleChildScrollView(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'iou17c0x' /* Name:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    getJsonField(
                                                                                                                      listItem,
                                                                                                                      r'''$..patientname''',
                                                                                                                    ).toString(),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'mu8jbp5p' /* Facility Name:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    getJsonField(
                                                                                                                      listItem,
                                                                                                                      r'''$..fname''',
                                                                                                                    ).toString(),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'xjl78vsh' /* Date:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                                                Align(
                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      getJsonField(
                                                                                                                        listItem,
                                                                                                                        r'''$..date''',
                                                                                                                      ).toString(),
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(5.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                              child: Text(
                                                                                                                FFLocalizations.of(context).getText(
                                                                                                                  'v7phln2j' /* Description:  */,
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Inter',
                                                                                                                      fontWeight: FontWeight.normal,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Container(
                                                                                                              width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              ),
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
                                                                                                                  Align(
                                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        getJsonField(
                                                                                                                          listItem,
                                                                                                                          r'''$..description''',
                                                                                                                        ).toString(),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      if ('${getJsonField(
                                                                                                                listItem,
                                                                                                                r'''$..image''',
                                                                                                              ).toString()}' !=
                                                                                                              null &&
                                                                                                          '${getJsonField(
                                                                                                                listItem,
                                                                                                                r'''$..image''',
                                                                                                              ).toString()}' !=
                                                                                                              '')
                                                                                                        Container(
                                                                                                          width: 350.0,
                                                                                                          height: 300.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          ),
                                                                                                          child: Wrap(
                                                                                                            spacing: 0.0,
                                                                                                            runSpacing: 0.0,
                                                                                                            alignment: WrapAlignment.center,
                                                                                                            crossAxisAlignment: WrapCrossAlignment.center,
                                                                                                            direction: Axis.horizontal,
                                                                                                            runAlignment: WrapAlignment.start,
                                                                                                            verticalDirection: VerticalDirection.down,
                                                                                                            clipBehavior: Clip.none,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                                child: FutureBuilder<ApiCallResponse>(
                                                                                                                  future: ManageFacilityCall.call(
                                                                                                                    refreshToken: FFAppState().sessionRefreshToken,
                                                                                                                    formStep: 'issueimage',
                                                                                                                    facilityLogo: getJsonField(
                                                                                                                      listItem,
                                                                                                                      r'''$..image''',
                                                                                                                    ).toString(),
                                                                                                                  ),
                                                                                                                  builder: (context, snapshot) {
                                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                                    if (!snapshot.hasData) {
                                                                                                                      return Center(
                                                                                                                        child: SizedBox(
                                                                                                                          width: 20.0,
                                                                                                                          height: 20.0,
                                                                                                                          child: CircularProgressIndicator(
                                                                                                                            valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                              Color(0x00FFFFFF),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      );
                                                                                                                    }
                                                                                                                    final base64ImageManageFacilityResponse = snapshot.data!;
                                                                                                                    return Container(
                                                                                                                      width: 350.0,
                                                                                                                      height: 300.0,
                                                                                                                      child: custom_widgets.Base64Image(
                                                                                                                        width: 350.0,
                                                                                                                        height: 300.0,
                                                                                                                        base64: getJsonField(
                                                                                                                          base64ImageManageFacilityResponse.jsonBody,
                                                                                                                          r'''$..data''',
                                                                                                                        ).toString(),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ),
                                                                                                              ),
                                                                                                              if (getJsonField(
                                                                                                                    listItem,
                                                                                                                    r'''$..image''',
                                                                                                                  ) ==
                                                                                                                  null)
                                                                                                                Text(
                                                                                                                  FFLocalizations.of(context).getText(
                                                                                                                    'olsw94ih' /* Image not available. */,
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {},
                                                                                text: getJsonField(
                                                                                  listItem,
                                                                                  r'''$..status''',
                                                                                ).toString(),
                                                                                options: FFButtonOptions(
                                                                                  width: 80.0,
                                                                                  height: 20.0,
                                                                                  padding: EdgeInsets.all(0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: () {
                                                                                    if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        null) {
                                                                                      return Color(0xFFFDD06A);
                                                                                    } else if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        'On hold') {
                                                                                      return Color(0xFFEF8C22);
                                                                                    } else if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        'Open') {
                                                                                      return Color(0xFFFDD06A);
                                                                                    } else if (getJsonField(
                                                                                          listItem,
                                                                                          r'''$..status''',
                                                                                        ) ==
                                                                                        'Rejected') {
                                                                                      return Color(0xFFF15C6D);
                                                                                    } else {
                                                                                      return Color(0xFFEF8C22);
                                                                                    }
                                                                                  }(),
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if (functions.jsonLength(functions.searchfunctionforcolor(
                                                                    FFAppState()
                                                                        .issuesTrack,
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody)) ==
                                                                1)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        0.0,
                                                                    runSpacing:
                                                                        0.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .spaceBetween,
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
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                3.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.solidCircle,
                                                                              color: () {
                                                                                if (FFAppState().issuesTrack == 'Appointment') {
                                                                                  return FlutterFlowTheme.of(context).primary;
                                                                                } else if (FFAppState().issuesTrack == 'Data Discrepancy') {
                                                                                  return Color(0xFFC3B1F8);
                                                                                } else if (FFAppState().issuesTrack == 'Consent Data') {
                                                                                  return Color(0xFF1D0762);
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).primaryBackground;
                                                                                }
                                                                              }(),
                                                                              size: 15.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                                    Text(
                                                                                      getJsonField(
                                                                                        functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                        r'''$..issue_id''',
                                                                                      ).toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                    ),
                                                                                    if (FFAppState().visibleDisplay == '0')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().visibleDisplay = getJsonField(
                                                                                                functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                r'''$..issue_id''',
                                                                                              ).toString();
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_down,
                                                                                            color: FlutterFlowTheme.of(context).customColor1,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    if (FFAppState().visibleDisplay ==
                                                                                        getJsonField(
                                                                                          functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                          r'''$..issue_id''',
                                                                                        ))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().visibleDisplay = '0';
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_up,
                                                                                            color: FlutterFlowTheme.of(context).customColor1,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                if (FFAppState().visibleDisplay == '0')
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
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
                                                                                        Text(
                                                                                          getJsonField(
                                                                                            functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                            r'''$..description''',
                                                                                          ).toString().maybeHandleOverflow(maxChars: 100),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        ),
                                                                                        if (functions.noOfCharactersInString(getJsonField(
                                                                                              functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                              r'''$..description''',
                                                                                            ).toString()) >=
                                                                                            100)
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'wnaxgqjn' /* ... */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {},
                                                                        text:
                                                                            getJsonField(
                                                                          functions.searchfunctionforcolor(
                                                                              FFAppState().issuesTrack,
                                                                              columnIssuesTrackingListResponse.jsonBody),
                                                                          r'''$..status''',
                                                                        ).toString(),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              80.0,
                                                                          height:
                                                                              20.0,
                                                                          padding:
                                                                              EdgeInsets.all(0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              () {
                                                                            if (getJsonField(
                                                                                  functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                null) {
                                                                              return Color(0xFFFDD06A);
                                                                            } else if (getJsonField(
                                                                                  functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                'On hold') {
                                                                              return Color(0xFFEF8C22);
                                                                            } else if (getJsonField(
                                                                                  functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                'Open') {
                                                                              return Color(0xFFFDD06A);
                                                                            } else if (getJsonField(
                                                                                  functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                  r'''$..status''',
                                                                                ) ==
                                                                                'Rejected') {
                                                                              return Color(0xFFF15C6D);
                                                                            } else {
                                                                              return Color(0xFFEF8C22);
                                                                            }
                                                                          }(),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                              ),
                                                                          elevation:
                                                                              3.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      if (FFAppState()
                                                                              .visibleDisplay ==
                                                                          getJsonField(
                                                                            functions.searchfunctionforcolor(FFAppState().issuesTrack,
                                                                                columnIssuesTrackingListResponse.jsonBody),
                                                                            r'''$..issue_id''',
                                                                          ))
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(5.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'c1wmlohv' /* Name:  */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
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
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                    r'''$..patientname''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(5.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'mlj9311l' /* Facility Name:  */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
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
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                    r'''$..fname''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(5.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'jm1oa5vv' /* Date:  */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
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
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                      r'''$..date''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(5.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'eyc2k6nz' /* Description:  */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
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
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                        r'''$..description''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    if ('${getJsonField(
                                                                                              functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                              r'''$..image''',
                                                                                            ).toString()}' !=
                                                                                            null &&
                                                                                        '${getJsonField(
                                                                                              functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                              r'''$..image''',
                                                                                            ).toString()}' !=
                                                                                            '')
                                                                                      Container(
                                                                                        width: 350.0,
                                                                                        height: 300.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Wrap(
                                                                                          spacing: 0.0,
                                                                                          runSpacing: 0.0,
                                                                                          alignment: WrapAlignment.center,
                                                                                          crossAxisAlignment: WrapCrossAlignment.center,
                                                                                          direction: Axis.horizontal,
                                                                                          runAlignment: WrapAlignment.start,
                                                                                          verticalDirection: VerticalDirection.down,
                                                                                          clipBehavior: Clip.none,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsets.all(5.0),
                                                                                              child: FutureBuilder<ApiCallResponse>(
                                                                                                future: ManageFacilityCall.call(
                                                                                                  refreshToken: FFAppState().sessionRefreshToken,
                                                                                                  formStep: 'issueimage',
                                                                                                  facilityLogo: getJsonField(
                                                                                                    functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                    r'''$..image''',
                                                                                                  ).toString(),
                                                                                                ),
                                                                                                builder: (context, snapshot) {
                                                                                                  // Customize what your widget looks like when it's loading.
                                                                                                  if (!snapshot.hasData) {
                                                                                                    return Center(
                                                                                                      child: SizedBox(
                                                                                                        width: 20.0,
                                                                                                        height: 20.0,
                                                                                                        child: CircularProgressIndicator(
                                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                            Color(0x00FFFFFF),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                  final base64ImageManageFacilityResponse = snapshot.data!;
                                                                                                  return Container(
                                                                                                    width: 350.0,
                                                                                                    height: 300.0,
                                                                                                    child: custom_widgets.Base64Image(
                                                                                                      width: 350.0,
                                                                                                      height: 300.0,
                                                                                                      base64: getJsonField(
                                                                                                        base64ImageManageFacilityResponse.jsonBody,
                                                                                                        r'''$..data''',
                                                                                                      ).toString(),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            if (getJsonField(
                                                                                                  functions.searchfunctionforcolor(FFAppState().issuesTrack, columnIssuesTrackingListResponse.jsonBody),
                                                                                                  r'''$..image''',
                                                                                                ) ==
                                                                                                null)
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'zoo0voc9' /* Image not available. */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            if (functions.jsonLength(functions.searchfunctionforcolor(
                                                                    FFAppState()
                                                                        .issuesTrack,
                                                                    columnIssuesTrackingListResponse
                                                                        .jsonBody)) ==
                                                                0)
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '852uogvz' /* No help is availble yet! */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                          ],
                                                        ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        FutureBuilder<ApiCallResponse>(
                                          future: IssuesTrackingListCall.call(
                                            refreshToken: FFAppState()
                                                .sessionRefreshToken,
                                            formStep: 'issueListPrPtSt',
                                            id: FFAppState().sortdata,
                                            status: 'closed',
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
                                            final containerApiIssuesTrackingListResponse =
                                                snapshot.data!;
                                            return Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.95,
                                              height: 500.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (functions.jsonLength(
                                                                containerApiIssuesTrackingListResponse
                                                                    .jsonBody) >=
                                                            1)
                                                          FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                NGetTableMetaDataCall
                                                                    .call(
                                                              refreshToken:
                                                                  FFAppState()
                                                                      .sessionRefreshToken,
                                                              tableName:
                                                                  'IssueTracking',
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
                                                              final responsiveTableWidgetNGetTableMetaDataResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.95,
                                                                height: 400.0,
                                                                child: custom_widgets
                                                                    .ResponsiveTableWidget(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.95,
                                                                  height: 400.0,
                                                                  borderColor:
                                                                      Color(
                                                                          0xFF8A61FF),
                                                                  borderWidth:
                                                                      1.0,
                                                                  headerPanelColor:
                                                                      Color(
                                                                          0xFF8A61FF),
                                                                  headerTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  headerFont:
                                                                      'Popping',
                                                                  headerFontSize:
                                                                      14.0,
                                                                  headerFontWeight:
                                                                      2,
                                                                  dataPanelColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  dataTextColor:
                                                                      Color(
                                                                          0xFF101213),
                                                                  dataTextFont:
                                                                      'Popping',
                                                                  dataTextSize:
                                                                      12.0,
                                                                  dataTextWeight:
                                                                      1,
                                                                  showSearch:
                                                                      true,
                                                                  innerRowBorderColor:
                                                                      Color(
                                                                          0xFF8A61FF),
                                                                  innerRowBorderWidth:
                                                                      1.0,
                                                                  searchPanelColor:
                                                                      Color(
                                                                          0xFF8A61FF),
                                                                  elevation:
                                                                      10.0,
                                                                  dataJSON: functions
                                                                      .normaliseJSON(
                                                                          containerApiIssuesTrackingListResponse
                                                                              .jsonBody),
                                                                  dataJSONMetaData:
                                                                      functions.normaliseJSON(
                                                                          responsiveTableWidgetNGetTableMetaDataResponse
                                                                              .jsonBody),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        if (functions.jsonLength(
                                                                containerApiIssuesTrackingListResponse
                                                                    .jsonBody) >=
                                                            1)
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
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                                Container(
                                                                  width: 90.0,
                                                                  height: 50.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        0.0,
                                                                    runSpacing:
                                                                        0.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .center,
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
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'x4r6ay7x' /* See image */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            if (FFAppState().idList.length ==
                                                                                1) {
                                                                              if (getJsonField(
                                                                                    functions.getDataJson(FFAppState().idList.last, containerApiIssuesTrackingListResponse.jsonBody),
                                                                                    r'''$..image''',
                                                                                  ) ==
                                                                                  '') {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return WebViewAware(
                                                                                      child: AlertDialog(
                                                                                        content: Text('The user did not upload an image.'),
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
                                                                                setState(() {
                                                                                  FFAppState().issueimage = getJsonField(
                                                                                    functions.getDataJson(FFAppState().idList.last, containerApiIssuesTrackingListResponse.jsonBody),
                                                                                    r'''$..image''',
                                                                                  ).toString();
                                                                                });
                                                                              }
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return WebViewAware(
                                                                                    child: AlertDialog(
                                                                                      content: Text('Please select one record.'),
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
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.image_outlined,
                                                                            color:
                                                                                Color(0xFF8A61FF),
                                                                            size:
                                                                                28.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              Container(
                                                                width: 100.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Wrap(
                                                                  spacing: 0.0,
                                                                  runSpacing:
                                                                      0.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .center,
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
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'zh15pa5e' /* Export */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          if (FFAppState().idList.length ==
                                                                              1) {
                                                                            _model.apiResult303resolved =
                                                                                await IssuesExportCall.call(
                                                                              refreshToken: FFAppState().sessionRefreshToken,
                                                                              issueImage: getJsonField(
                                                                                functions.getDataJson(FFAppState().idList.last, containerApiIssuesTrackingListResponse.jsonBody),
                                                                                r'''$..image''',
                                                                              ).toString(),
                                                                              formStep: 'importIndividualData',
                                                                              id: FFAppState().idList.last,
                                                                            );
                                                                            if ((_model.apiResult303resolved?.succeeded ??
                                                                                true)) {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return WebViewAware(
                                                                                    child: AlertDialog(
                                                                                      content: Text('Export has been sent successfully to registered mail.'),
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

                                                                              context.pushNamed('issueList');
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return WebViewAware(
                                                                                    child: AlertDialog(
                                                                                      content: Text('Export has not been sent due to Unknown reasons.'),
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
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    content: Text('Please select one record.'),
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

                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .attach_email_outlined,
                                                                          color:
                                                                              Color(0xFF8A61FF),
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Wrap(
                                                                  spacing: 0.0,
                                                                  runSpacing:
                                                                      0.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .center,
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
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'zxhd7ya9' /* Export All */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.apiResult3322resolvedCopyCopy =
                                                                              await IssuesExportCall.call(
                                                                            refreshToken:
                                                                                FFAppState().sessionRefreshToken,
                                                                            formStep:
                                                                                'importAllData',
                                                                            status:
                                                                                'notAdmin',
                                                                          );
                                                                          if ((_model.apiResult3322resolvedCopyCopy?.succeeded ??
                                                                              true)) {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    content: Text('Export has been sent successfully to registered mail.'),
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

                                                                            context.pushNamed('issueList');
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    content: Text('Export has not been sent due to Unknown reasons.'),
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

                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .download_rounded,
                                                                          color:
                                                                              Color(0xFF8A61FF),
                                                                          size:
                                                                              28.0,
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
                                                  if (functions.jsonLength(
                                                          containerApiIssuesTrackingListResponse
                                                              .jsonBody) ==
                                                      0)
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.95,
                                                      height: 400.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'c9mr5zty' /* No help is available yet! */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (FFAppState().issueimage !=
                                                          null &&
                                                      FFAppState().issueimage !=
                                                          '')
                                                    Container(
                                                      width: 1400.0,
                                                      height: 500.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x71C1BEBF),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ube0uj21' /* Description */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          1.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 400.0,
                                                                height: 400.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0xFF8A61FF),
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        ApiCallResponse>(
                                                                      future: ManageFacilityCall
                                                                          .call(
                                                                        refreshToken:
                                                                            FFAppState().sessionRefreshToken,
                                                                        formStep:
                                                                            'issueimage',
                                                                        facilityLogo:
                                                                            FFAppState().issueimage,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              child: CircularProgressIndicator(
                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                  Color(0x00FFFFFF),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        final containerManageFacilityResponse =
                                                                            snapshot.data!;
                                                                        return Container(
                                                                          width:
                                                                              400.0,
                                                                          height:
                                                                              300.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                400.0,
                                                                            height:
                                                                                300.0,
                                                                            child:
                                                                                custom_widgets.Base64Image(
                                                                              width: 400.0,
                                                                              height: 300.0,
                                                                              base64: getJsonField(
                                                                                containerManageFacilityResponse.jsonBody,
                                                                                r'''$..data''',
                                                                              ).toString(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                    Wrap(
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
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            setState(() {
                                                                              FFAppState().issueimage = '';
                                                                            });
                                                                          },
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            'xr48rrdm' /* OK */,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                140.0,
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0xFF8A61FF),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: Colors.white,
                                                                                ),
                                                                            elevation:
                                                                                2.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
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
                                ],
                              ),
                            ),
                          ],
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
            if (FFAppState().defaultRoleId != '5')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.issuesFormHeader1Model,
                  updateCallback: () => setState(() {}),
                  child: IssuesFormHeader1Widget(
                    currentPage: '01',
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
