// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'dart:math';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:collection';
import 'package:intl/intl.dart';

//void main() {
//  runApp(MyApp());
//}

// ********
// ********
// ********
const double kXsBreakPoint = 300;
const double kSmBreakPoint = 768;
const double kMdBreakPoint = 992;
const double kLgBreakPoint = 1200;

extension BuildContextParsing on BuildContext {
  double get boxWidth {
    final MediaQueryData mediaQueryData = MediaQuery.of(this);
    final Size size = mediaQueryData.size;
    final double boxWidth = size.width;
    return boxWidth;
  }

  double get deviceWidth {
    final MediaQueryData mediaQueryData = MediaQuery.of(this);
    final Size size = mediaQueryData.size;

    final double deviceWidth = (io.Platform.isIOS || io.Platform.isAndroid) &&
            mediaQueryData.orientation == Orientation.landscape
        ? size.height
        : size.width;
    return deviceWidth;
  }

  double get screenWidth {
    final MediaQueryData mediaQueryData = MediaQuery.of(this);
    final Size size = mediaQueryData.size;
    final double deviceWidth = size.width;
    return deviceWidth;
  }

  double get deviceHeight {
    final MediaQueryData mediaQueryData = MediaQuery.of(this);
    final Size size = mediaQueryData.size;
    final double deviceHeight = (io.Platform.isIOS || io.Platform.isAndroid) &&
            mediaQueryData.orientation == Orientation.landscape
        ? size.width
        : size.height;
    return deviceHeight;
  }

  DeviceType get deviceType {
    final double width = this.deviceWidth;
    if (width > 0 && width < kXsBreakPoint) {
      return DeviceType.Smartphone;
    } else if (width >= kXsBreakPoint && width < kSmBreakPoint) {
      return DeviceType.MiniTablet;
    } else if (width >= kSmBreakPoint && width < kMdBreakPoint) {
      return DeviceType.Tablet;
    } else if (width >= kMdBreakPoint) {
      return DeviceType.Desktop;
    } else {
      return DeviceType.Unknown;
    }
  }

  DeviceSize get deviceSize {
    final double width = this.deviceWidth;
    if (width < kXsBreakPoint) {
      return DeviceSize.Xs;
    } else if (kXsBreakPoint <= width && width < kSmBreakPoint) {
      return DeviceSize.Sm;
    } else if (kSmBreakPoint <= width && width < kMdBreakPoint) {
      return DeviceSize.Md;
    } else if (kMdBreakPoint <= width && width < kLgBreakPoint) {
      return DeviceSize.Lg;
    } else {
      return DeviceSize.Xl;
    }
  }

  ScreenSize get screenSize {
    final double width = this.screenWidth;
    if (width < kXsBreakPoint) {
      return ScreenSize.Xs;
    } else if (kXsBreakPoint <= width && width < kSmBreakPoint) {
      return ScreenSize.Sm;
    } else if (kSmBreakPoint <= width && width < kMdBreakPoint) {
      return ScreenSize.Md;
    } else if (kMdBreakPoint <= width && width < kLgBreakPoint) {
      return ScreenSize.Lg;
    } else {
      return ScreenSize.Xl;
    }
  }

  double get defaultContainerRatio {
    double ratio = 1;
    switch (screenSize) {
      case ScreenSize.Xs:
        ratio = 1.45;
        break;
      case ScreenSize.Sm:
        ratio = 1.75;
        break;
      case ScreenSize.Md:
        ratio = 2;
        break;
      case ScreenSize.Lg:
        ratio = 2.5;
        break;
      case ScreenSize.Xl:
        ratio = 2.5;
        break;
      default:
        ratio = 1;
    }
    return ratio;
  }

  double get defaultContainerPadding {
    if (deviceSize == DeviceSize.Xs) {
      return 0;
    }
    return 10;
  }

  Orientation get orientation {
    final MediaQueryData mediaQueryData = MediaQuery.of(this);
    return mediaQueryData.orientation;
  }

  double get autoDrawerEdgeDragWidth {
    if (this.screenSize == ScreenSize.Xl ||
        this.screenSize == ScreenSize.Lg ||
        this.screenSize == ScreenSize.Md) {
      return 0;
    }
    return double.infinity;
  }
}

// refer to the type of device
enum DeviceType { Smartphone, MiniTablet, Tablet, Desktop, Unknown }

// refer to the device width
enum DeviceSize { Xs, Sm, Md, Lg, Xl }

// refer to the screen width
enum ScreenSize { Xs, Sm, Md, Lg, Xl }

//refer to the box width
enum BoxSize { Xs, Sm, Md, Lg, Xl }
/* Extra small devices (phones, 600px and down) */
// @media only screen and (max-width: 600px) {...}

/* Small devices (portrait tablets and large phones, 600px and up) */
// @media only screen and (min-width: 600px) {...}

/* Medium devices (landscape tablets, 768px and up) */
// @media only screen and (min-width: 768px) {...}

/* Large devices (laptops/desktops, 992px and up) */
// @media only screen and (min-width: 992px) {...}

