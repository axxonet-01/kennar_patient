import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_data_container1_model.dart';
export 'empty_data_container1_model.dart';

class EmptyDataContainer1Widget extends StatefulWidget {
  const EmptyDataContainer1Widget({
    super.key,
    required this.emptyMsg,
  });

  final String? emptyMsg;

  @override
  State<EmptyDataContainer1Widget> createState() =>
      _EmptyDataContainer1WidgetState();
}

class _EmptyDataContainer1WidgetState extends State<EmptyDataContainer1Widget> {
  late EmptyDataContainer1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyDataContainer1Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().clinicsIds = [];
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

    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: Material(
          color: Colors.transparent,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 400.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                widget.emptyMsg!,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
