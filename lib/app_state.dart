import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _clinicName = prefs.getString('ff_clinicName') ?? _clinicName;
    });
    _safeInit(() {
      _groupName = prefs.getString('ff_groupName') ?? _groupName;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_conditionData')) {
        try {
          _conditionData =
              jsonDecode(prefs.getString('ff_conditionData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_patientData')) {
        try {
          _patientData = jsonDecode(prefs.getString('ff_patientData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _sessionRefreshToken =
          prefs.getString('ff_sessionRefreshToken') ?? _sessionRefreshToken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_universalLoginData')) {
        try {
          _universalLoginData =
              jsonDecode(prefs.getString('ff_universalLoginData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _defaultRoleId = prefs.getString('ff_defaultRoleId') ?? _defaultRoleId;
    });
    _safeInit(() {
      _sessionToken = prefs.getString('ff_sessionToken') ?? _sessionToken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool _value) {
    _darkMode = _value;
  }

  String _applicationId = '4549a3b5-dedf-49d8-b942-1bc1098dcfd5';
  String get applicationId => _applicationId;
  set applicationId(String _value) {
    _applicationId = _value;
  }

  String _getEmailAddress = '';
  String get getEmailAddress => _getEmailAddress;
  set getEmailAddress(String _value) {
    _getEmailAddress = _value;
  }

  String _sessionPasswordChangeRequired = '';
  String get sessionPasswordChangeRequired => _sessionPasswordChangeRequired;
  set sessionPasswordChangeRequired(String _value) {
    _sessionPasswordChangeRequired = _value;
  }

  String _sessionPasswordLastUpdatedInstant = '';
  String get sessionPasswordLastUpdatedInstant =>
      _sessionPasswordLastUpdatedInstant;
  set sessionPasswordLastUpdatedInstant(String _value) {
    _sessionPasswordLastUpdatedInstant = _value;
  }

  String _sessionLastLoginInstant = '';
  String get sessionLastLoginInstant => _sessionLastLoginInstant;
  set sessionLastLoginInstant(String _value) {
    _sessionLastLoginInstant = _value;
  }

  String _sessionActive = '';
  String get sessionActive => _sessionActive;
  set sessionActive(String _value) {
    _sessionActive = _value;
  }

  String _sessionVerified = '';
  String get sessionVerified => _sessionVerified;
  set sessionVerified(String _value) {
    _sessionVerified = _value;
  }

  String _sessionUsernameStatus = '';
  String get sessionUsernameStatus => _sessionUsernameStatus;
  set sessionUsernameStatus(String _value) {
    _sessionUsernameStatus = _value;
  }

  String _sessionLoginId = '';
  String get sessionLoginId => _sessionLoginId;
  set sessionLoginId(String _value) {
    _sessionLoginId = _value;
  }

  String _cEventName = '';
  String get cEventName => _cEventName;
  set cEventName(String _value) {
    _cEventName = _value;
  }

  String _cTeamName = '';
  String get cTeamName => _cTeamName;
  set cTeamName(String _value) {
    _cTeamName = _value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String _value) {
    _firstName = _value;
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String _value) {
    _lastName = _value;
  }

  String _donationAmount = '';
  String get donationAmount => _donationAmount;
  set donationAmount(String _value) {
    _donationAmount = _value;
  }

  int _paymentstatus = 0;
  int get paymentstatus => _paymentstatus;
  set paymentstatus(int _value) {
    _paymentstatus = _value;
  }

  int _dashboard = 0;
  int get dashboard => _dashboard;
  set dashboard(int _value) {
    _dashboard = _value;
  }

  int _idCount = 0;
  int get idCount => _idCount;
  set idCount(int _value) {
    _idCount = _value;
  }

  List<String> _idList = [];
  List<String> get idList => _idList;
  set idList(List<String> _value) {
    _idList = _value;
  }

  void addToIdList(String _value) {
    _idList.add(_value);
  }

  void removeFromIdList(String _value) {
    _idList.remove(_value);
  }

  void removeAtIndexFromIdList(int _index) {
    _idList.removeAt(_index);
  }

  void updateIdListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _idList[_index] = updateFn(_idList[_index]);
  }

  void insertAtIndexInIdList(int _index, String _value) {
    _idList.insert(_index, _value);
  }

  int _IdCountTable = 0;
  int get IdCountTable => _IdCountTable;
  set IdCountTable(int _value) {
    _IdCountTable = _value;
  }

  String _responseIdValue = '';
  String get responseIdValue => _responseIdValue;
  set responseIdValue(String _value) {
    _responseIdValue = _value;
  }

  String _postalCode = '';
  String get postalCode => _postalCode;
  set postalCode(String _value) {
    _postalCode = _value;
  }

  String _clinicName = '';
  String get clinicName => _clinicName;
  set clinicName(String _value) {
    _clinicName = _value;
    prefs.setString('ff_clinicName', _value);
  }

  String _groupName = '';
  String get groupName => _groupName;
  set groupName(String _value) {
    _groupName = _value;
    prefs.setString('ff_groupName', _value);
  }

  List<String> _visibleContainer = [
    '1. Quick Add',
    '2. Personal Information',
    '3. Health Information',
    '4. Medical History',
    '5. Images'
  ];
  List<String> get visibleContainer => _visibleContainer;
  set visibleContainer(List<String> _value) {
    _visibleContainer = _value;
  }

  void addToVisibleContainer(String _value) {
    _visibleContainer.add(_value);
  }

  void removeFromVisibleContainer(String _value) {
    _visibleContainer.remove(_value);
  }

  void removeAtIndexFromVisibleContainer(int _index) {
    _visibleContainer.removeAt(_index);
  }

  void updateVisibleContainerAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _visibleContainer[_index] = updateFn(_visibleContainer[_index]);
  }

  void insertAtIndexInVisibleContainer(int _index, String _value) {
    _visibleContainer.insert(_index, _value);
  }

  int _index = 0;
  int get index => _index;
  set index(int _value) {
    _index = _value;
  }

  dynamic _conditionData;
  dynamic get conditionData => _conditionData;
  set conditionData(dynamic _value) {
    _conditionData = _value;
    prefs.setString('ff_conditionData', jsonEncode(_value));
  }

  String _conditioncode = '';
  String get conditioncode => _conditioncode;
  set conditioncode(String _value) {
    _conditioncode = _value;
  }

  String _serviceproviderdisplay = '';
  String get serviceproviderdisplay => _serviceproviderdisplay;
  set serviceproviderdisplay(String _value) {
    _serviceproviderdisplay = _value;
  }

  String _encountertypecode = '';
  String get encountertypecode => _encountertypecode;
  set encountertypecode(String _value) {
    _encountertypecode = _value;
  }

  dynamic _encounterData;
  dynamic get encounterData => _encounterData;
  set encounterData(dynamic _value) {
    _encounterData = _value;
  }

  dynamic _ResponsiveTableWidgetData;
  dynamic get ResponsiveTableWidgetData => _ResponsiveTableWidgetData;
  set ResponsiveTableWidgetData(dynamic _value) {
    _ResponsiveTableWidgetData = _value;
  }

  String _getTeamName = '';
  String get getTeamName => _getTeamName;
  set getTeamName(String _value) {
    _getTeamName = _value;
  }

  String _getEvent = '';
  String get getEvent => _getEvent;
  set getEvent(String _value) {
    _getEvent = _value;
  }

  String _user = '';
  String get user => _user;
  set user(String _value) {
    _user = _value;
  }

  String _uploadimgname = '';
  String get uploadimgname => _uploadimgname;
  set uploadimgname(String _value) {
    _uploadimgname = _value;
  }

  String _getemailaddress = '';
  String get getemailaddress => _getemailaddress;
  set getemailaddress(String _value) {
    _getemailaddress = _value;
  }

  String _countNoti = '';
  String get countNoti => _countNoti;
  set countNoti(String _value) {
    _countNoti = _value;
  }

  dynamic _facilityData;
  dynamic get facilityData => _facilityData;
  set facilityData(dynamic _value) {
    _facilityData = _value;
  }

  dynamic _otpLoginData;
  dynamic get otpLoginData => _otpLoginData;
  set otpLoginData(dynamic _value) {
    _otpLoginData = _value;
  }

  dynamic _patientData;
  dynamic get patientData => _patientData;
  set patientData(dynamic _value) {
    _patientData = _value;
    prefs.setString('ff_patientData', jsonEncode(_value));
  }

  String _requestIdValue = '';
  String get requestIdValue => _requestIdValue;
  set requestIdValue(String _value) {
    _requestIdValue = _value;
  }

  String _temperature = '';
  String get temperature => _temperature;
  set temperature(String _value) {
    _temperature = _value;
  }

  String _uneasy = '';
  String get uneasy => _uneasy;
  set uneasy(String _value) {
    _uneasy = _value;
  }

  String _emergency = '';
  String get emergency => _emergency;
  set emergency(String _value) {
    _emergency = _value;
  }

  dynamic _npiResponse;
  dynamic get npiResponse => _npiResponse;
  set npiResponse(dynamic _value) {
    _npiResponse = _value;
  }

  String _otpString = '';
  String get otpString => _otpString;
  set otpString(String _value) {
    _otpString = _value;
  }

  bool _checkOptTimeExpired = false;
  bool get checkOptTimeExpired => _checkOptTimeExpired;
  set checkOptTimeExpired(bool _value) {
    _checkOptTimeExpired = _value;
  }

  String _colourChanges = '';
  String get colourChanges => _colourChanges;
  set colourChanges(String _value) {
    _colourChanges = _value;
  }

  String _cphonenumber = '';
  String get cphonenumber => _cphonenumber;
  set cphonenumber(String _value) {
    _cphonenumber = _value;
  }

  bool _visible = false;
  bool get visible => _visible;
  set visible(bool _value) {
    _visible = _value;
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
  }

  String _value = '';
  String get value => _value;
  set value(String _value) {
    _value = _value;
  }

  String _facilityId = '';
  String get facilityId => _facilityId;
  set facilityId(String _value) {
    _facilityId = _value;
  }

  String _createChannel = '';
  String get createChannel => _createChannel;
  set createChannel(String _value) {
    _createChannel = _value;
  }

  String _otpStringTest = '';
  String get otpStringTest => _otpStringTest;
  set otpStringTest(String _value) {
    _otpStringTest = _value;
  }

  String _chatMenu = '';
  String get chatMenu => _chatMenu;
  set chatMenu(String _value) {
    _chatMenu = _value;
  }

  String _channelName = 'axxonet_channel';
  String get channelName => _channelName;
  set channelName(String _value) {
    _channelName = _value;
  }

  String _rocketChatToken = '';
  String get rocketChatToken => _rocketChatToken;
  set rocketChatToken(String _value) {
    _rocketChatToken = _value;
  }

  String _chatUserId = '';
  String get chatUserId => _chatUserId;
  set chatUserId(String _value) {
    _chatUserId = _value;
  }

  bool _facilityAdmin01 = false;
  bool get facilityAdmin01 => _facilityAdmin01;
  set facilityAdmin01(bool _value) {
    _facilityAdmin01 = _value;
  }

  bool _addProviders = false;
  bool get addProviders => _addProviders;
  set addProviders(bool _value) {
    _addProviders = _value;
  }

  bool _addPatient = false;
  bool get addPatient => _addPatient;
  set addPatient(bool _value) {
    _addPatient = _value;
  }

  String _fileName = '';
  String get fileName => _fileName;
  set fileName(String _value) {
    _fileName = _value;
  }

  String _fileCount = '';
  String get fileCount => _fileCount;
  set fileCount(String _value) {
    _fileCount = _value;
  }

  bool _fileStatusVisible = false;
  bool get fileStatusVisible => _fileStatusVisible;
  set fileStatusVisible(bool _value) {
    _fileStatusVisible = _value;
  }

  String _facilityAdminDashboard = 'DA';
  String get facilityAdminDashboard => _facilityAdminDashboard;
  set facilityAdminDashboard(String _value) {
    _facilityAdminDashboard = _value;
  }

  bool _mouseRegion = false;
  bool get mouseRegion => _mouseRegion;
  set mouseRegion(bool _value) {
    _mouseRegion = _value;
  }

  List<String> _staff = [];
  List<String> get staff => _staff;
  set staff(List<String> _value) {
    _staff = _value;
  }

  void addToStaff(String _value) {
    _staff.add(_value);
  }

  void removeFromStaff(String _value) {
    _staff.remove(_value);
  }

  void removeAtIndexFromStaff(int _index) {
    _staff.removeAt(_index);
  }

  void updateStaffAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _staff[_index] = updateFn(_staff[_index]);
  }

  void insertAtIndexInStaff(int _index, String _value) {
    _staff.insert(_index, _value);
  }

  String _sortdata = '0';
  String get sortdata => _sortdata;
  set sortdata(String _value) {
    _sortdata = _value;
  }

  String _sortdata1 = '';
  String get sortdata1 => _sortdata1;
  set sortdata1(String _value) {
    _sortdata1 = _value;
  }

  String _sortdata2 = '';
  String get sortdata2 => _sortdata2;
  set sortdata2(String _value) {
    _sortdata2 = _value;
  }

  String _sortdata3 = '';
  String get sortdata3 => _sortdata3;
  set sortdata3(String _value) {
    _sortdata3 = _value;
  }

  String _sortdata4 = '2020';
  String get sortdata4 => _sortdata4;
  set sortdata4(String _value) {
    _sortdata4 = _value;
  }

  String _sortdata5 = '';
  String get sortdata5 => _sortdata5;
  set sortdata5(String _value) {
    _sortdata5 = _value;
  }

  String _sortdata6 = '';
  String get sortdata6 => _sortdata6;
  set sortdata6(String _value) {
    _sortdata6 = _value;
  }

  List<int> _XAxis = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  List<int> get XAxis => _XAxis;
  set XAxis(List<int> _value) {
    _XAxis = _value;
  }

  void addToXAxis(int _value) {
    _XAxis.add(_value);
  }

  void removeFromXAxis(int _value) {
    _XAxis.remove(_value);
  }

  void removeAtIndexFromXAxis(int _index) {
    _XAxis.removeAt(_index);
  }

  void updateXAxisAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _XAxis[_index] = updateFn(_XAxis[_index]);
  }

  void insertAtIndexInXAxis(int _index, int _value) {
    _XAxis.insert(_index, _value);
  }

  dynamic _graphData;
  dynamic get graphData => _graphData;
  set graphData(dynamic _value) {
    _graphData = _value;
  }

  bool _graphType = false;
  bool get graphType => _graphType;
  set graphType(bool _value) {
    _graphType = _value;
  }

  List<String> _XAxisBar = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  List<String> get XAxisBar => _XAxisBar;
  set XAxisBar(List<String> _value) {
    _XAxisBar = _value;
  }

  void addToXAxisBar(String _value) {
    _XAxisBar.add(_value);
  }

  void removeFromXAxisBar(String _value) {
    _XAxisBar.remove(_value);
  }

  void removeAtIndexFromXAxisBar(int _index) {
    _XAxisBar.removeAt(_index);
  }

  void updateXAxisBarAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _XAxisBar[_index] = updateFn(_XAxisBar[_index]);
  }

  void insertAtIndexInXAxisBar(int _index, String _value) {
    _XAxisBar.insert(_index, _value);
  }

  List<double> _barGraphWidgetData = [40.0, 30.0, 10.0, 60.0, 20.0, 5.0, 10.0];
  List<double> get barGraphWidgetData => _barGraphWidgetData;
  set barGraphWidgetData(List<double> _value) {
    _barGraphWidgetData = _value;
  }

  void addToBarGraphWidgetData(double _value) {
    _barGraphWidgetData.add(_value);
  }

  void removeFromBarGraphWidgetData(double _value) {
    _barGraphWidgetData.remove(_value);
  }

  void removeAtIndexFromBarGraphWidgetData(int _index) {
    _barGraphWidgetData.removeAt(_index);
  }

  void updateBarGraphWidgetDataAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _barGraphWidgetData[_index] = updateFn(_barGraphWidgetData[_index]);
  }

  void insertAtIndexInBarGraphWidgetData(int _index, double _value) {
    _barGraphWidgetData.insert(_index, _value);
  }

  String _uploadpdf = '';
  String get uploadpdf => _uploadpdf;
  set uploadpdf(String _value) {
    _uploadpdf = _value;
  }

  int _countIncrement = 7;
  int get countIncrement => _countIncrement;
  set countIncrement(int _value) {
    _countIncrement = _value;
  }

  List<String> _pieChartLabels = ['Patients', 'Providers', 'Staff', 'empty'];
  List<String> get pieChartLabels => _pieChartLabels;
  set pieChartLabels(List<String> _value) {
    _pieChartLabels = _value;
  }

  void addToPieChartLabels(String _value) {
    _pieChartLabels.add(_value);
  }

  void removeFromPieChartLabels(String _value) {
    _pieChartLabels.remove(_value);
  }

  void removeAtIndexFromPieChartLabels(int _index) {
    _pieChartLabels.removeAt(_index);
  }

  void updatePieChartLabelsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _pieChartLabels[_index] = updateFn(_pieChartLabels[_index]);
  }

  void insertAtIndexInPieChartLabels(int _index, String _value) {
    _pieChartLabels.insert(_index, _value);
  }

  List<int> _pieChartValues01 = [60, 20, 20];
  List<int> get pieChartValues01 => _pieChartValues01;
  set pieChartValues01(List<int> _value) {
    _pieChartValues01 = _value;
  }

  void addToPieChartValues01(int _value) {
    _pieChartValues01.add(_value);
  }

  void removeFromPieChartValues01(int _value) {
    _pieChartValues01.remove(_value);
  }

  void removeAtIndexFromPieChartValues01(int _index) {
    _pieChartValues01.removeAt(_index);
  }

  void updatePieChartValues01AtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _pieChartValues01[_index] = updateFn(_pieChartValues01[_index]);
  }

  void insertAtIndexInPieChartValues01(int _index, int _value) {
    _pieChartValues01.insert(_index, _value);
  }

  List<String> _pieChartLabels01 = ['This Month', 'Last Month', 'empty'];
  List<String> get pieChartLabels01 => _pieChartLabels01;
  set pieChartLabels01(List<String> _value) {
    _pieChartLabels01 = _value;
  }

  void addToPieChartLabels01(String _value) {
    _pieChartLabels01.add(_value);
  }

  void removeFromPieChartLabels01(String _value) {
    _pieChartLabels01.remove(_value);
  }

  void removeAtIndexFromPieChartLabels01(int _index) {
    _pieChartLabels01.removeAt(_index);
  }

  void updatePieChartLabels01AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _pieChartLabels01[_index] = updateFn(_pieChartLabels01[_index]);
  }

  void insertAtIndexInPieChartLabels01(int _index, String _value) {
    _pieChartLabels01.insert(_index, _value);
  }

  List<int> _pieChartValues = [25, 25, 25, 25];
  List<int> get pieChartValues => _pieChartValues;
  set pieChartValues(List<int> _value) {
    _pieChartValues = _value;
  }

  void addToPieChartValues(int _value) {
    _pieChartValues.add(_value);
  }

  void removeFromPieChartValues(int _value) {
    _pieChartValues.remove(_value);
  }

  void removeAtIndexFromPieChartValues(int _index) {
    _pieChartValues.removeAt(_index);
  }

  void updatePieChartValuesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _pieChartValues[_index] = updateFn(_pieChartValues[_index]);
  }

  void insertAtIndexInPieChartValues(int _index, int _value) {
    _pieChartValues.insert(_index, _value);
  }

  List<int> _chartTimeXaxisValues = [1000, 3000, 4000];
  List<int> get chartTimeXaxisValues => _chartTimeXaxisValues;
  set chartTimeXaxisValues(List<int> _value) {
    _chartTimeXaxisValues = _value;
  }

  void addToChartTimeXaxisValues(int _value) {
    _chartTimeXaxisValues.add(_value);
  }

  void removeFromChartTimeXaxisValues(int _value) {
    _chartTimeXaxisValues.remove(_value);
  }

  void removeAtIndexFromChartTimeXaxisValues(int _index) {
    _chartTimeXaxisValues.removeAt(_index);
  }

  void updateChartTimeXaxisValuesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartTimeXaxisValues[_index] = updateFn(_chartTimeXaxisValues[_index]);
  }

  void insertAtIndexInChartTimeXaxisValues(int _index, int _value) {
    _chartTimeXaxisValues.insert(_index, _value);
  }

  List<int> _chartTimeFixedValues = [
    16,
    16,
    16,
    16,
    16,
    16,
    16,
    16,
    16,
    16,
    16,
    16
  ];
  List<int> get chartTimeFixedValues => _chartTimeFixedValues;
  set chartTimeFixedValues(List<int> _value) {
    _chartTimeFixedValues = _value;
  }

  void addToChartTimeFixedValues(int _value) {
    _chartTimeFixedValues.add(_value);
  }

  void removeFromChartTimeFixedValues(int _value) {
    _chartTimeFixedValues.remove(_value);
  }

  void removeAtIndexFromChartTimeFixedValues(int _index) {
    _chartTimeFixedValues.removeAt(_index);
  }

  void updateChartTimeFixedValuesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartTimeFixedValues[_index] = updateFn(_chartTimeFixedValues[_index]);
  }

  void insertAtIndexInChartTimeFixedValues(int _index, int _value) {
    _chartTimeFixedValues.insert(_index, _value);
  }

  List<String> _subList = ['Oct', 'Nov', 'Dec'];
  List<String> get subList => _subList;
  set subList(List<String> _value) {
    _subList = _value;
  }

  void addToSubList(String _value) {
    _subList.add(_value);
  }

  void removeFromSubList(String _value) {
    _subList.remove(_value);
  }

  void removeAtIndexFromSubList(int _index) {
    _subList.removeAt(_index);
  }

  void updateSubListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _subList[_index] = updateFn(_subList[_index]);
  }

  void insertAtIndexInSubList(int _index, String _value) {
    _subList.insert(_index, _value);
  }

  bool _countTrigger = false;
  bool get countTrigger => _countTrigger;
  set countTrigger(bool _value) {
    _countTrigger = _value;
  }

  dynamic _patientListData;
  dynamic get patientListData => _patientListData;
  set patientListData(dynamic _value) {
    _patientListData = _value;
  }

  List<int> _npsScore = [15, 15, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];
  List<int> get npsScore => _npsScore;
  set npsScore(List<int> _value) {
    _npsScore = _value;
  }

  void addToNpsScore(int _value) {
    _npsScore.add(_value);
  }

  void removeFromNpsScore(int _value) {
    _npsScore.remove(_value);
  }

  void removeAtIndexFromNpsScore(int _index) {
    _npsScore.removeAt(_index);
  }

  void updateNpsScoreAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _npsScore[_index] = updateFn(_npsScore[_index]);
  }

  void insertAtIndexInNpsScore(int _index, int _value) {
    _npsScore.insert(_index, _value);
  }

  List<int> _npsScoreFullBar = [60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60];
  List<int> get npsScoreFullBar => _npsScoreFullBar;
  set npsScoreFullBar(List<int> _value) {
    _npsScoreFullBar = _value;
  }

  void addToNpsScoreFullBar(int _value) {
    _npsScoreFullBar.add(_value);
  }

  void removeFromNpsScoreFullBar(int _value) {
    _npsScoreFullBar.remove(_value);
  }

  void removeAtIndexFromNpsScoreFullBar(int _index) {
    _npsScoreFullBar.removeAt(_index);
  }

  void updateNpsScoreFullBarAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _npsScoreFullBar[_index] = updateFn(_npsScoreFullBar[_index]);
  }

  void insertAtIndexInNpsScoreFullBar(int _index, int _value) {
    _npsScoreFullBar.insert(_index, _value);
  }

  String _pid = '';
  String get pid => _pid;
  set pid(String _value) {
    _pid = _value;
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  String _staffrole = '';
  String get staffrole => _staffrole;
  set staffrole(String _value) {
    _staffrole = _value;
  }

  List<String> _clinicsIds = [];
  List<String> get clinicsIds => _clinicsIds;
  set clinicsIds(List<String> _value) {
    _clinicsIds = _value;
  }

  void addToClinicsIds(String _value) {
    _clinicsIds.add(_value);
  }

  void removeFromClinicsIds(String _value) {
    _clinicsIds.remove(_value);
  }

  void removeAtIndexFromClinicsIds(int _index) {
    _clinicsIds.removeAt(_index);
  }

  void updateClinicsIdsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _clinicsIds[_index] = updateFn(_clinicsIds[_index]);
  }

  void insertAtIndexInClinicsIds(int _index, String _value) {
    _clinicsIds.insert(_index, _value);
  }

  String _orderBy = '';
  String get orderBy => _orderBy;
  set orderBy(String _value) {
    _orderBy = _value;
  }

  String _apTime = '';
  String get apTime => _apTime;
  set apTime(String _value) {
    _apTime = _value;
  }

  String _providerId = '';
  String get providerId => _providerId;
  set providerId(String _value) {
    _providerId = _value;
  }

  String _selectedProvider = '';
  String get selectedProvider => _selectedProvider;
  set selectedProvider(String _value) {
    _selectedProvider = _value;
  }

  String _rocketChatAuthToken = '';
  String get rocketChatAuthToken => _rocketChatAuthToken;
  set rocketChatAuthToken(String _value) {
    _rocketChatAuthToken = _value;
  }

  String _rocketchaturl = 'https://chat.kennarhealth.com';
  String get rocketchaturl => _rocketchaturl;
  set rocketchaturl(String _value) {
    _rocketchaturl = _value;
  }

  List<int> _careteam = [];
  List<int> get careteam => _careteam;
  set careteam(List<int> _value) {
    _careteam = _value;
  }

  void addToCareteam(int _value) {
    _careteam.add(_value);
  }

  void removeFromCareteam(int _value) {
    _careteam.remove(_value);
  }

  void removeAtIndexFromCareteam(int _index) {
    _careteam.removeAt(_index);
  }

  void updateCareteamAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _careteam[_index] = updateFn(_careteam[_index]);
  }

  void insertAtIndexInCareteam(int _index, int _value) {
    _careteam.insert(_index, _value);
  }

  String _createteam = '';
  String get createteam => _createteam;
  set createteam(String _value) {
    _createteam = _value;
  }

  List<String> _roles = [];
  List<String> get roles => _roles;
  set roles(List<String> _value) {
    _roles = _value;
  }

  void addToRoles(String _value) {
    _roles.add(_value);
  }

  void removeFromRoles(String _value) {
    _roles.remove(_value);
  }

  void removeAtIndexFromRoles(int _index) {
    _roles.removeAt(_index);
  }

  void updateRolesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _roles[_index] = updateFn(_roles[_index]);
  }

  void insertAtIndexInRoles(int _index, String _value) {
    _roles.insert(_index, _value);
  }

  String _SelectedMenu = '';
  String get SelectedMenu => _SelectedMenu;
  set SelectedMenu(String _value) {
    _SelectedMenu = _value;
  }

  List<String> _homeMenu = [];
  List<String> get homeMenu => _homeMenu;
  set homeMenu(List<String> _value) {
    _homeMenu = _value;
  }

  void addToHomeMenu(String _value) {
    _homeMenu.add(_value);
  }

  void removeFromHomeMenu(String _value) {
    _homeMenu.remove(_value);
  }

  void removeAtIndexFromHomeMenu(int _index) {
    _homeMenu.removeAt(_index);
  }

  void updateHomeMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _homeMenu[_index] = updateFn(_homeMenu[_index]);
  }

  void insertAtIndexInHomeMenu(int _index, String _value) {
    _homeMenu.insert(_index, _value);
  }

  List<String> _ProfileMenu = [
    'View details',
    'Mark as complete',
    'Edit',
    'Remove'
  ];
  List<String> get ProfileMenu => _ProfileMenu;
  set ProfileMenu(List<String> _value) {
    _ProfileMenu = _value;
  }

  void addToProfileMenu(String _value) {
    _ProfileMenu.add(_value);
  }

  void removeFromProfileMenu(String _value) {
    _ProfileMenu.remove(_value);
  }

  void removeAtIndexFromProfileMenu(int _index) {
    _ProfileMenu.removeAt(_index);
  }

  void updateProfileMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ProfileMenu[_index] = updateFn(_ProfileMenu[_index]);
  }

  void insertAtIndexInProfileMenu(int _index, String _value) {
    _ProfileMenu.insert(_index, _value);
  }

  String _provider = '';
  String get provider => _provider;
  set provider(String _value) {
    _provider = _value;
  }

  List<String> _clinicType = [];
  List<String> get clinicType => _clinicType;
  set clinicType(List<String> _value) {
    _clinicType = _value;
  }

  void addToClinicType(String _value) {
    _clinicType.add(_value);
  }

  void removeFromClinicType(String _value) {
    _clinicType.remove(_value);
  }

  void removeAtIndexFromClinicType(int _index) {
    _clinicType.removeAt(_index);
  }

  void updateClinicTypeAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _clinicType[_index] = updateFn(_clinicType[_index]);
  }

  void insertAtIndexInClinicType(int _index, String _value) {
    _clinicType.insert(_index, _value);
  }

  String _clinicemail = '';
  String get clinicemail => _clinicemail;
  set clinicemail(String _value) {
    _clinicemail = _value;
  }

  String _orderBy01 = '';
  String get orderBy01 => _orderBy01;
  set orderBy01(String _value) {
    _orderBy01 = _value;
  }

  String _emailView = '';
  String get emailView => _emailView;
  set emailView(String _value) {
    _emailView = _value;
  }

  String _Reason = '';
  String get Reason => _Reason;
  set Reason(String _value) {
    _Reason = _value;
  }

  String _exactReason = '';
  String get exactReason => _exactReason;
  set exactReason(String _value) {
    _exactReason = _value;
  }

  String _state = '';
  String get state => _state;
  set state(String _value) {
    _state = _value;
  }

  String _zipcode = '';
  String get zipcode => _zipcode;
  set zipcode(String _value) {
    _zipcode = _value;
  }

  String _containerColor = '';
  String get containerColor => _containerColor;
  set containerColor(String _value) {
    _containerColor = _value;
  }

  String _visibleDisplay = '';
  String get visibleDisplay => _visibleDisplay;
  set visibleDisplay(String _value) {
    _visibleDisplay = _value;
  }

  String _updateid = '';
  String get updateid => _updateid;
  set updateid(String _value) {
    _updateid = _value;
  }

  String _visibleid = '';
  String get visibleid => _visibleid;
  set visibleid(String _value) {
    _visibleid = _value;
  }

  String _npinumber = '';
  String get npinumber => _npinumber;
  set npinumber(String _value) {
    _npinumber = _value;
  }

  String _issueimage = '';
  String get issueimage => _issueimage;
  set issueimage(String _value) {
    _issueimage = _value;
  }

  String _date = '2023';
  String get date => _date;
  set date(String _value) {
    _date = _value;
  }

  dynamic _getUserData;
  dynamic get getUserData => _getUserData;
  set getUserData(dynamic _value) {
    _getUserData = _value;
  }

  String _sessionRefreshToken = '';
  String get sessionRefreshToken => _sessionRefreshToken;
  set sessionRefreshToken(String _value) {
    _sessionRefreshToken = _value;
    prefs.setString('ff_sessionRefreshToken', _value);
  }

  dynamic _universalLoginData;
  dynamic get universalLoginData => _universalLoginData;
  set universalLoginData(dynamic _value) {
    _universalLoginData = _value;
    prefs.setString('ff_universalLoginData', jsonEncode(_value));
  }

  String _defaultRoleId = '';
  String get defaultRoleId => _defaultRoleId;
  set defaultRoleId(String _value) {
    _defaultRoleId = _value;
    prefs.setString('ff_defaultRoleId', _value);
  }

  String _sessionToken = '';
  String get sessionToken => _sessionToken;
  set sessionToken(String _value) {
    _sessionToken = _value;
    prefs.setString('ff_sessionToken', _value);
  }

  bool _showCalender = false;
  bool get showCalender => _showCalender;
  set showCalender(bool _value) {
    _showCalender = _value;
  }

  dynamic _issueFacilityData;
  dynamic get issueFacilityData => _issueFacilityData;
  set issueFacilityData(dynamic _value) {
    _issueFacilityData = _value;
  }

  bool _requestStatus = false;
  bool get requestStatus => _requestStatus;
  set requestStatus(bool _value) {
    _requestStatus = _value;
  }

  dynamic _patientLinkingData;
  dynamic get patientLinkingData => _patientLinkingData;
  set patientLinkingData(dynamic _value) {
    _patientLinkingData = _value;
  }

  String _patientFullname = '';
  String get patientFullname => _patientFullname;
  set patientFullname(String _value) {
    _patientFullname = _value;
  }

  bool _dropdownVisible = false;
  bool get dropdownVisible => _dropdownVisible;
  set dropdownVisible(bool _value) {
    _dropdownVisible = _value;
  }

  String _issuePatient = '';
  String get issuePatient => _issuePatient;
  set issuePatient(String _value) {
    _issuePatient = _value;
  }

  String _issueFacility = '';
  String get issueFacility => _issueFacility;
  set issueFacility(String _value) {
    _issueFacility = _value;
  }

  String _isssueProvider = '';
  String get isssueProvider => _isssueProvider;
  set isssueProvider(String _value) {
    _isssueProvider = _value;
  }

  DateTime? _appDate = DateTime.fromMillisecondsSinceEpoch(1687267740000);
  DateTime? get appDate => _appDate;
  set appDate(DateTime? _value) {
    _appDate = _value;
  }

  String _enrollGender = '';
  String get enrollGender => _enrollGender;
  set enrollGender(String _value) {
    _enrollGender = _value;
  }

  bool _formVisible = false;
  bool get formVisible => _formVisible;
  set formVisible(bool _value) {
    _formVisible = _value;
  }

  String _appType = '';
  String get appType => _appType;
  set appType(String _value) {
    _appType = _value;
  }

  bool _showStaffEdit = false;
  bool get showStaffEdit => _showStaffEdit;
  set showStaffEdit(bool _value) {
    _showStaffEdit = _value;
  }

  String _statusid = '';
  String get statusid => _statusid;
  set statusid(String _value) {
    _statusid = _value;
  }

  String _issuesTrack = '';
  String get issuesTrack => _issuesTrack;
  set issuesTrack(String _value) {
    _issuesTrack = _value;
  }

  String _visibledata = '';
  String get visibledata => _visibledata;
  set visibledata(String _value) {
    _visibledata = _value;
  }

  String _facilityname = '';
  String get facilityname => _facilityname;
  set facilityname(String _value) {
    _facilityname = _value;
  }

  String _staffName = '';
  String get staffName => _staffName;
  set staffName(String _value) {
    _staffName = _value;
  }

  String _patientId = '';
  String get patientId => _patientId;
  set patientId(String _value) {
    _patientId = _value;
  }

  String _facilityvisible = '';
  String get facilityvisible => _facilityvisible;
  set facilityvisible(String _value) {
    _facilityvisible = _value;
  }

  String _uploadpdf1 = '';
  String get uploadpdf1 => _uploadpdf1;
  set uploadpdf1(String _value) {
    _uploadpdf1 = _value;
  }

  bool _dropdownvisible2 = false;
  bool get dropdownvisible2 => _dropdownvisible2;
  set dropdownvisible2(bool _value) {
    _dropdownvisible2 = _value;
  }

  List<String> _caregapText = [];
  List<String> get caregapText => _caregapText;
  set caregapText(List<String> _value) {
    _caregapText = _value;
  }

  void addToCaregapText(String _value) {
    _caregapText.add(_value);
  }

  void removeFromCaregapText(String _value) {
    _caregapText.remove(_value);
  }

  void removeAtIndexFromCaregapText(int _index) {
    _caregapText.removeAt(_index);
  }

  void updateCaregapTextAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _caregapText[_index] = updateFn(_caregapText[_index]);
  }

  void insertAtIndexInCaregapText(int _index, String _value) {
    _caregapText.insert(_index, _value);
  }

  List<String> _cptcode = [];
  List<String> get cptcode => _cptcode;
  set cptcode(List<String> _value) {
    _cptcode = _value;
  }

  void addToCptcode(String _value) {
    _cptcode.add(_value);
  }

  void removeFromCptcode(String _value) {
    _cptcode.remove(_value);
  }

  void removeAtIndexFromCptcode(int _index) {
    _cptcode.removeAt(_index);
  }

  void updateCptcodeAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _cptcode[_index] = updateFn(_cptcode[_index]);
  }

  void insertAtIndexInCptcode(int _index, String _value) {
    _cptcode.insert(_index, _value);
  }

  int _careQuestion = 0;
  int get careQuestion => _careQuestion;
  set careQuestion(int _value) {
    _careQuestion = _value;
  }

  String _careAnswer = '';
  String get careAnswer => _careAnswer;
  set careAnswer(String _value) {
    _careAnswer = _value;
  }

  bool _webviewvisibility = false;
  bool get webviewvisibility => _webviewvisibility;
  set webviewvisibility(bool _value) {
    _webviewvisibility = _value;
  }

  bool _sortcondition = false;
  bool get sortcondition => _sortcondition;
  set sortcondition(bool _value) {
    _sortcondition = _value;
  }

  String _sort = '';
  String get sort => _sort;
  set sort(String _value) {
    _sort = _value;
  }

  int _pagingcount = 0;
  int get pagingcount => _pagingcount;
  set pagingcount(int _value) {
    _pagingcount = _value;
  }

  bool _ccm = false;
  bool get ccm => _ccm;
  set ccm(bool _value) {
    _ccm = _value;
  }

  dynamic _ChatTime;
  dynamic get ChatTime => _ChatTime;
  set ChatTime(dynamic _value) {
    _ChatTime = _value;
  }

  String _sortnew = '';
  String get sortnew => _sortnew;
  set sortnew(String _value) {
    _sortnew = _value;
  }

  String _chatStatus = '';
  String get chatStatus => _chatStatus;
  set chatStatus(String _value) {
    _chatStatus = _value;
  }

  String _text = '';
  String get text => _text;
  set text(String _value) {
    _text = _value;
  }

  String _graphFilter = '';
  String get graphFilter => _graphFilter;
  set graphFilter(String _value) {
    _graphFilter = _value;
  }

  String _password1 = '';
  String get password1 => _password1;
  set password1(String _value) {
    _password1 = _value;
  }

  String _category = '';
  String get category => _category;
  set category(String _value) {
    _category = _value;
  }

  String _term = '';
  String get term => _term;
  set term(String _value) {
    _term = _value;
  }

  String _policy = '';
  String get policy => _policy;
  set policy(String _value) {
    _policy = _value;
  }

  String _consent = '';
  String get consent => _consent;
  set consent(String _value) {
    _consent = _value;
  }

  String _visits = '';
  String get visits => _visits;
  set visits(String _value) {
    _visits = _value;
  }

  String _dashboardColor = '';
  String get dashboardColor => _dashboardColor;
  set dashboardColor(String _value) {
    _dashboardColor = _value;
  }

  String _staffdata = 'PA';
  String get staffdata => _staffdata;
  set staffdata(String _value) {
    _staffdata = _value;
  }

  String _phonenumber = '';
  String get phonenumber => _phonenumber;
  set phonenumber(String _value) {
    _phonenumber = _value;
  }

  List<String> _providerMenu = [
    'Un Enroll',
    'Flag',
    'Care Gap Questions',
    'Care Gap Details'
  ];
  List<String> get providerMenu => _providerMenu;
  set providerMenu(List<String> _value) {
    _providerMenu = _value;
  }

  void addToProviderMenu(String _value) {
    _providerMenu.add(_value);
  }

  void removeFromProviderMenu(String _value) {
    _providerMenu.remove(_value);
  }

  void removeAtIndexFromProviderMenu(int _index) {
    _providerMenu.removeAt(_index);
  }

  void updateProviderMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _providerMenu[_index] = updateFn(_providerMenu[_index]);
  }

  void insertAtIndexInProviderMenu(int _index, String _value) {
    _providerMenu.insert(_index, _value);
  }

  List<String> _flaggedPatientMenu = ['Un Flagged'];
  List<String> get flaggedPatientMenu => _flaggedPatientMenu;
  set flaggedPatientMenu(List<String> _value) {
    _flaggedPatientMenu = _value;
  }

  void addToFlaggedPatientMenu(String _value) {
    _flaggedPatientMenu.add(_value);
  }

  void removeFromFlaggedPatientMenu(String _value) {
    _flaggedPatientMenu.remove(_value);
  }

  void removeAtIndexFromFlaggedPatientMenu(int _index) {
    _flaggedPatientMenu.removeAt(_index);
  }

  void updateFlaggedPatientMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _flaggedPatientMenu[_index] = updateFn(_flaggedPatientMenu[_index]);
  }

  void insertAtIndexInFlaggedPatientMenu(int _index, String _value) {
    _flaggedPatientMenu.insert(_index, _value);
  }

  List<String> _saDefinitionsMenu = ['Edit', 'Delete'];
  List<String> get saDefinitionsMenu => _saDefinitionsMenu;
  set saDefinitionsMenu(List<String> _value) {
    _saDefinitionsMenu = _value;
  }

  void addToSaDefinitionsMenu(String _value) {
    _saDefinitionsMenu.add(_value);
  }

  void removeFromSaDefinitionsMenu(String _value) {
    _saDefinitionsMenu.remove(_value);
  }

  void removeAtIndexFromSaDefinitionsMenu(int _index) {
    _saDefinitionsMenu.removeAt(_index);
  }

  void updateSaDefinitionsMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _saDefinitionsMenu[_index] = updateFn(_saDefinitionsMenu[_index]);
  }

  void insertAtIndexInSaDefinitionsMenu(int _index, String _value) {
    _saDefinitionsMenu.insert(_index, _value);
  }

  List<String> _saCareGapMenu = ['Edit', 'Delete'];
  List<String> get saCareGapMenu => _saCareGapMenu;
  set saCareGapMenu(List<String> _value) {
    _saCareGapMenu = _value;
  }

  void addToSaCareGapMenu(String _value) {
    _saCareGapMenu.add(_value);
  }

  void removeFromSaCareGapMenu(String _value) {
    _saCareGapMenu.remove(_value);
  }

  void removeAtIndexFromSaCareGapMenu(int _index) {
    _saCareGapMenu.removeAt(_index);
  }

  void updateSaCareGapMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _saCareGapMenu[_index] = updateFn(_saCareGapMenu[_index]);
  }

  void insertAtIndexInSaCareGapMenu(int _index, String _value) {
    _saCareGapMenu.insert(_index, _value);
  }

  String _proid = '';
  String get proid => _proid;
  set proid(String _value) {
    _proid = _value;
  }

  List<String> _facilityMenu = ['Edit'];
  List<String> get facilityMenu => _facilityMenu;
  set facilityMenu(List<String> _value) {
    _facilityMenu = _value;
  }

  void addToFacilityMenu(String _value) {
    _facilityMenu.add(_value);
  }

  void removeFromFacilityMenu(String _value) {
    _facilityMenu.remove(_value);
  }

  void removeAtIndexFromFacilityMenu(int _index) {
    _facilityMenu.removeAt(_index);
  }

  void updateFacilityMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _facilityMenu[_index] = updateFn(_facilityMenu[_index]);
  }

  void insertAtIndexInFacilityMenu(int _index, String _value) {
    _facilityMenu.insert(_index, _value);
  }

  List<String> _networkAudit = ['View Details'];
  List<String> get networkAudit => _networkAudit;
  set networkAudit(List<String> _value) {
    _networkAudit = _value;
  }

  void addToNetworkAudit(String _value) {
    _networkAudit.add(_value);
  }

  void removeFromNetworkAudit(String _value) {
    _networkAudit.remove(_value);
  }

  void removeAtIndexFromNetworkAudit(int _index) {
    _networkAudit.removeAt(_index);
  }

  void updateNetworkAuditAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _networkAudit[_index] = updateFn(_networkAudit[_index]);
  }

  void insertAtIndexInNetworkAudit(int _index, String _value) {
    _networkAudit.insert(_index, _value);
  }

  List<String> _issueListMenu = [
    'Export',
    'Export All',
    'History',
    'In Progress',
    'Hold',
    'Reject',
    'Resolved'
  ];
  List<String> get issueListMenu => _issueListMenu;
  set issueListMenu(List<String> _value) {
    _issueListMenu = _value;
  }

  void addToIssueListMenu(String _value) {
    _issueListMenu.add(_value);
  }

  void removeFromIssueListMenu(String _value) {
    _issueListMenu.remove(_value);
  }

  void removeAtIndexFromIssueListMenu(int _index) {
    _issueListMenu.removeAt(_index);
  }

  void updateIssueListMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _issueListMenu[_index] = updateFn(_issueListMenu[_index]);
  }

  void insertAtIndexInIssueListMenu(int _index, String _value) {
    _issueListMenu.insert(_index, _value);
  }

  String _acute = '';
  String get acute => _acute;
  set acute(String _value) {
    _acute = _value;
  }

  String _month = '';
  String get month => _month;
  set month(String _value) {
    _month = _value;
  }

  List<String> _facilitiesMenu = ['View'];
  List<String> get facilitiesMenu => _facilitiesMenu;
  set facilitiesMenu(List<String> _value) {
    _facilitiesMenu = _value;
  }

  void addToFacilitiesMenu(String _value) {
    _facilitiesMenu.add(_value);
  }

  void removeFromFacilitiesMenu(String _value) {
    _facilitiesMenu.remove(_value);
  }

  void removeAtIndexFromFacilitiesMenu(int _index) {
    _facilitiesMenu.removeAt(_index);
  }

  void updateFacilitiesMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _facilitiesMenu[_index] = updateFn(_facilitiesMenu[_index]);
  }

  void insertAtIndexInFacilitiesMenu(int _index, String _value) {
    _facilitiesMenu.insert(_index, _value);
  }

  List<String> _saProviderMenu = ['View Profile'];
  List<String> get saProviderMenu => _saProviderMenu;
  set saProviderMenu(List<String> _value) {
    _saProviderMenu = _value;
  }

  void addToSaProviderMenu(String _value) {
    _saProviderMenu.add(_value);
  }

  void removeFromSaProviderMenu(String _value) {
    _saProviderMenu.remove(_value);
  }

  void removeAtIndexFromSaProviderMenu(int _index) {
    _saProviderMenu.removeAt(_index);
  }

  void updateSaProviderMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _saProviderMenu[_index] = updateFn(_saProviderMenu[_index]);
  }

  void insertAtIndexInSaProviderMenu(int _index, String _value) {
    _saProviderMenu.insert(_index, _value);
  }

  String _year = '';
  String get year => _year;
  set year(String _value) {
    _year = _value;
  }

  List<dynamic> _graphData1 = [];
  List<dynamic> get graphData1 => _graphData1;
  set graphData1(List<dynamic> _value) {
    _graphData1 = _value;
  }

  void addToGraphData1(dynamic _value) {
    _graphData1.add(_value);
  }

  void removeFromGraphData1(dynamic _value) {
    _graphData1.remove(_value);
  }

  void removeAtIndexFromGraphData1(int _index) {
    _graphData1.removeAt(_index);
  }

  void updateGraphData1AtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _graphData1[_index] = updateFn(_graphData1[_index]);
  }

  void insertAtIndexInGraphData1(int _index, dynamic _value) {
    _graphData1.insert(_index, _value);
  }

  String _careyear = '';
  String get careyear => _careyear;
  set careyear(String _value) {
    _careyear = _value;
  }

  String _caremonth = '';
  String get caremonth => _caremonth;
  set caremonth(String _value) {
    _caremonth = _value;
  }

  List<String> _npiDetails = ['View Details'];
  List<String> get npiDetails => _npiDetails;
  set npiDetails(List<String> _value) {
    _npiDetails = _value;
  }

  void addToNpiDetails(String _value) {
    _npiDetails.add(_value);
  }

  void removeFromNpiDetails(String _value) {
    _npiDetails.remove(_value);
  }

  void removeAtIndexFromNpiDetails(int _index) {
    _npiDetails.removeAt(_index);
  }

  void updateNpiDetailsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _npiDetails[_index] = updateFn(_npiDetails[_index]);
  }

  void insertAtIndexInNpiDetails(int _index, String _value) {
    _npiDetails.insert(_index, _value);
  }

  String _hieconsent = '';
  String get hieconsent => _hieconsent;
  set hieconsent(String _value) {
    _hieconsent = _value;
  }

  List<dynamic> _patientDoc = [];
  List<dynamic> get patientDoc => _patientDoc;
  set patientDoc(List<dynamic> _value) {
    _patientDoc = _value;
  }

  void addToPatientDoc(dynamic _value) {
    _patientDoc.add(_value);
  }

  void removeFromPatientDoc(dynamic _value) {
    _patientDoc.remove(_value);
  }

  void removeAtIndexFromPatientDoc(int _index) {
    _patientDoc.removeAt(_index);
  }

  void updatePatientDocAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _patientDoc[_index] = updateFn(_patientDoc[_index]);
  }

  void insertAtIndexInPatientDoc(int _index, dynamic _value) {
    _patientDoc.insert(_index, _value);
  }

  List<dynamic> _selectedDoc = [];
  List<dynamic> get selectedDoc => _selectedDoc;
  set selectedDoc(List<dynamic> _value) {
    _selectedDoc = _value;
  }

  void addToSelectedDoc(dynamic _value) {
    _selectedDoc.add(_value);
  }

  void removeFromSelectedDoc(dynamic _value) {
    _selectedDoc.remove(_value);
  }

  void removeAtIndexFromSelectedDoc(int _index) {
    _selectedDoc.removeAt(_index);
  }

  void updateSelectedDocAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _selectedDoc[_index] = updateFn(_selectedDoc[_index]);
  }

  void insertAtIndexInSelectedDoc(int _index, dynamic _value) {
    _selectedDoc.insert(_index, _value);
  }

  List<String> _mediList = [];
  List<String> get mediList => _mediList;
  set mediList(List<String> _value) {
    _mediList = _value;
  }

  void addToMediList(String _value) {
    _mediList.add(_value);
  }

  void removeFromMediList(String _value) {
    _mediList.remove(_value);
  }

  void removeAtIndexFromMediList(int _index) {
    _mediList.removeAt(_index);
  }

  void updateMediListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _mediList[_index] = updateFn(_mediList[_index]);
  }

  void insertAtIndexInMediList(int _index, String _value) {
    _mediList.insert(_index, _value);
  }

  String _visibleOne = '';
  String get visibleOne => _visibleOne;
  set visibleOne(String _value) {
    _visibleOne = _value;
  }

  String _rolevalue = '';
  String get rolevalue => _rolevalue;
  set rolevalue(String _value) {
    _rolevalue = _value;
  }

  String _facility = '';
  String get facility => _facility;
  set facility(String _value) {
    _facility = _value;
  }

  String _patient = '';
  String get patient => _patient;
  set patient(String _value) {
    _patient = _value;
  }

  List<String> _unselectMedi = [];
  List<String> get unselectMedi => _unselectMedi;
  set unselectMedi(List<String> _value) {
    _unselectMedi = _value;
  }

  void addToUnselectMedi(String _value) {
    _unselectMedi.add(_value);
  }

  void removeFromUnselectMedi(String _value) {
    _unselectMedi.remove(_value);
  }

  void removeAtIndexFromUnselectMedi(int _index) {
    _unselectMedi.removeAt(_index);
  }

  void updateUnselectMediAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _unselectMedi[_index] = updateFn(_unselectMedi[_index]);
  }

  void insertAtIndexInUnselectMedi(int _index, String _value) {
    _unselectMedi.insert(_index, _value);
  }

  bool _checkweb = false;
  bool get checkweb => _checkweb;
  set checkweb(bool _value) {
    _checkweb = _value;
  }

  int _HoverEffect = 0;
  int get HoverEffect => _HoverEffect;
  set HoverEffect(int _value) {
    _HoverEffect = _value;
  }

  List<String> _prolist = [];
  List<String> get prolist => _prolist;
  set prolist(List<String> _value) {
    _prolist = _value;
  }

  void addToProlist(String _value) {
    _prolist.add(_value);
  }

  void removeFromProlist(String _value) {
    _prolist.remove(_value);
  }

  void removeAtIndexFromProlist(int _index) {
    _prolist.removeAt(_index);
  }

  void updateProlistAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _prolist[_index] = updateFn(_prolist[_index]);
  }

  void insertAtIndexInProlist(int _index, String _value) {
    _prolist.insert(_index, _value);
  }

  String _patientid = '';
  String get patientid => _patientid;
  set patientid(String _value) {
    _patientid = _value;
  }

  String _unickid = '';
  String get unickid => _unickid;
  set unickid(String _value) {
    _unickid = _value;
  }

  List<String> _staffMenu = ['Edit', 'Profile'];
  List<String> get staffMenu => _staffMenu;
  set staffMenu(List<String> _value) {
    _staffMenu = _value;
  }

  void addToStaffMenu(String _value) {
    _staffMenu.add(_value);
  }

  void removeFromStaffMenu(String _value) {
    _staffMenu.remove(_value);
  }

  void removeAtIndexFromStaffMenu(int _index) {
    _staffMenu.removeAt(_index);
  }

  void updateStaffMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _staffMenu[_index] = updateFn(_staffMenu[_index]);
  }

  void insertAtIndexInStaffMenu(int _index, String _value) {
    _staffMenu.insert(_index, _value);
  }

  dynamic _patientDetails;
  dynamic get patientDetails => _patientDetails;
  set patientDetails(dynamic _value) {
    _patientDetails = _value;
  }

  String _currentyear = '2024';
  String get currentyear => _currentyear;
  set currentyear(String _value) {
    _currentyear = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
