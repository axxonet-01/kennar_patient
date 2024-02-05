import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

bool isEmail(String email) {
  // Add your function code here!
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  return emailValid;
}

bool validatePassword(String data) {
  // Add your function code here!
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
//        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (data.isEmpty) {
    return false;
  } else {
    if (!regex.hasMatch(data)) {
      return false;
    } else {
      return true;
    }
  }
}

bool checkLoginStatusCode(int statusCode) {
  // Add your function code here!
  if (statusCode == 200 || statusCode == 213) return true;

  return false;
}

String loginLogoutBottonText(String refreshToken) {
  // Add your function code here!
  if (refreshToken.isEmpty) {
    return "Sign in";
  } else {
    return "Sign out";
  }
}

String getGreetings() {
  // Add your function code here!
  var timeNow = DateTime.now().hour;

  if (timeNow <= 12) {
    return 'Good Morning';
  } else if ((timeNow > 12) && (timeNow <= 16)) {
    return 'Good Afternoon';
  } else if ((timeNow > 16) && (timeNow < 20)) {
    return 'Good Evening';
  } else {
    return 'Good Night';
  }
}

int jsonLength(dynamic data) {
  // Add your function code here!
  return data.length;
}

List<String>? getCountries() {
  // Add your function code here!
  List<String> countries = [
    "Canada",
    "USA",
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua And Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas The",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Cape Verde",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo",
    "Costa Rica",
    "Cote D'Ivoire (Ivory Coast)",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Democratic Republic of the Congo",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "East Timor",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Fiji Islands",
    "Finland",
    "France",
    "Gabon",
    "Gambia The",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Mongolia",
    "Montenegro",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "North Korea",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Panama",
    "Papua new Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Kitts And Nevis",
    "Saint Lucia",
    "Saint Vincent And The Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Korea",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Togo",
    "Tonga",
    "Trinidad And Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];
  return countries;
}

dynamic searchFunction(
  String text,
  dynamic jsonData,
) {
  // Add your function code here!
  dynamic results = [];
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
      } else if (jsonData[index][key1]
          .toString()
          .toLowerCase()
          .contains(text.toLowerCase())) {
        results.add(jsonData[index]);
        break;
      }
    }
  }
  return (results.length > 0) ? results : [];
}

bool isEven(int number) {
  // Add your function code here!
  return (number % 2) == 0;
}

String searchIdValue(
  String id,
  String request,
  String response,
) {
  // Add your function code here!
  List list = response.isNotEmpty
      ? response.split('[')[1].split(']')[0].split(', ')
      : [];
  if (list.any((item) => item.toString().split(':')[0] == id)) {
    return list[list.indexWhere((item) => item.toString().split(':')[0] == id)]
        .toString()
        .split(':')[1];
  } else {
    return request;
  }
}

String arrayOfIdValue(
  String id,
  String request,
  String response,
) {
  // Add your function code here!
  List list = response.isNotEmpty
      ? response.split('[')[1].split(']')[0].split(', ')
      : [];
  if (list.any((item) => item.toString().split(':')[0] == id)) {
    list[list.indexWhere((item) => item.toString().split(':')[0] == id)] =
        '$id:$request';
  } else {
    list.add('$id:$request');
  }
  return list.toString();
}

dynamic normaliseJSON(dynamic dataJSON) {
  // Add your function code here!

  List x = [];
  for (var element in dataJSON) {
    Map? map = new Map();
    map = element["json"];
    x.add(map);
//    print('*** element:' + map.toString());
  }
  ;
  return x;
}

bool visibilityforimagewidget(String? value1) {
  // Add your function code here!
  if (value1 != '' || value1 != 'null') {
    return true;
  } else {
    return false;
  }
}

String stringswitct(
  String value1,
  String value2,
) {
  // Add your function code here!
  if (value1 == '1') {
    return value2;
  } else {
    return value1;
  }
}

String imageempty(String value1) {
  // Add your function code here!
  //final value2 = "a98f60b7-addd-413b-93d1-ae132e8318b1";
  final value2 = "181b487c-455b-4d00-886a-e3ef03dd0ce1";
  if (value1 == "") {
    return value2;
  } else if (value1 == 'null') {
    return value2;
  } else {
    return value1;
  }
}

DateTime stringintotimestamp(String value1) {
  // Add your function code here!

  return DateTime.parse(value1);
}

String jsonString(String text) {
  // Add your function code here!
  return text.replaceAll('\n', '\\n').replaceAll('"', '\\"');
}

