import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'kennar_otp_email_model.dart';
export 'kennar_otp_email_model.dart';

class KennarOtpEmailWidget extends StatefulWidget {
  const KennarOtpEmailWidget({
    super.key,
    this.email,
  });

  final String? email;

  @override
  State<KennarOtpEmailWidget> createState() => _KennarOtpEmailWidgetState();
}

class _KennarOtpEmailWidgetState extends State<KennarOtpEmailWidget> {
  late KennarOtpEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KennarOtpEmailModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().checkOptTimeExpired = false;
      });
      _model.timerController.onResetTimer();

      _model.timerController.onStartTimer();
    });

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
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 80.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/kennar_Logo_New.png',
                        width: 200.0,
                        height: 50.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'yideony1' /* Login */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF4C4C4C),
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '3a8q6fm5' /* Kennar makes it easier for you... */,
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                      ),
                    ),
                    Container(
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 10.0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
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
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '65ccrwc9' /* Change Phone Number? */,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 14.0,
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
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('Login');
                                        },
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'c4bpydku' /* Change Phone Number? */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFF8A61FF),
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                PinCodeTextField(
                                  autoDisposeControllers: false,
                                  appContext: context,
                                  length: 6,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF0E0D0D),
                                      ),
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  enableActiveFill: false,
                                  autoFocus: true,
                                  enablePinAutofill: true,
                                  errorTextSpace: 16.0,
                                  showCursor: true,
                                  cursorColor: Color(0xFF0E0D0D),
                                  obscureText: false,
                                  hintCharacter: '*',
                                  pinTheme: PinTheme(
                                    fieldHeight: 60.0,
                                    fieldWidth: 55.0,
                                    borderWidth: 2.0,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    shape: PinCodeFieldShape.box,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    inactiveColor: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    selectedColor: Color(0xFF0E0D0D),
                                    activeFillColor:
                                        FlutterFlowTheme.of(context)
                                            .customColor1,
                                    inactiveFillColor:
                                        FlutterFlowTheme.of(context)
                                            .customColor1,
                                    selectedFillColor: Color(0xFF0E0D0D),
                                  ),
                                  controller: _model.pinCodeController,
                                  onChanged: (_) {},
                                  autovalidateMode: AutovalidateMode.disabled,
                                  validator: _model.pinCodeControllerValidator
                                      .asValidator(context),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: FlutterFlowTimer(
                                    initialTime: _model.timerMilliseconds,
                                    getDisplayTime: (value) =>
                                        StopWatchTimer.getDisplayTime(
                                      value,
                                      hours: false,
                                      milliSecond: false,
                                    ),
                                    controller: _model.timerController,
                                    onChanged:
                                        (value, displayTime, shouldUpdate) {
                                      _model.timerMilliseconds = value;
                                      _model.timerValue = displayTime;
                                      if (shouldUpdate) setState(() {});
                                    },
                                    onEnded: () async {
                                      FFAppState().update(() {
                                        FFAppState().checkOptTimeExpired = true;
                                      });
                                    },
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'u2gdsrmm' /* Didn't receive the OTP? */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF8C8C8C),
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var _shouldSetState = false;
                                  _model.sendOTP = await SendOTPCall.call(
                                    email: widget.email,
                                    number: FFAppState().phonenumber,
                                    role: FFAppState().rolevalue,
                                  );
                                  _shouldSetState = true;
                                  FFAppState().update(() {
                                    FFAppState().otpString = getJsonField(
                                      (_model.sendOTP?.jsonBody ?? ''),
                                      r'''$..otp''',
                                    ).toString();
                                  });
                                  if ((_model.sendOTP?.succeeded ?? true)) {
                                    _model.timerController.onResetTimer();

                                    _model.timerController.onStartTimer();
                                    FFAppState().update(() {
                                      FFAppState().checkOptTimeExpired = false;
                                    });
                                  } else {
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (getJsonField(
                                        (_model.sendOTP?.jsonBody ?? ''),
                                        r'''$..notRegistered''',
                                      ) !=
                                      null) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return WebViewAware(
                                          child: AlertDialog(
                                            content: Text(
                                                'Invalid email address or mobile number. Please enter valid details.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
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
                                  if ((_model.sendOTP?.succeeded ?? true)) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return WebViewAware(
                                          child: AlertDialog(
                                            content: Text(
                                                'OTP has been sent to you on your registered email or phone to log in'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                    FFAppState().update(() {
                                      FFAppState().otpLoginData =
                                          (_model.sendOTP?.jsonBody ?? '');
                                    });
                                    _model.timerController.onStopTimer();

                                    context.pushNamed('kennar_otp_email');
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
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'vgkp88ie' /* Resend. */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF8A61FF),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          if (FFAppState().checkOptTimeExpired) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    content: Text(
                                        'OTP is expired. Please click on resend to receive new OTP.'),
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
                          } else {
                            if (FFAppState().otpString !=
                                _model.pinCodeController!.text) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      content: Text('Invalid OTP!.'),
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
                            _model.apiSessionDetailsotpPhy =
                                await NLoginCall.call(
                              loginId: getJsonField(
                                FFAppState().otpLoginData,
                                r'''$..username''',
                              ).toString(),
                              applicationId: FFAppState().applicationId,
                              number: getJsonField(
                                FFAppState().otpLoginData,
                                r'''$..number''',
                              ).toString(),
                            );
                            _shouldSetState = true;
                            if ((_model.apiSessionDetailsotpPhy?.statusCode ??
                                    200) ==
                                430) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      content: Text(
                                          'Unable to login, Please contct Support!'),
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
                            if (getJsonField(
                                  (_model.apiSessionDetailsotpPhy?.jsonBody ??
                                      ''),
                                  r'''$..email_changed''',
                                ) !=
                                null) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      content: Text(
                                          'The email address has been changed. Please enter new email address.'),
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
                            } else {
                              FFAppState().update(() {
                                FFAppState().universalLoginData =
                                    (_model.apiSessionDetailsotpPhy?.jsonBody ??
                                        '');
                              });
                              if ((_model.apiSessionDetailsotpPhy?.statusCode ??
                                      200) ==
                                  404) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        title: Text('Sign in error'),
                                        content: Text(
                                            'Invalid email address or password'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
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
                              } else {
                                if ((_model.apiSessionDetailsotpPhy
                                            ?.statusCode ??
                                        200) ==
                                    212) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          title: Text(
                                              'Email address not verified'),
                                          content: Text(
                                              'Check your email and verify your Id'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
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
                                } else {
                                  if (functions.checkLoginStatusCode((_model
                                          .apiSessionDetailsotpPhy
                                          ?.statusCode ??
                                      200))) {
                                    await actions.setSession(
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..refreshToken''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..token''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..passwordChangeRequired''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..passwordLastUpdatedInstant''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..lastLoginInstant''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..active''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..verified''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..usernameStatus''',
                                      ).toString(),
                                      getJsonField(
                                        FFAppState().otpLoginData,
                                        r'''$..username''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..firstName''',
                                      ).toString(),
                                      getJsonField(
                                        (_model.apiSessionDetailsotpPhy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$..defaultRoleId''',
                                      ).toString(),
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return WebViewAware(
                                          child: AlertDialog(
                                            title: Text('Error L001'),
                                            content: Text('Contact support '),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
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

                                  if (FFAppState().defaultRoleId == '5') {
                                    FFAppState().update(() {
                                      FFAppState().getEmailAddress =
                                          getJsonField(
                                        FFAppState().otpLoginData,
                                        r'''$..username''',
                                      ).toString();
                                    });
                                    if (FFAppState().sessionRefreshToken !=
                                            null &&
                                        FFAppState().sessionRefreshToken !=
                                            '') {
                                      if (FFAppState().defaultRoleId == '5') {
                                        if (getJsonField(
                                              FFAppState().universalLoginData,
                                              r'''$..Response''',
                                            ) ==
                                            'PC01') {
                                          _model.timerController.onResetTimer();

                                          context.goNamed('Patient_Dashboard');
                                        } else {
                                          _model.timerController.onResetTimer();

                                          context.goNamed('kennar_enrol_01');
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
                                              content:
                                                  Text('Refresh token not set'),
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
                                }
                              }
                            }
                          }

                          if (_model.pinCodeController!.text == null ||
                              _model.pinCodeController!.text == '') {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    content: Text(
                                        'Please enter a valid OTP to login.'),
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
                          'k88ye5ot' /* Continue */,
                        ),
                        options: FFButtonOptions(
                          width: 350.0,
                          height: 50.0,
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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
