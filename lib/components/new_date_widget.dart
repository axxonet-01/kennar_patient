import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_date_model.dart';
export 'new_date_model.dart';

class NewDateWidget extends StatefulWidget {
  const NewDateWidget({
    super.key,
    this.initialValue,
  });

  final String? initialValue;

  @override
  State<NewDateWidget> createState() => _NewDateWidgetState();
}

class _NewDateWidgetState extends State<NewDateWidget> {
  late NewDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewDateModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().careAnswer = '';
        FFAppState().careQuestion = 0;
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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        final _datePickedDate = await showDatePicker(
          context: context,
          initialDate: getCurrentTimestamp,
          firstDate: DateTime(1900),
          lastDate: getCurrentTimestamp,
        );

        if (_datePickedDate != null) {
          safeSetState(() {
            _model.datePicked = DateTime(
              _datePickedDate.year,
              _datePickedDate.month,
              _datePickedDate.day,
            );
          });
        }
        setState(() {
          FFAppState().addToCptcode(_model.datePicked!.toString());
        });
      },
      child: Container(
        width: 110.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).customColor1,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                () {
                  if (_model.datePicked != null) {
                    return dateTimeFormat(
                      'yMMMd',
                      _model.datePicked,
                      locale: FFLocalizations.of(context).languageCode,
                    );
                  } else if (widget.initialValue != null &&
                      widget.initialValue != '') {
                    return ((String value) {
                      return value ?? '';
                    }(widget.initialValue!));
                  } else {
                    return dateTimeFormat(
                      'yMMMd',
                      _model.datePicked,
                      locale: FFLocalizations.of(context).languageCode,
                    );
                  }
                }(),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontSize: 10.0,
                    ),
              ),
              Icon(
                Icons.calendar_today_rounded,
                color: Colors.black,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
