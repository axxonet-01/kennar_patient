import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'remark_model.dart';
export 'remark_model.dart';

class RemarkWidget extends StatefulWidget {
  const RemarkWidget({
    super.key,
    required this.initialValue,
  });

  final String? initialValue;

  @override
  State<RemarkWidget> createState() => _RemarkWidgetState();
}

class _RemarkWidgetState extends State<RemarkWidget> {
  late RemarkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RemarkModel());

    _model.textFieldClinicNameController ??= TextEditingController(
        text: (String value) {
      return value ?? '';
    }(widget.initialValue!));
    _model.textFieldClinicNameFocusNode ??= FocusNode();

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
      child: Container(
        width: 350.0,
        decoration: BoxDecoration(),
        child: TextFormField(
          controller: _model.textFieldClinicNameController,
          focusNode: _model.textFieldClinicNameFocusNode,
          obscureText: false,
          decoration: InputDecoration(
            hintText: FFLocalizations.of(context).getText(
              '9v4ydqdn' /* Write anything you want to spe... */,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primaryText,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF8A61FF),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF0000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF0000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
          maxLines: 3,
          validator: _model.textFieldClinicNameControllerValidator
              .asValidator(context),
        ),
      ),
    );
  }
}