/* Extra large devices (large laptops and desktops, 1200px and up) */
// @media only screen and (min-width: 1200px) {...}

// ********
// ********
// ********
// ********

class DatatableHeader {
  String? text;
  String? value;
  bool sortable;
  bool editable;
  bool show;
  TextAlign textAlign;
  int? flex;
  String? datatype;
  String? format;
  Widget Function(dynamic value)? headerBuilder;
  Widget Function(dynamic value, Map<String, dynamic> row)? sourceBuilder;

  DatatableHeader({
    this.text,
    this.textAlign = TextAlign.center,
    this.sortable = true,
    this.value,
    this.show = true,
    this.editable = false,
    this.flex,
    this.datatype,
    this.format,
    this.headerBuilder,
    this.sourceBuilder,
  });

  factory DatatableHeader.fromMap(Map<String, dynamic> map) => DatatableHeader(
        text: map['text'],
        value: map['value'],
        sortable: map['sortable'],
        show: map['show'],
        textAlign: map['textAlign'],
        flex: map['flex'],
        datatype: map['datatype'],
        format: map['format'],
        headerBuilder: map['headerBuilder'],
        sourceBuilder: map['sourceBuilder'],
      );
  Map<String, dynamic> toMap() => {
        "text": this.text,
        "value": this.value,
        "sortable": this.sortable,
        "show": this.show,
        "textAlign": this.textAlign,
        "flex": this.flex,
        "datatype": this.datatype,
        "format": this.format,
        "headerBuilder": this.headerBuilder,
        "sourceBuilder": this.sourceBuilder,
      };
}

// ********
class ResponsiveDatatable extends StatefulWidget {
  final bool showSelect;
  final List<DatatableHeader> headers;
  final List<Map<String, dynamic>> source;
  final List<Map<String, dynamic>> selecteds;
  final Widget title;
  final List<Widget> actions;
  final List<Widget> footers;
  // final Function(bool value) onSelectAll;
  final Function(bool value, Map<String, dynamic> data) onSelect;
  final Function(dynamic value) onTabRow;
  final Function(dynamic value) onSort;
  final String sortColumn;
  final bool sortAscending;
  final bool isLoading;
  final bool autoHeight;
  final bool hideUnderline;
  final bool commonMobileView;
  final bool isExpandRows;
  final List<bool> expanded;
  final Function dropContainer;
  final List<ScreenSize> reponseScreenSizes;

  final Color borderColor;
  final double borderWidth;
  final Color headerPanelColor;
  final Color headerTextColor;
  final String headerFont;
  final double headerFontSize;
  final int headerFontWeight;
  final Color dataPanelColor;
  final Color dataTextColor;
  final String dataTextFont;
  final double dataTextSize;
  final int dataTextWeight;
  final dynamic dataJSON;
  final bool showSearch;
  final Color innerRowBorderColor;
  final double innerRowBorderWidth;

  const ResponsiveDatatable({
    Key? key,
    this.showSelect = false,
    // this.onSelectAll,
    required this.onSelect,
    required this.onTabRow,
    required this.onSort,
    required this.headers,
    required this.source,
    required this.selecteds,
    required this.title,
    required this.actions,
    required this.footers,
    required this.sortColumn,
    required this.sortAscending,
    this.isLoading = false,
    this.autoHeight = true,
    this.hideUnderline = true,
    this.commonMobileView = false,
    this.isExpandRows = true,
    required this.expanded,
    required this.dropContainer,
    this.reponseScreenSizes = const [
      ScreenSize.Xs,
      ScreenSize.Sm,
      ScreenSize.Md
    ],
    required this.borderColor,
    required this.borderWidth,
    required this.headerPanelColor,
    required this.headerTextColor,
    required this.headerFont,
    required this.headerFontSize,
    required this.headerFontWeight,
    required this.dataPanelColor,
    required this.dataTextColor,
    required this.dataTextFont,
    required this.dataTextSize,
    required this.dataTextWeight,
    required this.dataJSON,
    required this.showSearch,
    required this.innerRowBorderColor,
    required this.innerRowBorderWidth,
  }) : super(key: key);

  @override
  _ResponsiveDatatableState createState() => _ResponsiveDatatableState();
}

