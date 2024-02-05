import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'issues_form_header_model.dart';
export 'issues_form_header_model.dart';

class IssuesFormHeaderWidget extends StatefulWidget {
  const IssuesFormHeaderWidget({
    super.key,
    required this.currentPage,
  });

  final String? currentPage;

  @override
  State<IssuesFormHeaderWidget> createState() => _IssuesFormHeaderWidgetState();
}

class _IssuesFormHeaderWidgetState extends State<IssuesFormHeaderWidget> {
  late IssuesFormHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssuesFormHeaderModel());

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

    return Container(
      width: 1200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
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
                if (widget.currentPage == 'newform_page') {
                  context.pushNamed('Patient_Dashboard');
                } else {
                  if (widget.currentPage == '01') {
                    context.pushNamed('issue_tracking_new_form');
                  } else {
                    if (widget.currentPage == '02') {
                      context.pushNamed('issue_tracking_appointment_01');
                    } else {
                      if (widget.currentPage == '03') {
                        context.pushNamed('issue_tracking_appointment_02');
                      } else {
                        if (widget.currentPage == '04') {
                          context.pushNamed('issue_tracking_appointment_03');
                        } else {
                          context.safePop();
                        }
                      }
                    }
                  }
                }
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xFFDADADA),
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    Icons.keyboard_arrow_left_sharp,
                    color: Color(0xFF888888),
                    size: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
