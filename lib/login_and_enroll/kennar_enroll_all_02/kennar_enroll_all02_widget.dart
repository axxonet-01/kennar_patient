import '/backend/api_requests/api_calls.dart';
import '/components/termandpolice/termandpolice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'kennar_enroll_all02_model.dart';
export 'kennar_enroll_all02_model.dart';

class KennarEnrollAll02Widget extends StatefulWidget {
  const KennarEnrollAll02Widget({
    super.key,
    this.firstName,
    this.lastName,
    this.dob,
    this.gender,
    this.street,
    this.state,
    this.city,
    this.zipcode,
  });

  final String? firstName;
  final String? lastName;
  final String? dob;
  final String? gender;
  final String? street;
  final String? state;
  final String? city;
  final String? zipcode;

  @override
  State<KennarEnrollAll02Widget> createState() =>
      _KennarEnrollAll02WidgetState();
}

class _KennarEnrollAll02WidgetState extends State<KennarEnrollAll02Widget> {
  late KennarEnrollAll02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KennarEnrollAll02Model());

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
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              0.0,
              valueOrDefault<double>(
                isWeb ? 50.0 : 12.0,
                0.0,
              ),
              0.0,
              0.0),
          child: FutureBuilder<ApiCallResponse>(
            future: KennarAPICallsGroup.kNGetDataInitialsCall.call(
              refreshToken: FFAppState().sessionRefreshToken,
              formStep: 'getTermandprivacy',
              text: 'term',
              id: FFAppState().defaultRoleId,
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
              final stackKNGetDataInitialsResponse = snapshot.data!;
              return Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().defaultRoleId == '5') {
                                    context.pushNamed('kennar_enrol_01');
                                  } else if (FFAppState().defaultRoleId ==
                                      '4') {
                                    _model.apiCallLogout001Cforterms =
                                        await NLogoutCall.call(
                                      refreshToken:
                                          FFAppState().sessionRefreshToken,
                                    );
                                    if ((_model.apiCallLogout001Cforterms
                                            ?.succeeded ??
                                        true)) {
                                      await actions.clearLocalStateValue();
                                      FFAppState().update(() {
                                        FFAppState().sessionRefreshToken = '';
                                      });
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              title: Text('Error Logging out'),
                                              content: Text(
                                                  'Logout Error  - Try again'),
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

                                    context.pushNamed('Login');
                                  } else {
                                    context.pushNamed('Login');
                                  }

                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.chevron_left,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 34.0,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'mdbz6w8w' /* Terms & Conditions */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF4C4C4C),
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Text(
                                    'Last updated on ${'${getJsonField(
                                          stackKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..lastmodified''',
                                        ).toString()}' == 'null' ? functions.returnNa(getJsonField(
                                        stackKNGetDataInitialsResponse.jsonBody,
                                        r'''$..created_date''',
                                      ).toString()) : functions.returnNa(getJsonField(
                                        stackKNGetDataInitialsResponse.jsonBody,
                                        r'''$..lastmodified''',
                                      ).toString())}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF8C8C8C),
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.chevron_left,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 34.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 122.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
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
                            Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.vertical,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 12.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        FFAppState().universalLoginData =
                                            functions.updateJson(
                                                FFAppState().universalLoginData,
                                                FFAppState().defaultRoleId);
                                      });
                                      _model.apiResult538 =
                                          await KennarAPICallsGroup
                                              .kNSetDataInitialsCall
                                              .call(
                                        formstep: 'enrolldata',
                                        refreshToken:
                                            FFAppState().sessionRefreshToken,
                                        firstName: FFAppState().firstName,
                                        lastName: FFAppState().lastName,
                                        dob: FFAppState().user,
                                        verify: true,
                                        gender: FFAppState().enrollGender,
                                        id: 'Yes',
                                        termversion: getJsonField(
                                          stackKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..version''',
                                        ).toString(),
                                        policyversion: getJsonField(
                                          stackKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..version''',
                                        ).toString(),
                                      );
                                      if ((_model.apiResult538?.succeeded ??
                                          true)) {
                                        context.pushNamed('kennar_enrol_03');
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                content: Text(
                                                    'Something went wrong please contact support'),
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

                                      setState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '13j4xlhk' /* Continue */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 358.0,
                                      height: 46.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      var _shouldSetState = false;
                                      _model.managepatient =
                                          await KennarAPICallsGroup
                                              .kNSetDataInitialsCall
                                              .call(
                                        formstep: 'enrolldata',
                                        refreshToken:
                                            FFAppState().sessionRefreshToken,
                                        firstName: FFAppState().firstName,
                                        lastName: FFAppState().lastName,
                                        dob: FFAppState().user,
                                        verify: false,
                                        gender: FFAppState().enrollGender,
                                        id: 'No',
                                        termversion: getJsonField(
                                          stackKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..version''',
                                        ).toString(),
                                        policyversion: getJsonField(
                                          stackKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..version''',
                                        ).toString(),
                                      );
                                      _shouldSetState = true;
                                      if ((_model.managepatient?.succeeded ??
                                          true)) {
                                        _model.apiCallLogout001Copy =
                                            await NLogoutCall.call(
                                          refreshToken:
                                              FFAppState().sessionRefreshToken,
                                        );
                                        _shouldSetState = true;
                                        if (stackKNGetDataInitialsResponse
                                            .succeeded) {
                                          await actions.clearLocalStateValue();
                                          FFAppState().update(() {
                                            FFAppState().sessionRefreshToken =
                                                '';
                                          });
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  title:
                                                      Text('Error Logging out'),
                                                  content: Text(
                                                      'Logout Error  - Try again'),
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
                                                    'Something went wrong please contact support'),
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

                                      context.pushNamed('Login');

                                      if (_shouldSetState) setState(() {});
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'giakgxgj' /* I do not consent to this above... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Builder(
                              builder: (context) => Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 12.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: TermandpoliceWidget(
                                              type: 'privacy',
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ttwjg1s5' /* Privacy Policy. */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF8A61FF),
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 84.0, 16.0, 122.0),
                      child: Container(
                        width: 1200.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final list =
                                KennarAPICallsGroup.kNGetDataInitialsCall
                                        .allData(
                                          stackKNGetDataInitialsResponse
                                              .jsonBody,
                                        )
                                        ?.toList() ??
                                    [];
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate(list.length, (listIndex) {
                                  final listItem = list[listIndex];
                                  return Wrap(
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Html(
                                          data: functions.returnNa(getJsonField(
                                            listItem,
                                            r'''$..text''',
                                          ).toString()),
                                          onLinkTap: (url, _, __, ___) =>
                                              launchURL(url!),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
