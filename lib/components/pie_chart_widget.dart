import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pie_chart_model.dart';
export 'pie_chart_model.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({
    super.key,
    required this.patientId,
    this.patientname,
  });

  final String? patientId;
  final String? patientname;

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget>
    with TickerProviderStateMixin {
  late PieChartModel _model;

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
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PieChartModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList = [
      Color(0xFF8A61FF),
      Color(0xFFFFA500),
      Color(0xFFE5BA4A),
      Color(0x888A61FF),
      Color(0xFF4A57C1),
      Color(0xFF3E8DD0),
      Color(0xFF2F1F86),
      Color(0xFF333EBA),
      Color(0xFF5C6BF4),
      Color(0xFF8F5CB5),
      Color(0xFFA487ED),
      Color(0xFF6A80C9)
    ];
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: 550.0,
          height: 550.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x1F000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryBackground,
              width: 1.0,
            ),
          ),
          child: FutureBuilder<ApiCallResponse>(
            future: ChatGraphDataCall.call(
              formStep: 'getYearData',
              refreshToken: FFAppState().sessionRefreshToken,
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
              final columnChatGraphDataResponse = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
                          Text(
                            'Total Chat Time(${widget.patientname})',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
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
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'vve5fl26' /* Year */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                FlutterFlowDropDown<String>(
                                  controller: _model.yearValueController ??=
                                      FormFieldController<String>(
                                    _model.yearValue ??=
                                        (ChatGraphDataCall.activeYears(
                                                      columnChatGraphDataResponse
                                                          .jsonBody,
                                                    )!
                                                        .length >=
                                                    1
                                                ? ChatGraphDataCall.activeYears(
                                                    columnChatGraphDataResponse
                                                        .jsonBody,
                                                  )
                                                    ?.map((e) => e.toString())
                                                    .toList()
                                                : ChatGraphDataCall.data(
                                                    columnChatGraphDataResponse
                                                        .jsonBody,
                                                  )
                                                    ?.map((e) => e.toString())
                                                    .toList())
                                            ?.first,
                                  ),
                                  options: ChatGraphDataCall.activeYears(
                                            columnChatGraphDataResponse
                                                .jsonBody,
                                          )!
                                              .length >=
                                          1
                                      ? ChatGraphDataCall.activeYears(
                                          columnChatGraphDataResponse.jsonBody,
                                        )!
                                          .map((e) => e.toString())
                                          .toList()
                                      : ChatGraphDataCall.data(
                                          columnChatGraphDataResponse.jsonBody,
                                        )!
                                          .map((e) => e.toString())
                                          .toList(),
                                  onChanged: (val) async {
                                    setState(() => _model.yearValue = val);
                                    _model.year = await DashboardCall.call(
                                      refreshToken:
                                          FFAppState().sessionRefreshToken,
                                      formstep: 'ChatTimeIndividual',
                                      step: _model.yearValue,
                                      id: widget.patientId,
                                    );
                                    if ((_model.year?.succeeded ?? true)) {
                                      setState(() {});
                                    }

                                    setState(() {});
                                  },
                                  width: 110.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'hfcigvkh' /* Year */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).customColor1,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
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
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  FutureBuilder<ApiCallResponse>(
                    future: DashboardCall.call(
                      refreshToken: FFAppState().sessionRefreshToken,
                      formstep: 'ChatTimeIndividual',
                      id: widget.patientId,
                      step: _model.yearValue,
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
                      final containerDashboardResponse = snapshot.data!;
                      return Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      height: 300.0,
                                      child: Stack(
                                        children: [
                                          FlutterFlowPieChart(
                                            data: FFPieChartData(
                                              values:
                                                  DashboardCall.monthlyChatTime(
                                                containerDashboardResponse
                                                    .jsonBody,
                                              )!,
                                              colors: chartPieChartColorsList,
                                              radius: [15.0],
                                            ),
                                            donutHoleRadius: 80.0,
                                            sectionLabelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall,
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, -1.0),
                                            child: FlutterFlowChartLegendWidget(
                                              entries: FFAppState()
                                                  .XAxisBar
                                                  .asMap()
                                                  .entries
                                                  .map(
                                                    (label) => LegendEntry(
                                                      chartPieChartColorsList[label
                                                              .key %
                                                          chartPieChartColorsList
                                                              .length],
                                                      label.value,
                                                    ),
                                                  )
                                                  .toList(),
                                              width: 100.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              textPadding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              borderColor: Color(0x00FFFFFF),
                                              indicatorSize: 10.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 120.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Wrap(
                                          spacing: 0.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          direction: Axis.vertical,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                functions
                                                    .convertMstoSeconds(
                                                        getJsonField(
                                                      containerDashboardResponse
                                                          .jsonBody,
                                                      r'''$..totalchattime''',
                                                    ))
                                                    ?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'n8d72f1p' /* Seconds */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            Container(
                              width: 400.0,
                              height: 350.0,
                              child: custom_widgets.DonutChart1(
                                width: 400.0,
                                height: 350.0,
                                jan: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..jan''',
                                ).toString()),
                                feb: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..feb''',
                                ).toString()),
                                mar: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..mar''',
                                ).toString()),
                                apr: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..apr''',
                                ).toString()),
                                may: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..may''',
                                ).toString()),
                                june: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..june''',
                                ).toString()),
                                july: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..july''',
                                ).toString()),
                                aug: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..aug''',
                                ).toString()),
                                sep: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..sep''',
                                ).toString()),
                                oct: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..oct''',
                                ).toString()),
                                nov: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..nov''',
                                ).toString()),
                                dec: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..dec''',
                                ).toString()),
                                total: functions
                                    .convertstringtodouble(getJsonField(
                                  containerDashboardResponse.jsonBody,
                                  r'''$..total''',
                                ).toString()),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        '2e69lsan' /* Cancel */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                ],
              );
            },
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