class _ResponsiveDatatableState extends State<ResponsiveDatatable> {
  Widget mobileHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Checkbox(
        //  side: BorderSide(color: widget.dataTextColor, width: 1.5),
        // value: widget.selecteds.length == widget.source.length &&
        //   widget.source != null &&
        //  widget.source.isNotEmpty,
        //onChanged: (value) {
        //if (widget.onSelectAll != null) widget.onSelectAll(value);
        // }
        //),
        PopupMenuButton(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: const Text("Sort By"),
            ),
            tooltip: "Sort By",
            initialValue: widget.sortColumn,
            itemBuilder: (_) => widget.headers
                .where(
                    (header) => header.show == true && header.sortable == true)
                .toList()
                .map((header) => PopupMenuItem(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            "${header.text}",
                            textAlign: header.textAlign,
                            style: TextStyle(
                                    color: widget.headerTextColor,
                                    fontSize: widget.headerFontSize,
                                    fontWeight: FontWeight.w400)
                                .apply(
                                    fontWeightDelta: widget.headerFontWeight),
                          ),
                          if (widget.sortColumn != null &&
                              widget.sortColumn == header.value)
                            widget.sortAscending
                                ? const Icon(Icons.arrow_downward, size: 15)
                                : const Icon(Icons.arrow_upward, size: 15)
                        ],
                      ),
                      value: header.value,
                    ))
                .toList(),
            onSelected: (dynamic value) {
              if (widget.onSort != null) widget.onSort(value);
            })
      ],
    );
  }

  List<Widget> mobileList() {
    return widget.source.map((data) {
      return InkWell(
        onTap: widget.onTabRow != null
            ? () {
                widget.onTabRow(data);
              }
            : null,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: widget.borderColor,
                      width: widget.borderWidth))), //Axxonet
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  if (widget.showSelect && widget.selecteds != null)
                    Checkbox(
                        side:
                            BorderSide(color: widget.dataTextColor, width: 1.5),
                        checkColor: Colors.white,
                        value: widget.selecteds.contains(data),
                        onChanged: (value) {
                          if (widget.onSelect != null) {
                            widget.onSelect(value!, data);
                          }
                        }),
                ],
              ),
              if (widget.commonMobileView) widget.dropContainer(data),
              if (!widget.commonMobileView)
                ...widget.headers
                    .where((header) => header.show == true)
                    .toList()
                    .map(
                      (header) => Container(
                        padding: const EdgeInsets.all(11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            header.headerBuilder != null
                                ? header.headerBuilder!(header.value)
                                : Text(
                                    "${header.text}",
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                            color: widget.headerTextColor,
                                            fontSize: widget.headerFontSize,
                                            fontWeight: FontWeight.w400)
                                        .apply(
                                            fontWeightDelta:
                                                widget.headerFontWeight),
                                  ),
                            const Spacer(),
                            header.sourceBuilder != null
                                ? header.sourceBuilder!(
                                    data[header.value], data)
                                : header.editable
                                    ? editableWidget(
                                        data: data,
                                        header: header,
                                        textAlign: TextAlign.end,
                                      )
                                    : Text(
                                        //                  "${data[header.value]}",
                                        header.datatype == "DateTime"
                                            ? "${DateFormat(header.format).format(DateTime.parse(data[header.value]))}"
                                            : "${data[header.value]}",
                                        style: TextStyle(
                                            color: widget.headerTextColor),
                                      )
                          ],
                        ),
                      ),
                    )
                    .toList()
            ],
          ),
        ),
      );
    }).toList();
  }

  Alignment headerAlignSwitch(TextAlign textAlign) {
    switch (textAlign) {
      case TextAlign.center:
        return Alignment.center;
      case TextAlign.left:
        return Alignment.centerLeft;
      case TextAlign.right:
        return Alignment.centerRight;
      default:
        return Alignment.center;
    }
  }

  Widget desktopHeader() {
    //   print("* desktopHeader header=" + widget.headers.where((header) => header.show == true).toString() );

    return Container(
      decoration: BoxDecoration(
          color: widget.headerPanelColor, //Axxonet
          border: Border(
              bottom: BorderSide(
                  color: widget.borderColor, width: widget.borderWidth))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.showSelect && widget.selecteds != null)
            Checkbox(
                side: BorderSide(color: widget.dataTextColor, width: 2),
                value: widget.selecteds.length == widget.source.length &&
                    widget.source != null &&
                    widget.source.isNotEmpty,
                onChanged: (value) {
                  //  if (widget.onSelectAll != null) widget.onSelectAll(value);
                }),
          ...widget.headers
              .where((header) => header.show == true)
              .map(
                (header) => Expanded(
                    flex: header.flex ?? 1,
                    child: InkWell(
                      onTap: () {
                        if (widget.onSort != null && header.sortable) {
                          widget.onSort(header.value);
                        }
                      },
                      child: header.headerBuilder != null
                          ? header.headerBuilder!(header.value)
                          : Container(
                              padding: const EdgeInsets.all(1),
                              alignment: headerAlignSwitch(header.textAlign),
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    "${header.text}",
                                    textAlign: header.textAlign,
                                    style: TextStyle(
                                            color: widget.headerTextColor,
                                            fontSize: widget.headerFontSize,
                                            fontWeight: FontWeight.w400)
                                        .apply(
                                            fontWeightDelta:
                                                widget.headerFontWeight),
                                  ),
                                  if (widget.sortColumn != null &&
                                      widget.sortColumn == header.value)
                                    widget.sortAscending
                                        ? const Icon(Icons.arrow_downward,
                                            size: 15)
                                        : const Icon(Icons.arrow_upward,
                                            size: 15)
                                ],
                              ),
                            ),
                    )),
              )
              .toList()
        ],
      ),
    );
  }

  List<Widget> desktopList() {
    List<Widget> widgets = [];

    // print(widget.source);
    // print('balaji');

    for (var index = 0; index < widget.source.length; index++) {
      final data = widget.source[index];
      print(data);
      if (data.keys.contains('success')) {
        widgets.add(Container(
            // width: 500,
            // height: 500,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            alignment: AlignmentDirectional.center,
            child: Text('No data found')));
      } else {
        widgets.add(Column(
          children: [
            InkWell(
              onTap: () {
//              print(" Desktop Mode onTap->InkWell->setState->index=$index");

                if (widget.onTabRow != null) {
                  widget.onTabRow(data);
                }
                //             print(" Desktop Mode onTap->InkWell->setState->onTabRow");
                //    setState(() {
                //               print(" Desktop Mode setState->InkWell->setState->index=$index");
                //     widget.expanded[index] = !widget.expanded[index];
                //   });
              },
              child: Container(
                padding: EdgeInsets.all(widget.showSelect ? 0 : 1),
                decoration: BoxDecoration(
                    color: widget.dataPanelColor,
                    border: Border(
                        bottom: BorderSide(
                            color: widget.innerRowBorderColor,
                            width: widget.innerRowBorderWidth))), //Axxonet
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.showSelect && widget.selecteds != null)
                      Row(
                        children: [
                          Checkbox(
                              side: BorderSide(
                                  color: widget.dataTextColor, width: 2),
                              checkColor: Colors.white,
                              activeColor: Color(0xFF8A61FF),
                              value: widget.selecteds.contains(data),
                              onChanged: (value) {
                                print('printingTableData 1');
                                print('data' + jsonEncode(data));
                                FFAppState().ResponsiveTableWidgetData =
                                    jsonEncode(data);

                                if (widget.onSelect != null) {
                                  widget.onSelect(value!, data);
                                  print(data);
                                  print('value');
                                  print(value);
                                  print('checkbox');
                                  //checkboxselect
                                  //checkboxselect
                                  if (value) {
                                    if (data!.containsKey('m_id')) {
                                      FFAppState().idCount++;
                                      print(FFAppState().idCount);
                                      setState(() => FFAppState()
                                          .idList
                                          .add(data['m_id']));
                                      print(FFAppState().idList);
                                    }
                                    if (data!.containsKey('name')) {
                                      setState(() => FFAppState().staffName =
                                          data['name']);
                                      print(FFAppState().staffName);
                                    }
                                    if (data!.containsKey('chatstatus')) {
                                      setState(() => FFAppState().chatStatus =
                                          data['chatstatus']);
                                      print(FFAppState().chatStatus);
                                    }
                                    if (data!.containsKey('id')) {
                                      FFAppState().idCount++;
                                      print(FFAppState().idCount);
                                      setState(() =>
                                          FFAppState().staff.add(data['id']));
                                      print(FFAppState().staff);
                                    }
                                  }
                                  //checkboxunselect
                                  else {
                                    if (data!.containsKey('m_id')) {
                                      //  FFAppState().idCount--;
                                      // print(FFAppState().idCount);
                                      //  print(data['id']);
                                      FFAppState().idList.remove(data['m_id']);
                                      print(FFAppState().idList);
                                    }
                                    if (data!.containsKey('chatstatus')) {
                                      setState(
                                          () => FFAppState().chatStatus = '');
                                      print(FFAppState().chatStatus);
                                      print('chatstatus removed');
                                    }
                                    if (data!.containsKey('name')) {
                                      setState(
                                          () => FFAppState().staffName = '');
                                      print(FFAppState().staffName);
                                      print('name removed');
                                    }
                                    if (data!.containsKey('id')) {
                                      FFAppState().idCount--;
                                      print(FFAppState().idCount);
                                      print(data['id']);
                                      FFAppState().staff.remove(data['id']);
                                      print(FFAppState().staff);
                                    }
                                  }
                                }
                              }),
                          // RaisedButton(onPressed: (){
                          //   setState(() {
                          //     widget.expanded[widget.selecteds.indexOf(data)] = true;
                          //   });
                          // },
                          // child: Text("Drop"),)
                        ],
                      ),
                    ...widget.headers
                        .where((header) => header.show == true)
                        .map(
                          (header) => Expanded(
                            flex: header.flex ?? 1,
                            child: header.sourceBuilder != null
                                ? header.sourceBuilder!(
                                    data[header.value], data)
                                : header.editable
                                    ? editableWidget(
                                        data: data,
                                        header: header,
                                        textAlign: header.textAlign,
                                      )
                                    : Text(
                                        //                     "${data[header.value]}",
                                        header.datatype == "DateTime"
                                            ? "${DateFormat(header.format).format(DateTime.parse(data[header.value]))}"
                                            : "${data[header.value]}",
//                        header.datatype=="DateTime" ? "${DateFormat("yyyy-MM-dd").format(DateTime.parse(data[header.value]))}" : "${data[header.value]}",
                                        textAlign: header.textAlign,
                                        style: TextStyle(
                                                color: widget.dataTextColor,
                                                fontSize: widget.dataTextSize,
                                                fontWeight: FontWeight.w400)
                                            .apply(
                                                fontWeightDelta:
                                                    widget.dataTextWeight),
                                      ),
                          ),
                        )
                        .toList()
                  ],
                ),
              ),
            ),
            if (widget.isExpandRows && widget.expanded[index])
              widget.dropContainer(data)
          ],
        ));
      }
    }
    return widgets;
  }

  Widget editableWidget({
    // required
    required Map<String, dynamic> data,
    // required
    required DatatableHeader header,
    TextAlign textAlign = TextAlign.center,
  }) {
    return Container(
      color: widget.dataPanelColor, // Panel
      constraints: const BoxConstraints(maxWidth: 150),
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(5),
      child: TextField(
        style: TextStyle(color: widget.dataTextColor),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          border: this.widget.hideUnderline
              ? InputBorder.none
              : const UnderlineInputBorder(borderSide: BorderSide(width: 2)),
          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
            borderRadius: BorderRadius.circular(6.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        textAlign: textAlign,
        controller: TextEditingController.fromValue(
          TextEditingValue(text: "${data[header.value]}"),
        ),
        onChanged: (newValue) {
          data[header.value.toString()] = newValue;
          print("data 2: " + jsonEncode(data));
          FFAppState().ResponsiveTableWidgetData = jsonEncode(data);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.reponseScreenSizes.isNotEmpty &&
            widget.reponseScreenSizes.contains(context.screenSize)
        ?
        /**
     * for small screen
     */
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //title and actions
              if (widget.title != null || widget.actions != null)
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      // color: widget.dataPanelColor,
                      border: Border(
                          bottom: BorderSide(color: Colors.blue))), //Axxonet
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.title == null) widget.title,
                      if (widget.actions == null) ...widget.actions
                    ],
                  ),
                ),

              if (widget.autoHeight)
                Column(
                  children: [
                    if (widget.showSelect && widget.selecteds != null)
                      mobileHeader(),
                    if (widget.isLoading) const LinearProgressIndicator(),
                    //mobileList
                    ...mobileList(),
                  ],
                ),
              if (!widget.autoHeight)
                Expanded(
                  child: ListView(
                    // itemCount: source.length,
                    children: [
                      if (widget.showSelect && widget.selecteds != null)
                        mobileHeader(),
                      if (widget.isLoading) const LinearProgressIndicator(),
                      //mobileList
                      ...mobileList(),
                    ],
                  ),
                ),
              //footer
              if (widget.footers != null)
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [...widget.footers],
                )
            ],
          )
        /**
     * for large screen
     */
        : Column(
            children: [
              //title and actions
              if (widget.title != null || widget.actions != null)
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      //color: widget.dataPanelColor,
                      border: Border(
                          bottom: BorderSide(color: widget.borderColor))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.title != null) widget.title,
                      if (widget.actions != null) ...widget.actions
                    ],
                  ),
                ),

              //desktopHeader
              if (widget.headers != null && widget.headers.isNotEmpty)
                desktopHeader(),

              if (widget.isLoading) const LinearProgressIndicator(),

              if (widget.autoHeight) Column(children: desktopList()),

              if (!widget.autoHeight)
                // desktopList
                if (widget.source != null && widget.source.isNotEmpty)
                  Expanded(child: ListView(children: desktopList())),

              //footer
              if (widget.footers != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [...widget.footers],
                )
            ],
          );
  }
}

