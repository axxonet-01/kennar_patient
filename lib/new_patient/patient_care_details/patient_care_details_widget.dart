import '/backend/api_requests/api_calls.dart';
import '/components/patient_new_nav_bar_widget.dart';
import '/components/patient_search_card_widget.dart';
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
import 'patient_care_details_model.dart';
export 'patient_care_details_model.dart';

class PatientCareDetailsWidget extends StatefulWidget {
  const PatientCareDetailsWidget({
    super.key,
    this.pageName,
    this.email,
  });

  final String? pageName;
  final String? email;

  @override
  State<PatientCareDetailsWidget> createState() =>
      _PatientCareDetailsWidgetState();
}

class _PatientCareDetailsWidgetState extends State<PatientCareDetailsWidget> {
  late PatientCareDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientCareDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().colourChanges = '';
        FFAppState().user = '';
        FFAppState().uploadimgname = '';
      });
      setState(() {
        FFAppState().visits = 'All';
      });
      setState(() {
        FFAppState().visibleDisplay = '0';
      });
      _model.diabetes = await PatientProfileCall.call(
        refreshToken: FFAppState().sessionRefreshToken,
        email: FFAppState().emailView,
        type: '3',
        formstep: 'diabetes',
      );
      if (widget.email != null && widget.email != '') {
        if (FFAppState().emailView == null || FFAppState().emailView == '') {
          setState(() {
            FFAppState().emailView = widget.email!;
          });
        }
      } else {
        setState(() {
          FFAppState().emailView = '';
        });
      }

      _model.apiResultbbhproviderData = await IssuesTrackingCall.call(
        refreshToken: FFAppState().sessionRefreshToken,
        defaultRoleId: FFAppState().defaultRoleId,
        formStep: 'getUserId',
        facilityId: getJsonField(
          functions.getDataJson(functions.trim(FFAppState().issueFacility),
              FFAppState().issueFacilityData),
          r'''$..facility_id''',
        ).toString().toString(),
      );
      if ((_model.apiResultbbhproviderData?.succeeded ?? true)) {
        setState(() {
          FFAppState().getUserData =
              (_model.apiResultbbhproviderData?.jsonBody ?? '');
        });
        if (getJsonField(
              (_model.apiResultbbhproviderData?.jsonBody ?? ''),
              r'''$..noDataFound''',
            ) !=
            null) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  content: Text('No ${getJsonField(
                    (_model.apiResultbbhproviderData?.jsonBody ?? ''),
                    r'''$..role''',
                  ).toString().toString()} is available currently. Please try after some time.'),
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
          return;
        } else {
          if (getJsonField(
                (_model.apiResultbbhproviderData?.jsonBody ?? ''),
                r'''$..facilityname''',
              ) ==
              'No facility has been mapped yet!') {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
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
            return;
          }
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                content:
                    Text('Oops something went wrong please contact support.'),
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

      _model.apiResultaui = await KnNetworkCall.call(
        refreshToken: FFAppState().sessionRefreshToken,
        formstep: 'getpatientdetailsbyuser',
      );
      if ((_model.apiResultaui?.succeeded ?? true)) {
        await showDialog(
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: WebViewAware(
                child: Container(
                  height: 100.0,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  child: PatientSearchCardWidget(
                    name: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..name''',
                    ).toString().toString(),
                    data: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..data''',
                      true,
                    ),
                    dob: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..dob''',
                    ).toString().toString(),
                    gender: getJsonField(
                      (_model.apiResultaui?.jsonBody ?? ''),
                      r'''$..gender''',
                    ).toString().toString(),
                  ),
                ),
              ),
            );
          },
        ).then((value) => setState(() {}));
      }
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

    return Builder(
      builder: (context) => Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 16.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 90.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ),
                ),
              ),
              if (FFAppState().colourChanges == 'MA')
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().update(() {
                      FFAppState().colourChanges = '';
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0x64FFFFFF),
                    ),
                  ),
                ),
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
      ),
    );
  }
}
