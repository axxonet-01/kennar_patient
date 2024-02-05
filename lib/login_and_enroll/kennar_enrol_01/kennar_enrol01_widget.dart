import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'kennar_enrol01_model.dart';
export 'kennar_enrol01_model.dart';

class KennarEnrol01Widget extends StatefulWidget {
  const KennarEnrol01Widget({super.key});

  @override
  State<KennarEnrol01Widget> createState() => _KennarEnrol01WidgetState();
}

class _KennarEnrol01WidgetState extends State<KennarEnrol01Widget> {
  late KennarEnrol01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KennarEnrol01Model());

    _model.firstNameFocusNode ??= FocusNode();

    _model.lastNameFocusNode ??= FocusNode();

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
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 50.0, 16.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: KennarAPICallsGroup.kNGetDataInitialsCall.call(
                    formstep: 'enroll',
                    refreshToken: FFAppState().sessionRefreshToken,
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
                    final columnKNGetDataInitialsResponse = snapshot.data!;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'd5fffup2' /* Enroll */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF4C4C4C),
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  functions.firstLetterCapitalInTwowords(
                                      '${getJsonField(
                                    columnKNGetDataInitialsResponse.jsonBody,
                                    r'''$..patient_name''',
                                  ).toString()} ${getJsonField(
                                    columnKNGetDataInitialsResponse.jsonBody,
                                    r'''$..last_name''',
                                  ).toString()}'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.end,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 200.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'yye8pxwm' /* First Name */,
                                      ),
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
                                Container(
                                  width: 340.0,
                                  child: TextFormField(
                                    controller: _model.firstNameController ??=
                                        TextEditingController(
                                      text: getJsonField(
                                        columnKNGetDataInitialsResponse
                                            .jsonBody,
                                        r'''$..patient_name''',
                                      ).toString(),
                                    ),
                                    focusNode: _model.firstNameFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'zkc1u6mv' /* Enter first name */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12.0, 6.0, 12.0, 6.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    validator: _model
                                        .firstNameControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.end,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 200.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'osgyk3fg' /* Last Name */,
                                      ),
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
                                Container(
                                  width: 340.0,
                                  child: TextFormField(
                                    controller: _model.lastNameController ??=
                                        TextEditingController(
                                      text:
                                          functions.notreturnnull(getJsonField(
                                        columnKNGetDataInitialsResponse
                                            .jsonBody,
                                        r'''$..last_name''',
                                      ).toString()),
                                    ),
                                    focusNode: _model.lastNameFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'cro0x7b8' /* Enter last name */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF9F9F9F),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12.0, 6.0, 12.0, 6.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    validator: _model
                                        .lastNameControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.end,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 200.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '2uqs9d1k' /* Date of Birth */,
                                    ),
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
                              Container(
                                width: 340.0,
                                decoration: BoxDecoration(),
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
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownMonthValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownMonthValue ??=
                                            getJsonField(
                                          columnKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..month''',
                                        ).toString(),
                                      ),
                                      options: List<String>.from([
                                        '01',
                                        '02',
                                        '03',
                                        '04',
                                        '05',
                                        '06',
                                        '07',
                                        '08',
                                        '09',
                                        '10',
                                        '11',
                                        '12'
                                      ]),
                                      optionLabels: [
                                        FFLocalizations.of(context).getText(
                                          'kpufcviu' /* January */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          's1442n9h' /* February */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qby4xqyu' /* March */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'u3qchan3' /* April */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '91opilvw' /* May */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'xsgfin4u' /* June */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'se5hjorf' /* July */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'olphby7g' /* August */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wp5vdlw3' /* September */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f5wekytt' /* October */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qn0gj0sz' /* November */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4v3cklw4' /* December */,
                                        )
                                      ],
                                      onChanged: (val) => setState(() =>
                                          _model.dropDownMonthValue = val),
                                      width: 130.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'g1pf1c1k' /* Month */,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 4.0, 10.0, 4.0),
                                      hidesUnderline: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownDateValueController ??=
                                            FormFieldController<String>(
                                          _model.dropDownDateValue ??=
                                              getJsonField(
                                            columnKNGetDataInitialsResponse
                                                .jsonBody,
                                            r'''$..date''',
                                          ).toString(),
                                        ),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'e9xasym7' /* 01 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '5elj9iiz' /* 02 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '4f6c4dwe' /* 03 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '760x96o3' /* 04 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '03av4ta6' /* 05 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'snmt96of' /* 06 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'pkc3ocpo' /* 07 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'wfcz8lsp' /* 08 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'gl3i0in8' /* 09 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ztpy2k2f' /* 10 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'duu0jcyw' /* 11 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ddiudvq1' /* 12 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'x43yzlot' /* 13 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hsm2caub' /* 14 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'a2taswyd' /* 15 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ne6mmava' /* 16 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'cw367uba' /* 17 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'igada3b7' /* 18 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'b7dvrxha' /* 19 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ox0f8bf5' /* 20 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'jpe57hnc' /* 21 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '9ylvj3hs' /* 22 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'nwhiyhva' /* 23 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'cyp4p9qx' /* 24 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'rn271rer' /* 25 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'w912w8kl' /* 26 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'k8d6zurm' /* 27 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zhgm15em' /* 28 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            's3m1io60' /* 29 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'o3zmviuf' /* 30 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'klt8ft3g' /* 31 */,
                                          )
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.dropDownDateValue = val),
                                        width: 80.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'q6jinrvu' /* Date */,
                                        ),
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .customColor1,
                                        borderWidth: 1.0,
                                        borderRadius: 8.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 4.0, 10.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownYearValueController ??=
                                              FormFieldController<String>(
                                        _model.dropDownYearValue ??=
                                            getJsonField(
                                          columnKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..year''',
                                        ).toString(),
                                      ),
                                      options: functions.getYears(),
                                      onChanged: (val) => setState(
                                          () => _model.dropDownYearValue = val),
                                      width: 110.0,
                                      height: 50.0,
                                      searchHintTextStyle: TextStyle(),
                                      searchTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'qkilvw6i' /* Year */,
                                      ),
                                      searchHintText:
                                          FFLocalizations.of(context).getText(
                                        'iwfrumse' /* Enter year */,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 4.0, 10.0, 4.0),
                                      hidesUnderline: true,
                                      isSearchable: true,
                                      isMultiSelect: false,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.end,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 200.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'pjn19m0x' /* Gender */,
                                    ),
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
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(),
                                  child: Wrap(
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
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'll4hpwvn' /* Male */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'azi8loqu' /* Female */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            's8knfsq7' /* Other */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .radioButtonValueController ??=
                                            FormFieldController<String>(
                                                getJsonField(
                                          columnKNGetDataInitialsResponse
                                              .jsonBody,
                                          r'''$..gender''',
                                        ).toString()),
                                        optionHeight: 25.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor: Color(0xFF8A61FF),
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.dropDownDateValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          content: Text(
                                              'Please select date of birth.'),
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
                                  return;
                                }
                                if (_model.dropDownMonthValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          content: Text(
                                              'Please select date of birth.'),
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
                                  return;
                                }
                                if (_model.dropDownYearValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          content: Text(
                                              'Please select date of birth.'),
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
                                  return;
                                }
                                if (_model.radioButtonValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return WebViewAware(
                                        child: AlertDialog(
                                          content:
                                              Text('Please select gender.'),
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
                                  return;
                                }
                                setState(() {
                                  FFAppState().firstName =
                                      _model.firstNameController.text;
                                  FFAppState().lastName =
                                      _model.lastNameController.text;
                                  FFAppState().user =
                                      '${_model.dropDownYearValue}-${_model.dropDownMonthValue}-${_model.dropDownDateValue}';
                                  FFAppState().enrollGender =
                                      _model.radioButtonValue!;
                                  FFAppState().phonenumber = getJsonField(
                                    columnKNGetDataInitialsResponse.jsonBody,
                                    r'''$..number''',
                                  ).toString();
                                  FFAppState().month =
                                      _model.dropDownMonthValue!;
                                  FFAppState().year = _model.dropDownYearValue!;
                                  FFAppState().date = _model.dropDownDateValue!;
                                });
                                _model.enrool = await ManagePatientsCall.call(
                                  formstep: 'enroll',
                                  firstName: FFAppState().firstName,
                                  lastName: FFAppState().lastName,
                                  gender: FFAppState().enrollGender,
                                  dob: FFAppState().user,
                                  refreshToken:
                                      FFAppState().sessionRefreshToken,
                                );
                                _shouldSetState = true;
                                if (!(_model.enrool?.succeeded ?? true)) {
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                context.pushNamed('kennar_enrollAll_02');

                                if (_shouldSetState) setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '4sz2fp7i' /* Continue */,
                              ),
                              options: FFButtonOptions(
                                width: 358.0,
                                height: 46.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF8A61FF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.normal,
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
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