class DataPickerPage extends StatefulWidget {
  @override
  _DataPickerPageState createState() => _DataPickerPageState();
}

class _DataPickerPageState extends State<DataPickerPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ResponsiveTableWidget extends StatefulWidget {
  ResponsiveTableWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.borderColor,
    required this.borderWidth,
    required this.headerPanelColor,
    required this.headerTextColor,
    required this.headerFont,
    required this.headerFontSize,
    required this.headerFontWeight,
    required this.dataPanelColor,
    required this.dataTextColor,
    required this.dataTextFont,
    required this.dataTextSize,
    required this.dataTextWeight,
    required this.dataJSON,
    required this.showSearch,
    required this.innerRowBorderColor,
    required this.innerRowBorderWidth,
    required this.searchPanelColor,
    required this.elevation,
    required this.dataJSONMetaData,
    // required this.searchKey,
    // required this.searchName,
  }) : super(key: key);

  final double width;
  final double height;
  final Color borderColor;
  final double borderWidth;
  final Color headerPanelColor;
  final Color headerTextColor;
  final String headerFont;
  final double headerFontSize;
  final int headerFontWeight;
  final Color dataPanelColor;
  final Color dataTextColor;
  final String dataTextFont;
  final double dataTextSize;
  final int dataTextWeight;
  final dynamic dataJSON;
  final bool showSearch;
  final Color innerRowBorderColor;
  final double innerRowBorderWidth;
  final Color searchPanelColor;
  final double elevation;
  final dynamic dataJSONMetaData;
  // String searchKey;
  // final String searchName;

  @override
  _ResponsiveTableWidgetState createState() => _ResponsiveTableWidgetState();
}