double percentage(
  String value1,
  String value2,
) {
  if (value2 == '1') {
    int x = int.parse(value1);
    double y = x / 100;
    return y;
  } else {
    int x = int.parse(value1);
    double y = x * 1;
    return y;
  }
}

double convertIntToDouble(int val) {
  return val.toDouble();
}

String splitFunction(
  String value1,
  int startIndex,
  int endIndex,
) {
  if (value1 == "") {
    return "";
  } else {
    String result = value1.substring(startIndex, endIndex);
    return result;
  }
}

String notreturnnull(String value) {
  // Add your function code here!
  if (value == 'null' || value.isEmpty) {
    return ('');
  } else {
    return value;
  }
}

bool listcontainitemas(
  List<String> value,
  String key,
) {
  if (value.length != 0) {
    return value.contains(key);
  }
  return false;
}

dynamic jsonlimitR7d(
  dynamic value,
  int limi,
) {
  final key = limi;
  // final value2 = int.parse(input1);
  final result = value.length;
  // final value3 = value2 * 2;
  if (result > key) {
    final value1 = [];
    for (var i = 0; i < key; i++) {
      value1.add(value[i]);
    }
    return value1;
  } else {
    return value;
  }
}

List<String> getSubList(
  int startIndex,
  int uptoIndex,
  List<String> totalList,
) {
  final values = totalList;
  return (values.sublist(startIndex, uptoIndex));
}

double convertstringtodouble(String value1) {
  //final number = double.tryParse(value1);
  final number = double.parse(value1);
  return number;
}

bool bilityforimagewidget(String value1) {
  if (value1 != '') {
    return true;
  } else {
    return false;
  }
}

List<String> dropdoenlist(String value) {
  if (value != '') {
    final result = value.split(',');
    if (result.length == 1) {
      final result1 = value
          .replaceAll('"', '')
          .replaceAll('\n', '\\n')
          .replaceAll('{', '')
          .replaceAll('}', '');
      return result1.split(',');
    }
    String value1 = value.substring(1);
    String value2 = value1.substring(0, value1.length - 1);
    final value3 = value2.replaceAll('"', '');
    return value3.split(',');
  } else {
    // String value1 = text.substring(1);
    //  String value2 = value1.substring(0, value1.length - 1);
    // return value2.split(',');
    return [];
  }
}

String trim(String value) {
  if (value.contains("'")) {
    final value2 = value.trim();
    return value2;
  }
  final value2 = value.trim();
  final result = value2.replaceAll('\'', '\'\'').replaceAll('"', '\'');
  return result;
}

String patientStatus(String status) {
  if (status == 'in treatment') {
    return 'In treatment';
  } else if (status == 'new patient') {
    return 'New patient';
  } else if (status == 'recovered') {
    return 'Recovered';
  } else {
    return 'Data not found';
  }
}

String returnNa(String value) {
  // Add your function code here!
  if (value == 'null') {
    return ('NA');
  } else {
    return value;
  }
}

bool returnBool(String value) {
  if (value == '') {
    return true;
  }
  return false;
}

dynamic searchfunctionforcolor(
  String text,
  dynamic jsonData,
) {
  dynamic results = [];
  for (int index = 0; index < jsonData.length; index++) {
    for (String key1 in jsonData[index].keys) {
      if (key1 == "json") {
        for (String key2 in jsonData[index]["json"].keys) {
          if (jsonData[index]["json"][key2].toString().toLowerCase() ==
              (text!.toLowerCase())) {
            results.add(jsonData[index]);
            break;
          }
        }
        break;
      } else if (jsonData[index][key1].toString().toLowerCase() ==
          (text!.toLowerCase())) {
        results.add(jsonData[index]);
        break;
      }
    }
  }
  print(results);
  return (results.length > 0) ? results : [];
}

bool stringContains(
  String? subString,
  String? mainString,
) {
  return (mainString!.contains(subString!));
}

