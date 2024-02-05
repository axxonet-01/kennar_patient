import '/backend/api_requests/api_calls.dart';
import '/components/msg_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'providerselect_model.dart';
export 'providerselect_model.dart';

class ProviderselectWidget extends StatefulWidget {
  const ProviderselectWidget({
    super.key,
    this.roomid,
    this.addremove,
    this.authToken,
    this.xuserId,
    this.addPatient,
    this.buttonvisible,
    this.formstep,
  });

  final String? roomid;
  final String? addremove;
  final String? authToken;
  final String? xuserId;
  final String? addPatient;
  final bool? buttonvisible;
  final String? formstep;

  @override
  State<ProviderselectWidget> createState() => _ProviderselectWidgetState();
}

class _ProviderselectWidgetState extends State<ProviderselectWidget> {
  late ProviderselectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProviderselectModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().clinicsIds = [];
      });
    });

    _model.groupnameController ??= TextEditingController();
    _model.groupnameFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      padding: EdgeInsetsDirectional.fromSTEB(
          10.0,
          valueOrDefault<double>(
            FFAppState().checkweb ? 10.0 : 40.0,
            0.0,
          ),
          10.0,
          10.0),
      child: Material(
        color: Colors.transparent,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        child: Container(
          width: 400.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: FutureBuilder<ApiCallResponse>(
              future: GetUserDetailsOverviewCall.call(
                refreshToken: FFAppState().sessionRefreshToken,
                formstep: widget.formstep,
                id: FFAppState().statusid,
                invite: widget.authToken,
                tableName: widget.addPatient,
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
                final columnGetUserDetailsOverviewResponse = snapshot.data!;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.addremove == 'remove'
                                ? 'Remove Participants'
                                : 'Add Participants',
                            'Add',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      if (widget.buttonvisible == false)
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Visibility(
                            visible: widget.buttonvisible == false,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: Container(
                                width: 400.0,
                                child: TextFormField(
                                  controller: _model.groupnameController,
                                  focusNode: _model.groupnameFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.groupnameController',
                                    Duration(milliseconds: 100),
                                    () => setState(() {}),
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'ig7esndq' /* Enter name... */,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  maxLength: 40,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  validator: _model.groupnameControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ),
                      Stack(
                        children: [
                          if (_model.selectedprovide.length != 0)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 360.0,
                                constraints: BoxConstraints(
                                  maxHeight: 250.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final selectededitAdminList =
                                        GetUserDetailsOverviewCall.alldata(
                                              columnGetUserDetailsOverviewResponse
                                                  .jsonBody,
                                            )
                                                ?.where((e) => _model
                                                    .selectedprovide
                                                    .toList()
                                                    .contains(getJsonField(
                                                      e,
                                                      r'''$..m_id''',
                                                    ).toString()))
                                                .toList()
                                                ?.toList() ??
                                            [];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          selectededitAdminList.length,
                                          (selectededitAdminListIndex) {
                                        final selectededitAdminListItem =
                                            selectededitAdminList[
                                                selectededitAdminListIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model
                                                    .removeFromSelectedprovide(
                                                        getJsonField(
                                                  selectededitAdminListItem,
                                                  r'''$..m_id''',
                                                ).toString());
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .removeFromClinicsIds(
                                                        getJsonField(
                                                  selectededitAdminListItem,
                                                  r'''$..m_id''',
                                                ).toString());
                                              });
                                            },
                                            text: getJsonField(
                                              selectededitAdminListItem,
                                              r'''$..name''',
                                            ).toString(),
                                            options: FFButtonOptions(
                                              width: 400.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFF4F4F4),
                                                        fontSize: 11.0,
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
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          if (_model.selectedprovide.length == 0)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: 400.0,
                                height: 250.0,
                                constraints: BoxConstraints(
                                  maxHeight: 250.0,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '52s44bfl' /* No data */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        child: Container(
                          width: 400.0,
                          child: TextFormField(
                            controller: _model.textController2,
                            focusNode: _model.textFieldFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController2',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                'ea0w5my2' /* Search.. */,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          if (functions.jsonLength(
                                  columnGetUserDetailsOverviewResponse
                                      .jsonBody) >
                              0)
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: 400.0,
                                constraints: BoxConstraints(
                                  maxHeight: 250.0,
                                ),
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    final unselectedAdminList =
                                        GetUserDetailsOverviewCall.alldata(
                                              columnGetUserDetailsOverviewResponse
                                                  .jsonBody,
                                            )
                                                ?.where((e) =>
                                                    (!_model.selectedprovide
                                                        .toList()
                                                        .contains(getJsonField(
                                                          e,
                                                          r'''$..m_id''',
                                                        ).toString())) &&
                                                    (getJsonField(
                                                      e,
                                                      r'''$..name''',
                                                    )
                                                        .toString()
                                                        .toLowerCase()
                                                        .contains(_model
                                                            .textController2
                                                            .text
                                                            .toLowerCase())))
                                                .toList()
                                                ?.toList() ??
                                            [];
                                    if (unselectedAdminList.isEmpty) {
                                      return Container(
                                        height: 40.0,
                                        child: MsgContainerWidget(
                                          msg: widget.buttonvisible == true
                                              ? 'No  data'
                                              : 'No  data',
                                        ),
                                      );
                                    }
                                    return SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            unselectedAdminList.length,
                                            (unselectedAdminListIndex) {
                                          final unselectedAdminListItem =
                                              unselectedAdminList[
                                                  unselectedAdminListIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                setState(() {
                                                  _model.addToSelectedprovide(
                                                      getJsonField(
                                                    unselectedAdminListItem,
                                                    r'''$..m_id''',
                                                  ).toString());
                                                });
                                                setState(() {
                                                  FFAppState().addToClinicsIds(
                                                      getJsonField(
                                                    unselectedAdminListItem,
                                                    r'''$..m_id''',
                                                  ).toString());
                                                });
                                              },
                                              text: getJsonField(
                                                unselectedAdminListItem,
                                                r'''$..name''',
                                              ).toString(),
                                              options: FFButtonOptions(
                                                width: 400.0,
                                                height: 40.0,
                                                padding: EdgeInsets.all(0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFF4F4F4),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                        ),
                                                elevation: 4.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                hoverTextColor:
                                                    Color(0xFFF4F4F4),
                                                hoverElevation: 1.0,
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
                          if (functions.jsonLength(
                                  columnGetUserDetailsOverviewResponse
                                      .jsonBody) ==
                              0)
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Container(
                                width: 400.0,
                                height: 250.0,
                                constraints: BoxConstraints(
                                  maxHeight: 250.0,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gmbtwebl' /* No data */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 10.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    FFAppState().webviewvisibility = false;
                                  });
                                  setState(() {
                                    FFAppState().clinicsIds = [];
                                  });
                                  Navigator.pop(context);
                                },
                                text: FFLocalizations.of(context).getText(
                                  'by5w5cty' /* Cancel */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            if (widget.buttonvisible == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 10.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    if (FFAppState().clinicsIds.length <= 0) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              content: Text(
                                                  'Please select one record.'),
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
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }
                                    _model.apiResultvb4Copy1 =
                                        await NkennarChatCall.call(
                                      refreshToken:
                                          FFAppState().sessionRefreshToken,
                                      formstep: widget.addremove == 'remove'
                                          ? 'removeuserchat'
                                          : 'Adduserchat',
                                      xAuthToken: getJsonField(
                                        FFAppState().universalLoginData,
                                        r'''$..chatauthtoken''',
                                      ).toString(),
                                      roomId: widget.roomid,
                                      idlistList: FFAppState().clinicsIds,
                                    );
                                    _shouldSetState = true;
                                    if ((_model.apiResultvb4Copy1?.statusCode ??
                                            200) !=
                                        462) {
                                      setState(() {
                                        FFAppState().webviewvisibility = false;
                                      });
                                      if (!(_model
                                              .apiResultvb4Copy1?.succeeded ??
                                          true)) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                content: Text('Try again!'),
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
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              content: Text(
                                                  'Only one patient allowed to be add in one group.'),
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
                                    }

                                    Navigator.pop(context);
                                    if (_shouldSetState) setState(() {});
                                  },
                                  text: valueOrDefault<String>(
                                    widget.addremove == 'remove'
                                        ? 'Remove'
                                        : 'Add',
                                    'Add',
                                  ),
                                  options: FFButtonOptions(
                                    width: 100.0,
                                    height: 40.0,
                                    padding: EdgeInsets.all(0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            if (widget.buttonvisible == false)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onDoubleTap: () async {
                                    var _shouldSetState = false;
                                    if (widget.addremove != 'addteam') {
                                      if (FFAppState().clinicsIds.length == 1) {
                                        if (FFAppState().defaultRoleId == '5') {
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                content: Text(
                                                    'Please select one patient.'),
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
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                    }

                                    _model.providerpatientCopy =
                                        await NkennarChatCall.call(
                                      refreshToken:
                                          FFAppState().sessionRefreshToken,
                                      formstep: 'providerpatient',
                                      xAuthToken: getJsonField(
                                        FFAppState().universalLoginData,
                                        r'''$..chatauthtoken''',
                                      ).toString(),
                                      roomId: widget.roomid,
                                      idlistList: FFAppState().clinicsIds,
                                      channelName:
                                          _model.groupnameController.text,
                                    );
                                    _shouldSetState = true;
                                    if ((_model.providerpatient?.statusCode ??
                                            200) ==
                                        468) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              content: Text(
                                                  'Only one patient is allowed to add.'),
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
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }
                                    if ((_model.providerpatient?.statusCode ??
                                            200) !=
                                        462) {
                                      setState(() {
                                        FFAppState().webviewvisibility = false;
                                      });
                                      if (!(_model.providerpatient?.succeeded ??
                                          true)) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                content: Text('Try again!'),
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
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              content: Text(
                                                  'Only one patient allowed to be add in one group.'),
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
                                    }

                                    Navigator.pop(context);
                                    if (_shouldSetState) setState(() {});
                                  },
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var _shouldSetState = false;
                                      if (FFAppState().defaultRoleId == '5') {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        if (FFAppState().clinicsIds.length <=
                                            0) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Please select one record.'),
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
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        if (FFAppState().clinicsIds.length >
                                            0) {
                                          if (widget.addPatient == 'Team') {
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                          }
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Please select one record.'),
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
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      }

                                      _model.providerpatient =
                                          await NkennarChatCall.call(
                                        refreshToken:
                                            FFAppState().sessionRefreshToken,
                                        formstep: 'providerpatient',
                                        xAuthToken: getJsonField(
                                          FFAppState().universalLoginData,
                                          r'''$..chatauthtoken''',
                                        ).toString(),
                                        roomId: widget.roomid,
                                        idlistList: FFAppState().clinicsIds,
                                        channelName:
                                            _model.groupnameController.text,
                                        userName: widget.addPatient,
                                      );
                                      _shouldSetState = true;
                                      if ((_model.providerpatient?.statusCode ??
                                              200) ==
                                          468) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                content: Text(
                                                    'Only one patient is allowed to add.'),
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
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                      if ((_model.providerpatient?.statusCode ??
                                              200) !=
                                          462) {
                                        setState(() {
                                          FFAppState().webviewvisibility =
                                              false;
                                        });
                                        if (!(_model
                                                .providerpatient?.succeeded ??
                                            true)) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text('Try again!'),
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
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                content: Text(
                                                    'Only one patient allowed to be add in one group.'),
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
                                      }

                                      Navigator.pop(context);
                                      if (_shouldSetState) setState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'g77nw7be' /* Start Chat */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 40.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(8.0),
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
          ),
        ),
      ),
    );
  }
}