class _ResponsiveTableWidgetState extends State<ResponsiveTableWidget> {
  List<Map<String, dynamic>> _data = [];
  List<DatatableHeader> _headers = [];
  /*
  _headers = [
    DatatableHeader(
        text: "Id",
        value: "id",
        show: true,
        sortable: true,
        textAlign: TextAlign.center),
    DatatableHeader(
        text: "Event Name",
        value: "eventname",
        show: true,
        flex: 2,
        sortable: true,
        editable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Start Date",
        value: "startdate",
        show: true,
        sortable: true,
        textAlign: TextAlign.center),
    DatatableHeader(
        text: "End Date",
        value: "enddate",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Province",
        value: "province",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Region",
        value: "region",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "City",
        value: "city",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Alert",
        value: "alert",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Received",
        value: "received",
        show: true,
        sortable: false,
        sourceBuilder: (value, row) {
          List list = List.from(value);

          return Container(
            child: Column(
              children: [
                Container(
                  width: 85,
                  child: LinearProgressIndicator(
                    value: list.first / list.last,
                  ),
                ),
                Text("${list.first} of ${list.last}")
              ],
            ),
          );
        },
        textAlign: TextAlign.center),
  ];
  */

  Widget _dropContainer(data) {
    print("_dropContainer");
    List<Widget> _children = data.entries.map<Widget>((entry) {
      Widget w = Row(
        children: [
          Text(entry.key.toString()),
          Spacer(),
          Text(entry.value.toString()),
        ],
      );
      return w;
    }).toList();
    return Container(
      // height: 100,
      child: Column(
        // children: [
        //   Expanded(
        //       child: Container(
        //     color: Colors.red,
        //     height: 50,
        //   )),

        // ],
        children: _children,
      ),
    );
  }