bool boolissue(String value) {
  try {
    if (value.length > 20) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

int? getPercentage(
  String? currentMonth,
  String? previousMonth,
) {
  if (previousMonth == "0" && currentMonth == "0") {
    return 0;
  } else if (previousMonth == "0" && currentMonth != "0") {
    return 100;
  } else {
    double current_month =
        double.parse(currentMonth!.replaceAll(RegExp(r'[^0-9.]'), ''));
    double previous_month =
        double.parse(previousMonth!.replaceAll(RegExp(r'[^0-9.]'), ''));
    double difference = current_month - previous_month;
    double percentage = (difference / previous_month) * 100;
    return percentage.round();
  }
}

double? convertMstoSeconds(int? milliSeconds) {
  return (milliSeconds! / 1000);
}

dynamic getDataJson(
  String text,
  dynamic jsonData,
) {
  dynamic results = [];
  for (int index = 0; index < jsonData.length; index++) {
    for (String key1 in jsonData[index].keys) {
      if (key1 == "json") {
        for (String key2 in jsonData[index]["json"].keys) {
          if (jsonData[index]["json"][key2].toString().toLowerCase() ==
              (text!.toLowerCase())) {
            results.add(jsonData[index]);
            break;
          }
        }
        break;
      } else if (jsonData[index][key1].toString().toLowerCase() ==
          (text!.toLowerCase())) {
        results.add(jsonData[index]);
        break;
      }
    }
  }
  print(results);
  return (results.length > 0) ? results : [];
}

String? tolower(String value) {
  bool capitalizeNext = true;
  StringBuffer result = StringBuffer();

  for (int i = 0; i < value.length; i++) {
    if (capitalizeNext) {
      result.write(value[i].toUpperCase());
      capitalizeNext = false;
    } else {
      result.write(value[i].toLowerCase());
      if (value[i] == '.' || value[i] == ' ') {
        capitalizeNext = true;
      }
    }
  }

  return result.toString();
}

List<String> getYears() {
  List<String> years = [];
  var dateParse = DateTime.parse(DateTime.now().toString());
  var startYear = dateParse.year - 100;
  for (var i = startYear; i <= startYear + 100; i++) {
    years.add(i.toString());
  }
  return years;
}

dynamic getValidatedDate(String date) {
  // DateTime now = DateTime.now();
  // String formattedDate = DateFormat('EEEE, dd MMMM').format(now);

  DateTime givendate = DateTime.parse(date);
  DateTime now = DateTime.now();
  dynamic dateData = {"dateStatus": "", "stringDate": ""};

  if (DateFormat('yyyy-MM-dd').format(givendate) ==
      DateFormat('yyyy-MM-dd').format(DateTime.now())) {
    dateData["dateStatus"] = 'Present';
    dateData["stringDate"] = DateFormat('dd MMMM').format(givendate);
  } else if (givendate.isBefore(now)) {
    dateData["dateStatus"] = 'Past';
    dateData["stringDate"] = DateFormat('EEEE, dd MMMM').format(givendate);
  } else {
    dateData["dateStatus"] = 'Future';
    dateData["stringDate"] = DateFormat('EEEE, dd MMMM').format(givendate);
  }

  return dateData;
}

List<String> dropdownfilter(String value) {
  List<String> output = [];
  output.add("All-");
  // final value2=value.replaceAll("[","").replaceAll("]","").replaceAll(" ''","");
  final value1 = value.split(',');
  for (int i = 0; i < value1.length; i++) {
    final value2 = (value1.elementAt(i))
        .replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll('"', '');
    if (output.contains(value2.trim()) == false) {
      output.add(value2.trim());
    }
  }
  return output;
}

double percent(String value) {
  double x = double.parse(value);
  double result = x / 100;
  String resultString = result.toString();
  String startingDigits = resultString.substring(0, 3);
  return double.parse(startingDigits);
}

List<String> splite(String value) {
  return value.split(',');
}

int adition(int value) {
  return value + 1;
}

List<dynamic> sortData(
  List<dynamic> data,
  String key,
  bool ascending,
) {
  data.sort((a, b) {
    return ascending
        ? a["json"][key]
            .toString()
            .toLowerCase()
            .compareTo(b["json"][key].toString().toLowerCase())
        : b["json"][key]
            .toString()
            .toLowerCase()
            .compareTo(a["json"][key].toString().toLowerCase());
  });

  return data;
}

String getstringvalue(String value) {
  final result = value[0] + value[1];
  return result;
}

bool pagemaxcount(
  int len,
  String limit,
  int page,
) {
  final key = int.parse(limit);
  final result = key * page;
  if (result >= len) {
    return false;
  } else {
    return true;
  }
}

int endcount(
  int len,
  int value,
  String limit,
) {
  final key = int.parse(limit);
  if (value == 1) {
    return key;
  } else {
    final result = value * key;
    if (result > len) {
      return len;
    } else {
      return result;
    }
  }
}

int startpage(
  int value,
  String limit,
) {
  final key = int.parse(limit);
  int value1 = value - 1;
  if (value1 == 0) {
    return 1;
  } else if (value1 == 1) {
    return key + 1;
  } else {
    final result = value1 * key + 1;
    return result;
  }
}

List<dynamic> pagination(
  List<dynamic> value,
  String limit,
  int page,
  int max,
) {
  final key = int.parse(limit);
  final result = value.length;
  final value1 = [];
  int value3 = 0;
  int key1 = 0;
  if (page != 1 || page != 0) {
    key1 = page * key;
    value3 = key1 - key;
  } else {
    value3 = 1;
    key1 = key;
  }
  if (key1 > max) {
    key1 = max;
  }

  if (result > key) {
    for (var i = value3; i < key1; i++) {
      value1.add(value[i]);
    }
    return value1;
  } else {
    return value;
  }
}

String inttostring(int value) {
  print(value);
  return value.toString();
}

String stringlength(String value) {
  int result = value.length;
  if (result > 15) {
    String value1 = value.substring(0, 15);
    return value1 + '...';
  } else {
    return value;
  }
}

dynamic searchid(
  String text,
  dynamic jsonData,
) {
  dynamic results = [];
  for (int index = 0; index < jsonData.length; index++) {
    for (String key1 in jsonData[index].keys) {
      if (key1 == "json") {
        for (String key2 in jsonData[index]["json"].keys) {
          if (jsonData[index]["json"][key2].toString().toLowerCase() ==
              (text!.toLowerCase())) {
            results.add(jsonData[index]);
            break;
          }
        }
        break;
      } else if (jsonData[index][key1]
          .toString()
          .toLowerCase()
          .contains(text!.toLowerCase())) {
        results.add(jsonData[index]);
        break;
      }
    }
  }
  return (results.length > 0) ? results : [];
}

List<dynamic> filterData(
  List<dynamic> data,
  List<String> keys,
  String search,
) {
  Set<dynamic> resultSet = {};
  for (String key in keys) {
    resultSet.addAll(data
        .where((value) =>
            value[key]
                ?.toString()
                .toLowerCase()
                .contains(search.toLowerCase()) ??
            false)
        .toList());
  }

  List<dynamic> result = resultSet.toList();
  return result;
}

int getNumberofDatesfromTwodates(
  DateTime? startDate,
  DateTime? endDate,
) {
  // Calculating the difference between the two dates
  Duration difference = endDate!.difference(startDate!);

  // Getting the number of days from the duration
  int daysDifference = difference.inDays;

  // print("Date 1: $date1");
  // print("Date 2: $date2");
  return (daysDifference);
}

dynamic updateJson(
  dynamic data,
  String defaultRoleId,
) {
  //data["Response"] = "PC01"
  if (defaultRoleId == '5') {
    data["Response"] = "PC01";
  } else if (defaultRoleId == '4') {
    data["Response"] = "PHC01";
  } else if (defaultRoleId == '1') {
    data["Response"] = "SC01";
  } else if (defaultRoleId == '0') {
    data["Response"] = "FC01";
  } else if (defaultRoleId == '13') {
    data["Response"] = "CLH01";
  } else {
    data["Response"] = "ST01";
  }

  return data;
}

List<String>? addFirstElementString(List<String> stringArray) {
  List<String> mainArray = stringArray;

  mainArray.insert(0, 'All');
  return (mainArray);
}

int noOfCharactersInString(String wordToMeasureLength) {
  return (wordToMeasureLength.length);
}

String convertToUsNumberFormat(String phoneNumber) {
  String cleanedNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

  // Check if the cleaned number has 10 digits
  if (cleanedNumber.length != 10) {
    return ('(000) 000-0000');
  }

  // Format the number as (xxx) xxx-xxxx
  return '(${cleanedNumber.substring(0, 3)}) ${cleanedNumber.substring(3, 6)}-${cleanedNumber.substring(6)}';
}

String firstLetterCapitalInTwowords(String givenWord) {
  List<String> words = givenWord.split(' ');
  String acronym = '';
  for (var word in words) {
    if (word.isNotEmpty) {
      acronym += word[0].toUpperCase();
    }
  }
  return (acronym);
}

String listtostring(List<String> value1) {
  String result = value1.join(',');

  return result;
}

List<String> stringtolist1(String value1) {
  return value1.split(',');
}

List<dynamic> jsonLimit(List<dynamic> value1) {
  return value1.take(5).toList();
}

List<dynamic> jsonlimit1(List<dynamic> value1) {
  return value1.take(6).toList();
}

String? getfirstletters(
  String? value1,
  String? value2,
) {
// Using null-aware operators to handle null values
  String? firstLetterValue1 = value1?.isNotEmpty == true ? value1![0] : null;
  String? firstLetterValue2 = value2?.isNotEmpty == true ? value2![0] : null;

  return '$firstLetterValue1 $firstLetterValue2';
}

List<dynamic> limit4(List<dynamic> value1) {
  return value1.take(4).toList();
}
