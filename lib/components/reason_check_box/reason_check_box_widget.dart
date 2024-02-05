import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reason_check_box_model.dart';
export 'reason_check_box_model.dart';

class ReasonCheckBoxWidget extends StatefulWidget {
  const ReasonCheckBoxWidget({
    super.key,
    this.id,
    this.reason,
  });

  final String? id;
  final String? reason;

  @override
  State<ReasonCheckBoxWidget> createState() => _ReasonCheckBoxWidgetState();
}

class _ReasonCheckBoxWidgetState extends State<ReasonCheckBoxWidget> {
  late ReasonCheckBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReasonCheckBoxModel());

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

    return Wrap(
      spacing: 0.0,
      runSpacing: 0.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        if ((widget.reason == 'NA') || (widget.reason == 'Not related person'))
          Container(
            width: 200.0,
            decoration: BoxDecoration(),
            child: Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.center,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (FFAppState().Reason == 'Reason01${widget.id}') {
                      setState(() {
                        FFAppState().Reason = '';
                        FFAppState().exactReason = '';
                      });
                    } else {
                      setState(() {
                        FFAppState().Reason = 'Reason01${widget.id}';
                        FFAppState().exactReason = 'Not related person';
                      });
                    }
                  },
                  child: Icon(
                    Icons.check_box,
                    color: ('Reason01${widget.id}' == FFAppState().Reason) ||
                            (widget.reason == 'Not related person')
                        ? Color(0xFF8A61FF)
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '8z89tllt' /* Not related person */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        if ((widget.reason == 'NA') || (widget.reason == 'Need privacy'))
          Container(
            width: 200.0,
            decoration: BoxDecoration(),
            child: Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.center,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (FFAppState().Reason == 'Reason02${widget.id}') {
                      setState(() {
                        FFAppState().Reason = '';
                        FFAppState().exactReason = '';
                      });
                    } else {
                      setState(() {
                        FFAppState().Reason = 'Reason02${widget.id}';
                        FFAppState().exactReason = 'Need privacy';
                      });
                    }
                  },
                  child: Icon(
                    Icons.check_box,
                    color: ('Reason02${widget.id}' == FFAppState().Reason) ||
                            (widget.reason == 'Need privacy')
                        ? Color(0xFF8A61FF)
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'gk722mgx' /* Need privacy */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        if ((widget.reason == 'NA') || (widget.reason == 'Personal'))
          Container(
            width: 200.0,
            decoration: BoxDecoration(),
            child: Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.center,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (FFAppState().Reason == 'Reason03${widget.id}') {
                      setState(() {
                        FFAppState().Reason = '';
                        FFAppState().exactReason = '';
                      });
                    } else {
                      setState(() {
                        FFAppState().Reason = 'Reason03${widget.id}';
                        FFAppState().exactReason = 'Personal';
                      });
                    }
                  },
                  child: Icon(
                    Icons.check_box,
                    color: ('Reason03${widget.id}' == FFAppState().Reason) ||
                            (widget.reason == 'Personal')
                        ? Color(0xFF8A61FF)
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '5v7c9nhu' /* Personal */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