  List<int> _perPages = [5, 10, 20, 50, 100];
  int _total = 100;
  int _currentPerPage = 20;
  late List<bool> _expanded;
  // String _searchKey = widget.searchKey;

  int _currentPage = 1;
  bool _isSearch = false;
  List<Map<String, dynamic>> _sourceOriginal = [];
  List<Map<String, dynamic>> _sourceFiltered = [];
  List<Map<String, dynamic>> _source = [];
  List<Map<String, dynamic>> _selecteds = [];
  // ignore: unused_field
//  String _selectableKey = "id";

  String _sortColumn = '';
  bool _sortAscending = true;
  bool _isLoading = true;
  bool _showSelect = true;
  var random = new Random();

  _initData() async {
    _pullData();

    FFAppState().ResponsiveTableWidgetData = jsonEncode(_data);
  }

  _pullData() async {
    _expanded = List.generate(_currentPerPage, (index) => false);

    setState(() => _isLoading = true);
    Future.delayed(Duration(seconds: 2)).then((value) {
      _sourceOriginal.clear();
      _data = parseJSON(widget.dataJSON, _data);
      _sourceOriginal.addAll(_data); // random.nextInt(10000)

      _sourceFiltered = _sourceOriginal;
      _total = _sourceFiltered.length;
      _source = _sourceFiltered
          .getRange(
              0,
              (_sourceFiltered.length < _currentPerPage)
                  ? _sourceFiltered.length
                  : _currentPerPage)
          .toList();
      setState(() => _isLoading = false);
    });
  }

  _resetData({start = 0}) async {
    setState(() => _isLoading = true);
    var _expandedLen =
        _total - start < _currentPerPage ? _total - start : _currentPerPage;
    Future.delayed(Duration(seconds: 0)).then((value) {
      _expanded = List.generate(_expandedLen as int, (index) => false);
      _source.clear();
      _source = _sourceFiltered.getRange(start, start + _expandedLen).toList();
      setState(() => _isLoading = false);
    });
  }

