import '/backend/api_requests/api_calls.dart';
import '/components/new_date_widget.dart';
import '/components/remark_widget.dart';
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
import 'caregap_question_model.dart';
export 'caregap_question_model.dart';

class CaregapQuestionWidget extends StatefulWidget {
  const CaregapQuestionWidget({
    super.key,
    this.date,
    this.patientId,
    this.remark,
  });

  final String? date;
  final String? patientId;
  final String? remark;

  @override
  State<CaregapQuestionWidget> createState() => _CaregapQuestionWidgetState();
}

class _CaregapQuestionWidgetState extends State<CaregapQuestionWidget> {
  late CaregapQuestionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaregapQuestionModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().careQuestion = 0;
        FFAppState().careAnswer = '';
      });
    });

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
      padding: EdgeInsets.all(10.0),
      child: FutureBuilder<ApiCallResponse>(
        future: CareGapsCall.call(
          refreshToken: FFAppState().sessionRefreshToken,
          formstep: 'careQuestions',
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
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0x00FFFFFF),
                  ),
                ),
              ),
            );
          }
          final containerCareGapsResponse = snapshot.data!;
          return Container(
            width: 900.0,
            height: 500.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(10.0),
            ),
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
                if (functions.jsonLength(containerCareGapsResponse.jsonBody) <
                    1)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'qeixjwvt' /* Questions not found. */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                if (functions.jsonLength(containerCareGapsResponse.jsonBody) >=
                    1)
                  Builder(
                    builder: (context) {
                      final qtn = CareGapsCall.data(
                            containerCareGapsResponse.jsonBody,
                          )?.toList() ??
                          [];
                      return SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(qtn.length, (qtnIndex) {
                            final qtnItem = qtn[qtnIndex];
                            return Visibility(
                              visible: qtnIndex == _model.qntype,
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40.0,
                                            decoration: BoxDecoration(),
                                          ),
                                          Text(
                                            getJsonField(
                                              qtnItem,
                                              r'''$..[0]..type1''',
                                            ).toString(),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.close_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor1,
                                              size: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kql77si5' /*  Please check the boxes for th... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 800.0,
                                        height: 400.0,
                                        decoration: BoxDecoration(),
                                        child: SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final questions =
                                                      qtnItem.toList();
                                                  return SingleChildScrollView(
                                                    primary: false,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          questions.length,
                                                          (questionsIndex) {
                                                        final questionsItem =
                                                            questions[
                                                                questionsIndex];
                                                        return SingleChildScrollView(
                                                          primary: false,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 800.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        0.0,
                                                                    runSpacing:
                                                                        0.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .spaceAround,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .center,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .spaceAround,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              700.0,
                                                                          decoration:
                                                                              BoxDecoration(),
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
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children: [
                                                                              Text(
                                                                                '${functions.adition(questionsIndex).toString()}. ${getJsonField(
                                                                                  questionsItem,
                                                                                  r'''$..question''',
                                                                                ).toString()}',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            700.0,
                                                                        decoration:
                                                                            BoxDecoration(),
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
                                                                              direction: Axis.vertical,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'rbjyhejm' /* Select Date */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                wrapWithModel(
                                                                                  model: _model.newDateModels.getModel(
                                                                                    getJsonField(
                                                                                      questionsItem,
                                                                                      r'''$..qid''',
                                                                                    ).toString(),
                                                                                    questionsIndex,
                                                                                  ),
                                                                                  updateCallback: () => setState(() {}),
                                                                                  child: NewDateWidget(
                                                                                    key: Key(
                                                                                      'Keykt5_${getJsonField(
                                                                                        questionsItem,
                                                                                        r'''$..qid''',
                                                                                      ).toString()}',
                                                                                    ),
                                                                                    initialValue: functions.notreturnnull(getJsonField(
                                                                                      questionsItem,
                                                                                      r'''$..date''',
                                                                                    ).toString()),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Wrap(
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.center,
                                                                              direction: Axis.vertical,
                                                                              runAlignment: WrapAlignment.end,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                  child: Container(
                                                                                    width: 230.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.transparent,
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            '9lsuxtf7' /* Remark */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 230.0,
                                                                                  decoration: BoxDecoration(),
                                                                                  child: wrapWithModel(
                                                                                    model: _model.remarkListModels.getModel(
                                                                                      getJsonField(
                                                                                        questionsItem,
                                                                                        r'''$..qid''',
                                                                                      ).toString(),
                                                                                      questionsIndex,
                                                                                    ),
                                                                                    updateCallback: () => setState(() {}),
                                                                                    child: RemarkWidget(
                                                                                      key: Key(
                                                                                        'Key2ih_${getJsonField(
                                                                                          questionsItem,
                                                                                          r'''$..qid''',
                                                                                        ).toString()}',
                                                                                      ),
                                                                                      initialValue: functions.notreturnnull(getJsonField(
                                                                                        questionsItem,
                                                                                        r'''$..remark''',
                                                                                      ).toString()),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Container(
                                                                              height: () {
                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                  return 100.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                  return 100.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                  return 100.0;
                                                                                } else {
                                                                                  return 100.0;
                                                                                }
                                                                              }(),
                                                                              decoration: BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      var _shouldSetState = false;
                                                                                      if (_model.newDateModels.getValueForKey(
                                                                                            getJsonField(
                                                                                              questionsItem,
                                                                                              r'''$..qid''',
                                                                                            ).toString(),
                                                                                            (m) => m.datePicked,
                                                                                          ) ==
                                                                                          null) {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                content: Text('Please select date.'),
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
                                                                                        if (_shouldSetState) setState(() {});
                                                                                        return;
                                                                                      } else if (_model.remarkListModels.getValueForKey(
                                                                                                getJsonField(
                                                                                                  questionsItem,
                                                                                                  r'''$..qid''',
                                                                                                ).toString(),
                                                                                                (m) => m.textFieldClinicNameController.text,
                                                                                              ) ==
                                                                                              null ||
                                                                                          _model.remarkListModels.getValueForKey(
                                                                                                getJsonField(
                                                                                                  questionsItem,
                                                                                                  r'''$..qid''',
                                                                                                ).toString(),
                                                                                                (m) => m.textFieldClinicNameController.text,
                                                                                              ) ==
                                                                                              '') {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                content: Text('Please enter remarks.'),
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
                                                                                        if (_shouldSetState) setState(() {});
                                                                                        return;
                                                                                      } else {
                                                                                        setState(() {
                                                                                          FFAppState().addToStaff(getJsonField(
                                                                                            questionsItem,
                                                                                            r'''$..qid''',
                                                                                          ).toString());
                                                                                        });
                                                                                      }

                                                                                      _model.apiResulthrorWebCopy = await CareGapsCall.call(
                                                                                        refreshToken: FFAppState().sessionRefreshToken,
                                                                                        formstep: 'careanswer',
                                                                                        answer: () {
                                                                                          if (_model.newDateModels.getValueForKey(
                                                                                                getJsonField(
                                                                                                  questionsItem,
                                                                                                  r'''$..qid''',
                                                                                                ).toString(),
                                                                                                (m) => m.datePicked,
                                                                                              ) !=
                                                                                              null) {
                                                                                            return 'Yes';
                                                                                          } else if (getJsonField(
                                                                                                questionsItem,
                                                                                                r'''$..answer''',
                                                                                              ) !=
                                                                                              null) {
                                                                                            return ((String value) {
                                                                                              return value ?? '';
                                                                                            }(getJsonField(
                                                                                              questionsItem,
                                                                                              r'''$..answer''',
                                                                                            ).toString()));
                                                                                          } else {
                                                                                            return 'Yes';
                                                                                          }
                                                                                        }(),
                                                                                        questionId: getJsonField(
                                                                                          questionsItem,
                                                                                          r'''$..qid''',
                                                                                        ).toString(),
                                                                                        frequency: () {
                                                                                          if (_model.newDateModels.getValueForKey(
                                                                                                getJsonField(
                                                                                                  questionsItem,
                                                                                                  r'''$..qid''',
                                                                                                ).toString(),
                                                                                                (m) => m.datePicked,
                                                                                              ) !=
                                                                                              null) {
                                                                                            return dateTimeFormat(
                                                                                              'yMMMd',
                                                                                              _model.newDateModels.getValueForKey(
                                                                                                getJsonField(
                                                                                                  questionsItem,
                                                                                                  r'''$..qid''',
                                                                                                ).toString(),
                                                                                                (m) => m.datePicked,
                                                                                              ),
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            );
                                                                                          } else if (getJsonField(
                                                                                                questionsItem,
                                                                                                r'''$..date''',
                                                                                              ) !=
                                                                                              null) {
                                                                                            return ((String value) {
                                                                                              return value ?? '';
                                                                                            }(getJsonField(
                                                                                              questionsItem,
                                                                                              r'''$..date''',
                                                                                            ).toString()));
                                                                                          } else {
                                                                                            return dateTimeFormat(
                                                                                              'yMMMd',
                                                                                              _model.newDateModels.getValueForKey(
                                                                                                getJsonField(
                                                                                                  questionsItem,
                                                                                                  r'''$..qid''',
                                                                                                ).toString(),
                                                                                                (m) => m.datePicked,
                                                                                              ),
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            );
                                                                                          }
                                                                                        }(),
                                                                                        id: widget.patientId,
                                                                                        remarks: functions.jsonString(_model.remarkListModels.getValueForKey(
                                                                                          getJsonField(
                                                                                            questionsItem,
                                                                                            r'''$..qid''',
                                                                                          ).toString(),
                                                                                          (m) => m.textFieldClinicNameController.text,
                                                                                        )!),
                                                                                        testList: functions.dropdoenlist(getJsonField(
                                                                                          questionsItem,
                                                                                          r'''$..qid''',
                                                                                        ).toString()),
                                                                                        cptCodeList: FFAppState().cptcode,
                                                                                      );
                                                                                      _shouldSetState = true;
                                                                                      if ((_model.apiResulthrorWebCopy?.succeeded ?? true)) {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                content: Text('Answer saved successfully.'),
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
                                                                                                content: Text('Something went wrong please contact support.'),
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
                                                                                        if (_shouldSetState) setState(() {});
                                                                                        return;
                                                                                      }

                                                                                      if (_shouldSetState) setState(() {});
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      't19bsa1h' /* Save */,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      width: 50.0,
                                                                                      height: 30.0,
                                                                                      padding: EdgeInsets.all(0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: Colors.white,
                                                                                            fontSize: 14.0,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
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
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
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
                                                                          _model.qntype =
                                                                              _model.qntype! + 1;
                                                                        });
                                                                        if (CareGapsCall.data(
                                                                              containerCareGapsResponse.jsonBody,
                                                                            )?.length ==
                                                                            _model.qntype) {
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '8xekmy6j' /* Skip */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          30.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              setState(() {
                                                                _model.qntype =
                                                                    _model.qntype! +
                                                                        1;
                                                              });
                                                              if (CareGapsCall
                                                                      .data(
                                                                    containerCareGapsResponse
                                                                        .jsonBody,
                                                                  )?.length ==
                                                                  _model
                                                                      .qntype) {
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '0tg5mbng' /* Next */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 120.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: Color(
                                                                  0xFF8A61FF),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                              elevation: 2.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
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
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                if (functions.jsonLength(containerCareGapsResponse.jsonBody) <
                    1)
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'gq6u7p84' /* Ok */,
                        ),
                        options: FFButtonOptions(
                          width: 120.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF8A61FF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
