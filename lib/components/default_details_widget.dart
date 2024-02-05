import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'default_details_model.dart';
export 'default_details_model.dart';

class DefaultDetailsWidget extends StatefulWidget {
  const DefaultDetailsWidget({
    super.key,
    this.category,
    this.subCategory,
    this.text,
    this.image,
    this.label,
    this.id,
  });

  final String? category;
  final String? subCategory;
  final String? text;
  final String? image;
  final String? label;
  final String? id;

  @override
  State<DefaultDetailsWidget> createState() => _DefaultDetailsWidgetState();
}

class _DefaultDetailsWidgetState extends State<DefaultDetailsWidget> {
  late DefaultDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DefaultDetailsModel());

    _model.labelController ??= TextEditingController(
        text: (String? value) {
      return value ?? '';
    }(widget.label));
    _model.labelFocusNode ??= FocusNode();

    _model.ageController ??= TextEditingController();
    _model.ageFocusNode ??= FocusNode();

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
      width: 480.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'ee8bni03' /* Default Details */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 480.0,
                          decoration: BoxDecoration(),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 20.0),
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
                                      width: 120.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ns3tn01n' /* Category */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 1.0, 0.0),
                                      child: Container(
                                        width: 300.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future:
                                              SuperAdminDefaultDetailsCall.call(
                                            refreshToken: FFAppState()
                                                .sessionRefreshToken,
                                            formStep: 'get_category',
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      Color(0x00FFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final categorySuperAdminDefaultDetailsResponse =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .categoryValueController ??=
                                                  FormFieldController<String>(
                                                _model.categoryValue ??=
                                                    (String? value) {
                                                  return value ?? '';
                                                }(widget.category),
                                              ),
                                              options: List<String>.from(
                                                  SuperAdminDefaultDetailsCall
                                                              .data(
                                                            categorySuperAdminDefaultDetailsResponse
                                                                .jsonBody,
                                                          )?.length ==
                                                          0
                                                      ? SuperAdminDefaultDetailsCall
                                                              .data(
                                                          categorySuperAdminDefaultDetailsResponse
                                                              .jsonBody,
                                                        )!
                                                          .map((e) =>
                                                              e.toString())
                                                          .toList()
                                                      : SuperAdminDefaultDetailsCall
                                                              .ids(
                                                          categorySuperAdminDefaultDetailsResponse
                                                              .jsonBody,
                                                        )!
                                                          .map((e) =>
                                                              e.toString())
                                                          .toList()),
                                              optionLabels: SuperAdminDefaultDetailsCall
                                                          .data(
                                                        categorySuperAdminDefaultDetailsResponse
                                                            .jsonBody,
                                                      )?.length ==
                                                      0
                                                  ? SuperAdminDefaultDetailsCall
                                                          .data(
                                                      categorySuperAdminDefaultDetailsResponse
                                                          .jsonBody,
                                                    )!
                                                      .map((e) => e.toString())
                                                      .toList()
                                                  : SuperAdminDefaultDetailsCall
                                                          .name(
                                                      categorySuperAdminDefaultDetailsResponse
                                                          .jsonBody,
                                                    )!
                                                      .map((e) => e.toString())
                                                      .toList(),
                                              onChanged: (val) async {
                                                setState(() =>
                                                    _model.categoryValue = val);
                                                setState(() {
                                                  FFAppState().category =
                                                      _model.categoryValue!;
                                                });
                                              },
                                              width: 400.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '1btw0212' /* Please select... */,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor1,
                                              borderWidth: 0.0,
                                              borderRadius: 5.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 4.0, 12.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if ((FFAppState().category == '1') ||
                                  (FFAppState().category == '2'))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 20.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.end,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'dyqm3fq6' /* Sub Category */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 300.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: SuperAdminDefaultDetailsCall
                                                .call(
                                              refreshToken: FFAppState()
                                                  .sessionRefreshToken,
                                              formStep: 'sub_category',
                                              id: FFAppState().category,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final subCategorySuperAdminDefaultDetailsResponse =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .subCategoryValueController ??=
                                                    FormFieldController<String>(
                                                  _model.subCategoryValue ??=
                                                      (String? value) {
                                                    return value ?? '';
                                                  }(widget.subCategory),
                                                ),
                                                options: List<String>.from(
                                                    SuperAdminDefaultDetailsCall
                                                                .data(
                                                              subCategorySuperAdminDefaultDetailsResponse
                                                                  .jsonBody,
                                                            )?.length ==
                                                            0
                                                        ? SuperAdminDefaultDetailsCall
                                                                .data(
                                                            subCategorySuperAdminDefaultDetailsResponse
                                                                .jsonBody,
                                                          )!
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList()
                                                        : SuperAdminDefaultDetailsCall
                                                                .ids(
                                                            subCategorySuperAdminDefaultDetailsResponse
                                                                .jsonBody,
                                                          )!
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList()),
                                                optionLabels:
                                                    SuperAdminDefaultDetailsCall
                                                                .data(
                                                              subCategorySuperAdminDefaultDetailsResponse
                                                                  .jsonBody,
                                                            )?.length ==
                                                            0
                                                        ? SuperAdminDefaultDetailsCall
                                                                .data(
                                                            subCategorySuperAdminDefaultDetailsResponse
                                                                .jsonBody,
                                                          )!
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList()
                                                        : SuperAdminDefaultDetailsCall
                                                                .name(
                                                            subCategorySuperAdminDefaultDetailsResponse
                                                                .jsonBody,
                                                          )!
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .subCategoryValue =
                                                        val),
                                                width: 400.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.black,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'fd59ta4p' /* Please select... */,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor1,
                                                borderWidth: 0.0,
                                                borderRadius: 5.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 4.0, 12.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 30.0),
                            child: Container(
                              width: 420.0,
                              decoration: BoxDecoration(),
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
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'e55wvn79' /* Hello World */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  if (FFAppState().uploadimgname == null ||
                                      FFAppState().uploadimgname == '')
                                    custom_widgets.LogoPickerWidget(
                                      width: 300.0,
                                      height: 230.0,
                                      file: 'dummy',
                                      galleryText: 'Gallery',
                                      cameraText: 'Camera',
                                      clearText: 'Clear',
                                      textColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      buttonBackground: Color(0xFF8A61FF),
                                      saveText: 'Save',
                                    ),
                                ],
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 30.0),
                            child: Container(
                              width: 420.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  if (FFAppState().uploadimgname == null ||
                                      FFAppState().uploadimgname == '')
                                    custom_widgets.LogoPickerWidget(
                                      width: 300.0,
                                      height: 230.0,
                                      file: 'dummy',
                                      galleryText: 'Gallery',
                                      cameraText: 'Camera',
                                      clearText: 'Clear',
                                      textColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      buttonBackground: Color(0xFF8A61FF),
                                      saveText: 'Save',
                                    ),
                                ],
                              ),
                            ),
                          ),
                        Container(
                          width: 480.0,
                          decoration: BoxDecoration(),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 0.0, 20.0),
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
                                      width: 120.0,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '1hpug50j' /* New Definition */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 1.0, 0.0),
                                      child: Container(
                                        width: 300.0,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        child: TextFormField(
                                          controller: _model.labelController,
                                          focusNode: _model.labelFocusNode,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'hnjm3rjt' /* Enter new definition */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF8A61FF),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF0000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF0000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                          validator: _model
                                              .labelControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 20.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.end,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7yccpmk8' /* Text */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 1.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          child: TextFormField(
                                            controller: _model.ageController,
                                            focusNode: _model.ageFocusNode,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'e25d0qie' /* Enter text */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF8A61FF),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF0000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                            maxLines: 3,
                                            validator: _model
                                                .ageControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: Container(
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '584q1of7' /* Text */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                ),
                              ),
                              if (_model.categoryValue != null &&
                                  _model.categoryValue != '')
                                Container(
                                  width: 480.0,
                                  height: 330.0,
                                  child: custom_widgets.HtmlEditorExampleApp(
                                    width: 480.0,
                                    height: 330.0,
                                    editText: (String? value) {
                                      return value ?? '';
                                    }(widget.text),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
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
                              FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    FFAppState().uploadimgname = '';
                                  });
                                  Navigator.pop(context);
                                },
                                text: FFLocalizations.of(context).getText(
                                  'ew1gmg6p' /* Cancel */,
                                ),
                                options: FFButtonOptions(
                                  width: 130.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (FFAppState().text != null &&
                                        FFAppState().text != '') {
                                      if (widget.id == null ||
                                          widget.id == '') {
                                        _model.apiResultr1f =
                                            await SuperAdminDefaultDetailsCall
                                                .call(
                                          refreshToken:
                                              FFAppState().sessionRefreshToken,
                                          formStep: 'invite_details',
                                          category: _model.categoryValue,
                                          subCategory: _model.subCategoryValue,
                                          image: FFAppState().uploadimgname,
                                          label: _model.labelController.text,
                                          text: functions
                                              .jsonString(FFAppState().text),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.apiResultr1f?.statusCode ??
                                                200) ==
                                            308) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Category with this sub category already exist.'),
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
                                        if ((_model.apiResultr1f?.statusCode ??
                                                200) ==
                                            305) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Category is already exist.'),
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
                                        if ((_model.apiResultr1f?.succeeded ??
                                            true)) {
                                          setState(() {
                                            FFAppState().text = '';
                                          });
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Default details created successfully.'),
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
                                          Navigator.pop(context);
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Something went wrong please contact support.'),
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
                                        _model.apiResultr1f2 =
                                            await SuperAdminDefaultDetailsCall
                                                .call(
                                          refreshToken:
                                              FFAppState().sessionRefreshToken,
                                          formStep: 'invite_details',
                                          category: _model.categoryValue,
                                          subCategory: _model.subCategoryValue,
                                          image: FFAppState().uploadimgname,
                                          label: _model.labelController.text,
                                          text: functions
                                              .jsonString(FFAppState().text),
                                          id: widget.id,
                                        );
                                        _shouldSetState = true;
                                        if ((_model.apiResultr1f2?.succeeded ??
                                            true)) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Default details updated successfully.'),
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
                                          Navigator.pop(context);
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  content: Text(
                                                      'Something went wrong please contact support.'),
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
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              content: Text(
                                                  'Please confirm once text is updated.'),
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

                                    if (_shouldSetState) setState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'hqm14rv3' /* Submit */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
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
                                        ),
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