  _filterData(value) {
    setState(() => _isLoading = true);

    try {
      if (value == "" || value == null) {
        _sourceFiltered = _sourceOriginal;
        print(_sourceFiltered);
        print(_sourceOriginal);
      } else {
        List<Map<String, dynamic>> jsonData = _sourceOriginal;
        String text = value;
        List<Map<String, dynamic>> results = [];
        for (int index = 0; index < jsonData.length; index++) {
          for (String key1 in jsonData[index].keys) {
            if (key1 == "json") {
              for (String key2 in jsonData[index]["json"].keys) {
                if (jsonData[index]["json"][key2]
                    .toString()
                    .toLowerCase()
                    .contains(text.toLowerCase())) {
                  results.add(jsonData[index]);
                  break;
                }
              }
              break;
            } else if (jsonData[index][key1]
                .toString()
                .toLowerCase()
                .contains(text.toLowerCase())) {
              results.add(jsonData[index]);
              break;
            }
          }
        }
        _sourceFiltered = (results.length > 0) ? results : [];
        // _sourceFiltered = _sourceOriginal
        //     .where((data) => data[widget.searchKey]
        //         .toString()
        //         .toLowerCase()
        //         .contains(value.toString().toLowerCase()))
        //     .toList();
      }
      //   _sourceFiltered = _sourceOriginal
      //       .where((data) => data[widget.searchKey]
      //           .toString()
      //           .toLowerCase()
      //           .contains(value.toString().toLowerCase()))
      //       .toList();
      // }

      _total = _sourceFiltered.length;
      var _rangeTop = _total < _currentPerPage ? _total : _currentPerPage;
      _expanded = List.generate(_rangeTop, (index) => false);
      _source = _sourceFiltered.getRange(0, _rangeTop).toList();
    } catch (e) {
      print("Exception" + e.toString());
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    _initData();
    setState(() => FFAppState().getTeamName = '');
    setState(() => FFAppState().getEvent = '');
  }

  @override
  void dispose() {
    super.dispose();
  }

  // **** WIDGET BUILD

  @override
  Widget build(BuildContext context) {
    bool _showSearch;

    if (widget.showSearch == null || widget.showSearch == false) {
      _showSearch = false;
    } else
      _showSearch = true;

    // Load Languages
    //  List _data;
    _headers = parseJSONMetaData(widget.dataJSONMetaData, _headers);
    // _data = parseJSON(widget.dataJSON, _data);
    //  _initData(_data);
    // End Load Languages

    return Container(
      // color: widget.dataPanelColor,
      child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
            Container(
              // color: widget.dataPanelColor,
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(0),
              constraints: BoxConstraints(
                maxHeight: widget.height,
              ),
              child: Card(
                color: widget.dataPanelColor,
                elevation: widget.elevation,
                shadowColor: Colors.grey,
                clipBehavior: Clip.none,
                child: ResponsiveDatatable(
                  title: Text(''),
                  borderColor: widget.borderColor,
                  borderWidth: widget.borderWidth,
                  headerPanelColor: widget.headerPanelColor == null
                      ? Colors.blue
                      : widget.headerPanelColor,
                  headerTextColor: widget.headerTextColor == null
                      ? Colors.white
                      : widget.headerTextColor,
                  headerFont:
                      widget.headerFont == null ? "Poppins" : widget.headerFont,
                  headerFontSize: widget.headerFontSize,
                  headerFontWeight: widget.headerFontWeight,
                  dataPanelColor: widget.dataPanelColor == null
                      ? Colors.transparent
                      : widget.dataPanelColor,
                  dataTextColor: widget.dataTextColor == null
                      ? Colors.white
                      : widget.dataTextColor,
                  dataTextFont: widget.dataTextFont,
                  dataTextSize: widget.dataTextSize,
                  dataTextWeight: widget.dataTextWeight,
                  dataJSON: widget.dataJSON,
                  showSearch: widget.showSearch,
                  innerRowBorderColor: widget.innerRowBorderColor == null
                      ? Colors.red
                      : widget.innerRowBorderColor,
                  innerRowBorderWidth: widget.innerRowBorderWidth == null
                      ? 1
                      : widget.innerRowBorderWidth,

                  reponseScreenSizes: [ScreenSize.Xs],

                  actions: [
                    if (_isSearch && _showSearch)
                      Expanded(
                          child: TextField(
                        style: TextStyle(color: widget.dataTextColor),
                        decoration: InputDecoration(
                            hintText: 'Search  ',
                            // widget.searchName
                            //     .replaceAll(new RegExp('[\\W_]+'), ' ')
                            //     .toUpperCase(),
                            hintStyle: TextStyle(color: widget.dataTextColor),
                            prefixIcon: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: () {
                                  setState(() {
                                    _isSearch = false;
                                  });
                                }),
                            suffixIcon: IconButton(
                                icon: Icon(Icons.search,
                                    size: 22, color: widget.dataTextColor),
                                onPressed: () {})),
                        onChanged: (value) {
                          _filterData(value);
                        },
                      )),
                    if (!_isSearch && _showSearch)
                      IconButton(
                          icon: Icon(Icons.search,
                              size: 22, color: widget.dataTextColor),
                          onPressed: () {
                            setState(() {
                              _isSearch = true;
                            });
                          })
                    //      } // if(showSearch)
                  ],

                  headers: _headers,
                  source: _source,
                  selecteds: _selecteds,
                  showSelect: _showSelect,
                  autoHeight: false,
                  dropContainer: _dropContainer,
                  onTabRow: (data) {
                    Text(data.toString());
                    //                print(" Desktop Mode onTap->InkWell->setState->data=$data");
                  },
                  onSort: (value) {
                    setState(() => _isLoading = true);

                    setState(() {
                      _sortColumn = value;
                      _sortAscending = !_sortAscending;
                      if (_sortAscending) {
                        _sourceFiltered.sort((a, b) =>
                            b["$_sortColumn"].compareTo(a["$_sortColumn"]));
                      } else {
                        _sourceFiltered.sort((a, b) =>
                            a["$_sortColumn"].compareTo(b["$_sortColumn"]));
                      }
                      var _rangeTop = _currentPerPage < _sourceFiltered.length
                          ? _currentPerPage
                          : _sourceFiltered.length;
                      _source = _sourceFiltered.getRange(0, _rangeTop).toList();
                      // widget.searchKey = value;

                      _isLoading = false;
                    });
                  },
                  expanded: _expanded,
                  sortAscending: _sortAscending,
                  sortColumn: _sortColumn,
                  isLoading: _isLoading,
                  onSelect: (value, item) {
                    Text("$value  $item ");
//                        print("Loading value item = $value  $item "); // Axxonet
                    if (value) {
                      setState(() => _selecteds.add(item));
                    } else {
                      setState(
                          () => _selecteds.removeAt(_selecteds.indexOf(item)));
                    }
                  },
                  //onSelectAll: (value) {
//                        print("Loading ALL value item = $value");
                  // if (value) {
                  // setState(() => _selecteds =
                  //   _source.map((entry) => entry).toList().cast());
                  //} else {
                  //setState(() => _selecteds.clear());
                  //}
                  //},
                  footers: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Rows per page:",
                        style: TextStyle(color: widget.dataTextColor),
                      ),
                    ),
                    if (_perPages.isNotEmpty)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        color: Colors.white70,
                        child: DropdownButton(
                            value: _currentPerPage,
                            items: _perPages
                                .map((e) => DropdownMenuItem(
                                      child: Text(
                                        "$e",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (dynamic value) {
                              setState(() {
                                _currentPerPage = value;
                                _currentPage = 1;
                                _resetData();
                              });
                            }),
                      ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Text(
                        "$_currentPage - $_currentPerPage of $_total",
                        style: TextStyle(color: widget.dataTextColor),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,
                          size: 12, color: widget.dataTextColor),
                      onPressed: _currentPage == 1
                          ? null
                          : () {
                              var _nextSet = _currentPage - _currentPerPage;
                              setState(() {
                                _currentPage = _nextSet > 1 ? _nextSet : 1;
                                _resetData(start: _currentPage - 1);
                              });
                            },
                      padding: EdgeInsets.symmetric(horizontal: 2),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios,
                          size: 12, color: widget.dataTextColor),
                      onPressed: _currentPage + _currentPerPage - 1 > _total
                          ? null
                          : () {
                              var _nextSet = _currentPage + _currentPerPage;

                              setState(() {
                                _currentPage = _nextSet < _total
                                    ? _nextSet
                                    : _total - _currentPerPage;
                                _resetData(start: _nextSet - 1);
                              });
                            },
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    )
                  ],
                ),
              ),
            ),
          ])),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _initData();
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}

