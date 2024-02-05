import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termandpolice_model.dart';
export 'termandpolice_model.dart';

class TermandpoliceWidget extends StatefulWidget {
  const TermandpoliceWidget({
    super.key,
    required this.type,
  });

  final String? type;

  @override
  State<TermandpoliceWidget> createState() => _TermandpoliceWidgetState();
}

class _TermandpoliceWidgetState extends State<TermandpoliceWidget> {
  late TermandpoliceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermandpoliceModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 1000.0,
        height: 700.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
          child: FutureBuilder<ApiCallResponse>(
            future: KennarAPICallsGroup.kNGetDataInitialsCall.call(
              refreshToken: FFAppState().sessionRefreshToken,
              formStep: 'getTermandprivacy',
              text: widget.type,
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
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 24.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (widget.type == 'privacy')
                              Text(
                                FFLocalizations.of(context).getText(
                                  'rb4tymkt' /* Privacy Policy */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 18.0,
                                    ),
                              ),
                            if (widget.type == 'term')
                              Text(
                                FFLocalizations.of(context).getText(
                                  's0e5ymdj' /* Terms of Service  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 18.0,
                                    ),
                              ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Text(
                                  'Last updated on ${'${getJsonField(
                                        stackKNGetDataInitialsResponse.jsonBody,
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
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ],
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
                            Icons.close,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 72.0, 16.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final list = KennarAPICallsGroup.kNGetDataInitialsCall
                                .allData(
                                  stackKNGetDataInitialsResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(list.length, (listIndex) {
                              final listItem = list[listIndex];
                              return Padding(
                                padding: EdgeInsets.all(10.0),
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
                                      alignment: AlignmentDirectional(1.0, 0.0),
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
                                ),
                              );
                            }),
                          ),
                        );
                      },
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