// **********
// **********
// **********

List<Map<String, dynamic>> parseJSON(
  dynamic dataJSON,
  List<Map<String, dynamic>> _data,
) {
  // Add your function code here!
  //print("parseJSON: Entered");
  Map x;
  if (_data == null || _data.isEmpty) {
    //  print("parseJSON: new List");
    _data = [];
  }

  try {
    for (var dataElement in dataJSON) {
      //     print("parseJSON: dataElement + $dataElement");
      x = new Map();
      dataElement.forEach((k, v) {
//        print("parseJSON: k=$k v=$v");
        if (v != null) {} //  if (v!=null)
      } //  dataElement.forEach((k, v)
          ); //  for (var dataElement in dataJSON)
      _data.add(dataElement);
    }
  } catch (e) {
    //  print("Exception 2 =" + e);
  } // end catch
  return _data;
}
// **********
// **********
// **********

List<DatatableHeader> parseJSONMetaData(
    dynamic dataJSONMetData, List _headers) {
  List<DatatableHeader> _headers = [];
  DatatableHeader x;

  //if (_headers == null || _headers.isEmpty) _headers = [];

  try {
    for (var dataElement in dataJSONMetData) {
      x = new DatatableHeader();
      dataElement.forEach((k, v) {
//        print("k=$k , v=$v : type =" + v.runtimeType.toString());
        if (v != null) {
          if (k == "text") {
            x.text = v;
          } else if (k == "value") {
            x.value = v;
          } else if (k == "sortable") {
            x.sortable = (v == true || v == "true") ? true : false;
          } else if (k == "editable") {
            x.editable = (v == true || v == "true") ? true : false;
          } else if (k == "show") {
            x.show = (v == true || v == "true") ? true : false;
          } else if (k == "textAlign") {
            x.textAlign = v == "TextAlign.left"
                ? TextAlign.left
                : v == "TextAlign.right"
                    ? TextAlign.right
                    : TextAlign.center;
          } else if (k == "flex") {
            x.flex = v.runtimeType == String ? int.parse(v) : v;
          } else if (k == "datatype") {
            x.datatype = v;
          } else if (k == "format") {
            x.format = v;
          }
        } //  if (v!=null)
      } //  dataElement.forEach((k, v)

          ); //  for (var dataElement in dataJSON)
      _headers.add(x);
    }
  } catch (e) {
    print("Exception 2 =" + e.toString());
  } // end catch
  return _headers;
}
