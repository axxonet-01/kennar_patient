import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start kennarAPICalls Group Code

class KennarAPICallsGroup {
  static String baseUrl = 'https://api.kennarhealth.com';
  static Map<String, String> headers = {};
  static KNGetDataInitialsCall kNGetDataInitialsCall = KNGetDataInitialsCall();
  static KNSetDataInitialsCall kNSetDataInitialsCall = KNSetDataInitialsCall();
}

class KNGetDataInitialsCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? loginId = '',
    String? password = '',
    String? applicationId = '',
    String? formstep = '',
    String? refreshToken = '',
    String? type = '',
    String? status = '',
    String? firstName = '',
    String? lastName = '',
    String? dob = '',
    bool? verify,
    String? gender = '',
    String? id = '',
    String? formStep = '',
    String? text = '',
    String? termversion = '',
    String? policyversion = '',
    String? fid = '',
    String? facility = '',
    String? name = '',
    String? patientId = '',
    bool? userconnect,
    String? step = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "id": "${id}",
  "dob": "${dob}",
  "verify": ${verify},
  "gender": "${gender}",
  "termversion": "${termversion}",
  "policyversion": "${policyversion}",
  "text": "${text}",
  "password": "${password}",
  "loginId": "${loginId}",
  "applicationId": "${applicationId}",
  "form_step": "${formStep}",
  "userconnect": ${userconnect}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'KNGetDataInitials',
      apiUrl: '${KennarAPICallsGroup.baseUrl}/getDataInitials',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
}

class KNSetDataInitialsCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? loginId = '',
    String? password = '',
    String? applicationId = '',
    String? formstep = '',
    String? refreshToken = '',
    String? type = '',
    String? status = '',
    String? firstName = '',
    String? lastName = '',
    String? dob = '',
    bool? verify,
    String? gender = '',
    String? id = '',
    String? formStep = '',
    String? text = '',
    String? termversion = '',
    String? policyversion = '',
    String? fid = '',
    String? facility = '',
    String? name = '',
    String? patientId = '',
    bool? userconnect,
    String? step = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "id": "${id}",
  "dob": "${dob}",
  "verify": ${verify},
  "gender": "${gender}",
  "termversion": "${termversion}",
  "policyversion": "${policyversion}",
  "text": "${text}",
  "password": "${password}",
  "loginId": "${loginId}",
  "applicationId": "${applicationId}",
  "form_step": "${formStep}",
"userconnect":${userconnect}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'KNSetDataInitials',
      apiUrl: '${KennarAPICallsGroup.baseUrl}/setDataInitials',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End kennarAPICalls Group Code

class SendOTPCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? otp = '',
    String? number = '',
    String? role = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "otp": "${otp}",
  "number": "${number}",
  "role": "${role}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendOTP',
      apiUrl: 'https://api.kennarhealth.com/sendOTP',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allDataList(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
}

class SaDashboardCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formstep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saDashboard',
      apiUrl: 'https://api.kennarhealth.com/saDashboard',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allDataList(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
}

class ChatGraphDataCall {
  static Future<ApiCallResponse> call({
    String? year = '',
    String? formStep = '',
    String? refreshToken = '',
    String? facilityId = '',
    String? subFormStep = '',
    String? month = '',
  }) async {
    final ffApiRequestBody = '''
{
  "year": "${year}",
  "form_step": "${formStep}",
  "refreshToken": "${refreshToken}",
  "facility_id": "${facilityId}",
  "sub_form_step": "${subFormStep}",
  "month": "${month}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chatGraphData',
      apiUrl: 'https://api.kennarhealth.com/chatGraphData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allDataList(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? activeYears(dynamic response) => getJsonField(
        response,
        r'''$..active_year''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? colors(dynamic response) => getJsonField(
        response,
        r'''$.color''',
        true,
      ) as List?;
  static List? xAxis(dynamic response) => getJsonField(
        response,
        r'''$.xAxisData''',
        true,
      ) as List?;
  static List? yAxis(dynamic response) => getJsonField(
        response,
        r'''$.yAxisData''',
        true,
      ) as List?;
  static List? facilityNames(dynamic response) => getJsonField(
        response,
        r'''$..facility_name''',
        true,
      ) as List?;
  static List? facilityIds(dynamic response) => getJsonField(
        response,
        r'''$..facility_id''',
        true,
      ) as List?;
  static List? yAxisProvider(dynamic response) => getJsonField(
        response,
        r'''$..yAxisData_provider''',
        true,
      ) as List?;
  static List? yAxisStaff(dynamic response) => getJsonField(
        response,
        r'''$..yAxisData_staff''',
        true,
      ) as List?;
  static List? yAxisPatient(dynamic response) => getJsonField(
        response,
        r'''$..yAxisData_patient''',
        true,
      ) as List?;
  static List? yAxisProviderStackBar(dynamic response) => getJsonField(
        response,
        r'''$..yAxisData_provider_stack''',
        true,
      ) as List?;
  static List? yAxisStaffStackBar(dynamic response) => getJsonField(
        response,
        r'''$..yAxisData_staff_stack''',
        true,
      ) as List?;
  static List? yAxisPatientStackBar(dynamic response) => getJsonField(
        response,
        r'''$..yAxisData_patient_stack''',
        true,
      ) as List?;
  static List? proColor(dynamic response) => getJsonField(
        response,
        r'''$..pro_color''',
        true,
      ) as List?;
  static List? staffColor(dynamic response) => getJsonField(
        response,
        r'''$..staff_color''',
        true,
      ) as List?;
  static List? patColor(dynamic response) => getJsonField(
        response,
        r'''$..pat_color''',
        true,
      ) as List?;
  static List? chartData(dynamic response) => getJsonField(
        response,
        r'''$..chartData''',
        true,
      ) as List?;
}

class IssuesTrackingCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? alphaNumericId = '',
    String? category = '',
    String? issueDescription = '',
    String? issueImage = '',
    String? formStep = '',
    String? role = '',
    String? status = '',
    String? id = '',
    String? facilityId = '',
    String? userId = '',
    String? defaultRoleId = '',
    List<String>? idListList,
    String? date = '',
    String? time = '',
    String? appType = '',
  }) async {
    final idList = _serializeList(idListList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "alphaNumericId": "${alphaNumericId}",
  "category": "${category}",
  "issue_description": "${issueDescription}",
  "issue_image": "${issueImage}",
  "form_step": "${formStep}",
  "role": "${role}",
  "status": "${status}",
  "id": "${id}",
  "facility_id": "${facilityId}",
  "user_id": "${userId}",
  "default_role_id": "${defaultRoleId}",
  "idList": ${idList},
  "date": "${date}",
  "time": "${time}",
  "app_type": "${appType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'issuesTracking',
      apiUrl: 'https://api.kennarhealth.com/issuesTracking',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? facilityNames(dynamic response) => getJsonField(
        response,
        r'''$[:].json.facilityname''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$[:].json.facility_id''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class IssuesExportCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? alphaNumericId = '',
    String? category = '',
    String? issueDescription = '',
    String? issueImage = '',
    String? formStep = '',
    String? role = '',
    String? status = '',
    String? id = '',
    String? facilityId = '',
    String? userId = '',
    String? defaultRoleId = '',
    List<String>? idListList,
  }) async {
    final idList = _serializeList(idListList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "alphaNumericId": "${alphaNumericId}",
  "category": "${category}",
  "issue_description": "${issueDescription}",
  "issue_image": "${issueImage}",
  "form_step": "${formStep}",
  "role": "${role}",
  "status": "${status}",
  "id": "${id}",
  "facility_id": "${facilityId}",
  "user_id": "${userId}",
  "default_role_id": "${defaultRoleId}",
  "idList":${idList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'issuesExport',
      apiUrl: 'https://api.kennarhealth.com/issuesExport',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IssuesTrackingListCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? alphaNumericId = '',
    String? category = '',
    String? issueDescription = '',
    String? issueImage = '',
    String? formStep = '',
    String? role = '',
    String? status = '',
    String? id = '',
    String? facilityId = '',
    String? userId = '',
    String? defaultRoleId = '',
    String? tableName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "alphaNumericId": "${alphaNumericId}",
  "category": "${category}",
  "issue_description": "${issueDescription}",
  "issue_image": "${issueImage}",
  "form_step": "${formStep}",
  "role": "${role}",
  "status": "${status}",
  "id": "${id}",
  "facility_id": "${facilityId}",
  "user_id": "${userId}",
  "default_role_id": "${defaultRoleId}",
"tableName":"${tableName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'issuesTrackingList',
      apiUrl: 'https://api.kennarhealth.com/issuesTrackingList',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? categoryList(dynamic response) => getJsonField(
        response,
        r'''$..category''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
}

class PatientLinkingCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formstep = '',
    String? orderBy = '',
    String? inviteId = '',
    String? refEmail = '',
    String? status = '',
    String? reason = '',
    String? cancel = '',
    String? firstRequest = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "order_by": "${orderBy}",
  "invite_id": "${inviteId}",
  "ref_email": "${refEmail}",
  "status": "${status}",
  "reason": "${reason}",
  "cancel": "${cancel}",
  "firstRequest": "${firstRequest}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patientLinking',
      apiUrl: 'https://api.kennarhealth.com/patientLinking',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetFacilityClinicsCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? alphaNumericId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "alphaNumericId": "${alphaNumericId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFacilityClinics',
      apiUrl: 'https://api.kennarhealth.com/getFacilityClinics',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DashboardCall {
  static Future<ApiCallResponse> call({
    String? formstep = '',
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? staffRole = '',
    String? id = '',
    String? privilage = '',
    String? modules = '',
    String? profile = '',
    String? step = '',
    String? occupation = '',
    String? clinic = '',
    String? insurance = '',
    String? drugaAllergy = '',
    String? bloodType = '',
    String? chronicDisease = '',
    String? city = '',
    String? local = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "staffRole": "${staffRole}",
  "id": "${id}",
  "privilage": "${privilage}",
  "modules": "${modules}",
  "profile": "${profile}",
  "step": "${step}",
  "occupation": "${occupation}",
  "clinic": "${clinic}",
  "insurance": "${insurance}",
  "drugAllergy": "${drugaAllergy}",
  "bloodType": "${bloodType}",
  "chronicDisease": "${chronicDisease}",
  "city": "${city}",
  "local": "${local}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dashboard',
      apiUrl: 'https://api.kennarhealth.com/dashboard',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? monthlyChatTime(dynamic response) => getJsonField(
        response,
        r'''$..monthlychattime''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ManagePatientsCall {
  static Future<ApiCallResponse> call({
    String? formstep = '',
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? staffRole = '',
    String? id = '',
    String? privilage = '',
    String? modules = '',
    String? profile = '',
    String? step = '',
    String? occupation = '',
    String? clinic = '',
    String? insurance = '',
    String? drugaAllergy = '',
    String? bloodType = '',
    String? chronicDisease = '',
    String? city = '',
    String? pid = '',
    String? invite = '',
    List<int>? careteamList,
    String? xAuthToken = '',
    List<String>? performanceStatusList,
    String? dob = '',
    bool? verify,
    String? state = '',
    String? zipcode = '',
    String? gender = '',
    String? termversion = '',
    String? policyversion = '',
    List<String>? mediListList,
  }) async {
    final careteam = _serializeList(careteamList);
    final performanceStatus = _serializeList(performanceStatusList);
    final mediList = _serializeList(mediListList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "staffRole": "${staffRole}",
  "id": "${id}",
  "privilage": "${privilage}",
  "modules": "${modules}",
  "profile": "${profile}",
  "step": "${step}",
  "occupation": "${occupation}",
  "clinic": "${clinic}",
  "insurance": "${insurance}",
  "drugAllergy": "${drugaAllergy}",
  "bloodType": "${bloodType}",
  "chronicDisease": "${chronicDisease}",
  "city": "${city}",
  "pid": "${pid}",
  "invite": "${invite}",
  "careteam": ${careteam},
  "x_auth_token": "${xAuthToken}",
  "performanceStatus": ${performanceStatus},
  "dob": "${dob}",
  "verify": ${verify},
  "state": "${state}",
  "zipcode": "${zipcode}",
  "gender": "${gender}",
  "termversion": "${termversion}",
  "policyversion": "${policyversion}",
  "mediList": ${mediList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'managePatients',
      apiUrl: 'https://api.kennarhealth.com/managePatients',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List<int>? allData(dynamic response) => (getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? roleIds(dynamic response) => getJsonField(
        response,
        r'''$[:]..role_id''',
        true,
      ) as List?;
  static List? roleNames(dynamic response) => getJsonField(
        response,
        r'''$[:]..role_name''',
        true,
      ) as List?;
  static List? availableDoctor(dynamic response) => getJsonField(
        response,
        r'''$..AvailableDoctors''',
        true,
      ) as List?;
  static List? appointments(dynamic response) => getJsonField(
        response,
        r'''$..Appointments''',
        true,
      ) as List?;
  static List? medication(dynamic response) => getJsonField(
        response,
        r'''$..medication''',
        true,
      ) as List?;
  static List? demographic(dynamic response) => getJsonField(
        response,
        r'''$..Demographic''',
        true,
      ) as List?;
  static List? insuranceList(dynamic response) => getJsonField(
        response,
        r'''$..InsuranceList''',
        true,
      ) as List?;
  static List? heratRate(dynamic response) => getJsonField(
        response,
        r'''$..heartRate''',
        true,
      ) as List?;
  static List? temperature(dynamic response) => getJsonField(
        response,
        r'''$..getTemperature''',
        true,
      ) as List?;
  static List? oxygen(dynamic response) => getJsonField(
        response,
        r'''$..getOxygen''',
        true,
      ) as List?;
  static List? analysisList(dynamic response) => getJsonField(
        response,
        r'''$..AnalysisList''',
        true,
      ) as List?;
}

class GetUserDetailsOverviewCall {
  static Future<ApiCallResponse> call({
    String? formstep = '',
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? staffRole = '',
    String? id = '',
    String? privilage = '',
    String? modules = '',
    String? profile = '',
    String? step = '',
    String? occupation = '',
    String? clinic = '',
    String? insurance = '',
    String? drugaAllergy = '',
    String? bloodType = '',
    String? chronicDisease = '',
    String? city = '',
    String? pid = '',
    String? invite = '',
    List<int>? careteamList,
    List<String>? rolesList,
    String? tableName = '',
    String? requestType = '',
  }) async {
    final careteam = _serializeList(careteamList);
    final roles = _serializeList(rolesList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "staffRole": "${staffRole}",
  "id": "${id}",
  "privilage": "${privilage}",
  "modules": "${modules}",
  "profile": "${profile}",
  "step": "${step}",
  "occupation": "${occupation}",
  "clinic": "${clinic}",
  "insurance": "${insurance}",
  "drugAllergy": "${drugaAllergy}",
  "bloodType": "${bloodType}",
  "chronicDisease": "${chronicDisease}",
  "city": "${city}",
  "pid": "${pid}",
  "invite": "${invite}",
  "careteam": ${careteam},
  "roles": ${roles},
  "tableName": "${tableName}",
  "requestType": "${requestType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getUserDetailsOverview',
      apiUrl: 'https://api.kennarhealth.com/getUserDetailsOverview',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? alldata(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
}

class SuperAdminDefaultDetailsCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? category = '',
    String? formStep = '',
    String? id = '',
    String? label = '',
    String? text = '',
    String? defaultRoleId = '',
    String? subCategory = '',
    String? image = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "id": "${id}",
  "category": "${category}",
  "default_role_id": "${defaultRoleId}",
  "sub_category": "${subCategory}",
  "form_step": "${formStep}",
  "image": "${image}",
  "label": "${label}",
  "text": "${text}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'superAdminDefaultDetails',
      apiUrl: 'https://api.kennarhealth.com/superAdminDefaultDetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? categorylist(dynamic response) => getJsonField(
        response,
        r'''$..category''',
        true,
      ) as List?;
  static List? subcategorylist(dynamic response) => getJsonField(
        response,
        r'''$..sub_category''',
        true,
      ) as List?;
  static List? catid(dynamic response) => getJsonField(
        response,
        r'''$..cat_id''',
        true,
      ) as List?;
  static List? subcatid(dynamic response) => getJsonField(
        response,
        r'''$..sub_cat_id''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      ) as List?;
}

class ManageStaffCall {
  static Future<ApiCallResponse> call({
    String? formstep = '',
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? staffRole = '',
    String? id = '',
    String? privilage = '',
    String? modules = '',
    String? profile = '',
    String? step = '',
    String? occupation = '',
    String? clinic = '',
    String? insurance = '',
    String? drugaAllergy = '',
    String? bloodType = '',
    String? chronicDisease = '',
    String? city = '',
    String? pid = '',
    String? invite = '',
    String? alphaNumericId = '',
    List<String>? cliniclistList,
    bool? chatAvailability,
    String? applicationId = '',
    String? defaultRoleId = '',
    String? phone = '',
  }) async {
    final cliniclist = _serializeList(cliniclistList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "staffRole": "${staffRole}",
  "id": "${id}",
  "privilage": "${privilage}",
  "modules": "${modules}",
  "profile": "${profile}",
  "step": "${step}",
  "occupation": "${occupation}",
  "clinic": "${clinic}",
  "insurance": "${insurance}",
  "drugAllergy": "${drugaAllergy}",
  "bloodType": "${bloodType}",
  "chronicDisease": "${chronicDisease}",
  "city": "${city}",
  "pid": "${pid}",
  "invite": "${invite}",
  "alpha_numeric_id": "${alphaNumericId}",
  "cliniclist": ${cliniclist},
  "chat_availability": ${chatAvailability},
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "phone": "${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manageStaff',
      apiUrl: 'https://api.kennarhealth.com/manageStaff',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      ) as List?;
  static List? json(dynamic response) => getJsonField(
        response,
        r'''$..json_agg''',
        true,
      ) as List?;
  static List? staffrole(dynamic response) => getJsonField(
        response,
        r'''$..staff_role''',
        true,
      ) as List?;
}

class ManageMapStaffFacilityCall {
  static Future<ApiCallResponse> call({
    String? formstep = '',
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? staffRole = '',
    String? id = '',
    String? privilage = '',
    String? modules = '',
    String? profile = '',
    String? step = '',
    String? occupation = '',
    String? clinic = '',
    String? insurance = '',
    String? drugaAllergy = '',
    String? bloodType = '',
    String? chronicDisease = '',
    String? city = '',
    String? pid = '',
    String? invite = '',
    String? alphaNumericId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "staffRole": "${staffRole}",
  "id": "${id}",
  "privilage": "${privilage}",
  "modules": "${modules}",
  "profile": "${profile}",
  "step": "${step}",
  "occupation": "${occupation}",
  "clinic": "${clinic}",
  "insurance": "${insurance}",
  "drugAllergy": "${drugaAllergy}",
  "bloodType": "${bloodType}",
  "chronicDisease": "${chronicDisease}",
  "city": "${city}",
  "pid": "${pid}",
  "invite": "${invite}",
  "alpha_numeric_id": "${alphaNumericId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manageMapStaffFacility',
      apiUrl: 'https://api.kennarhealth.com/manageMapStaffFacility',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DwldPdfCall {
  static Future<ApiCallResponse> call({
    String? type = '',
    String? refreshToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "${type}",
  "refreshToken": "${refreshToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dwldPdf',
      apiUrl: 'https://api.kennarhealth.com/dwldPdf',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFileStatusCall {
  static Future<ApiCallResponse> call({
    String? type = '',
    String? refreshToken = '',
    String? fileName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "${type}",
  "refreshToken": "${refreshToken}",
  "fileName": "${fileName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFileStatus',
      apiUrl: 'https://api.kennarhealth.com/getFileStatus',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStatesCall {
  static Future<ApiCallResponse> call({
    String? country = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetStates',
      apiUrl: 'https://api.kennarhealth.com/getStates',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'country': country,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminInviteCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? phoneNumber = '',
    String? applicationId = '',
    String? defaultRoleId = '',
    String? formstep = '',
    String? role = '',
    String? id = '',
    String? staffRole = '',
    String? clinic = '',
    String? privilage = '',
    String? insurance = '',
    String? modules = '',
    String? step = '',
    String? profile = '',
    String? occupation = '',
    String? drugaAllergy = '',
    String? bloodType = '',
    String? chronicDisease = '',
    String? city = '',
    String? pid = '',
    String? middleName = '',
    String? npiNumber = '',
    String? npiType = '',
    String? mailAddress1 = '',
    String? mailAddress2 = '',
    String? primaryAddress1 = '',
    String? primaryAddress2 = '',
    String? state = '',
    String? country = '',
    String? primaryCountry = '',
    String? primaryState = '',
    String? primaryCity = '',
    String? primaryPhone = '',
    String? status = '',
    String? gender = '',
    String? alphaNumericId = '',
    String? clinicsAssigned = '',
    String? mailingFax = '',
    String? primaryFax = '',
    String? zipcode = '',
    String? zipcode1 = '',
    String? dob = '',
    String? other = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "email": "${email}",
  "phone_number": "${phoneNumber}",
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "formstep": "${formstep}",
  "role": "${role}",
  "id": "${id}",
  "staffRole": "${staffRole}",
  "clinic": "${clinic}",
  "privilage": "${privilage}",
  "insurance": "${insurance}",
  "modules": "${modules}",
  "step": "${step}",
  "profile": "${profile}",
  "occupation": "${occupation}",
  "drugaAllergy": "${drugaAllergy}",
  "bloodType": "${bloodType}",
  "chronicDisease": "${chronicDisease}",
  "city": "${city}",
  "pid": "${pid}",
  "middle_name": "${middleName}",
  "npi_number": "${npiNumber}",
  "npi_type": "${npiType}",
  "mail_address1": "${mailAddress1}",
  "mail_address2": "${mailAddress2}",
  "primary_address1": "${primaryAddress1}",
  "primary_address2": "${primaryAddress2}",
  "state": "${state}",
  "country": "${country}",
  "primary_country": "${primaryCountry}",
  "primary_state": "${primaryState}",
  "primary_city": "${primaryCity}",
  "primary_phone": "${primaryPhone}",
  "status": "${status}",
  "gender": "${gender}",
  "alpha_Numeric_Id": "${alphaNumericId}",
  "mailingFax": "${mailingFax}",
  "primaryFax": "${primaryFax}",
  "zipcode": "${zipcode}",
  "clinics_assigned": "${clinicsAssigned}",
  "zipcode1": "${zipcode1}",
  "dob": "${dob}",
  "other": "${other}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adminInvite',
      apiUrl: 'https://api.kennarhealth.com/adminInvite',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProviderDashboardCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formStep = '',
    String? orderBy = '',
    String? providerId = '',
    String? id = '',
    String? type = '',
    String? reason = '',
    String? reamarks = '',
    String? local = '',
    String? status = '',
    String? tableName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "form_step": "${formStep}",
  "order_by": "${orderBy}",
  "provider_id": "${providerId}",
  "id": "${id}",
  "type": "${type}",
  "reason": "${reason}",
  "reamarks": "${reamarks}",
  "flag_status": "<flag_status>",
  "local": "${local}",
  "status": "${status}",
  "tableName": "${tableName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'providerDashboard',
      apiUrl: 'https://api.kennarhealth.com/providerDashboard',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$..role''',
        true,
      ) as List?;
}

class ManageProviderCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? phoneNumber = '',
    String? applicationId = '',
    String? defaultRoleId = '',
    String? formstep = '',
    String? role = '',
    String? alphaNumericId = '',
    List<String>? clinicsAssignedList,
    String? orderBy = '',
    int? id,
    String? middleName = '',
    String? npiNumber = '',
    String? npiType = '',
    String? mailAddress1 = '',
    String? mailAddress2 = '',
    String? primaryAddress1 = '',
    String? primaryAddress2 = '',
    String? city = '',
    String? state = '',
    String? country = '',
    String? primaryCountry = '',
    String? primaryState = '',
    String? primaryCity = '',
    String? status = '',
    String? primaryPhone = '',
    String? gender = '',
    String? mailingFax = '',
    String? primaryFax = '',
    String? xAuthToken = '',
    List<String>? careteamList,
    String? teams = '',
    String? requestType = '',
  }) async {
    final clinicsAssigned = _serializeList(clinicsAssignedList);
    final careteam = _serializeList(careteamList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "phone_number": "${phoneNumber}",
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "formstep": "${formstep}",
  "role": "${role}",
  "alpha_Numeric_Id": "${alphaNumericId}",
  "clinics_assigned": ${clinicsAssigned},
  "order_by": "${orderBy}",
  "id": ${id},
  "middle_name": "${middleName}",
  "npi_number": "${npiNumber}",
  "npi_type": "${npiType}",
  "mail_address1": "${mailAddress1}",
  "mail_address2": "${mailAddress2}",
  "primary_address1": "${primaryAddress1}",
  "primary_address2": "${primaryAddress2}",
  "city": "${city}",
  "state": "${state}",
  "country": "${country}",
  "primary_country": "${primaryCountry}",
  "primary_state": "${primaryState}",
  "primary_city": "${primaryCity}",
  "status": "${status}",
  "primary_phone": "${primaryPhone}",
  "gender": "${gender}",
  "mailingFax": "${mailingFax}",
  "primaryFax": "${primaryFax}",
  "x_auth_token": "${xAuthToken}",
  "careteam": ${careteam},
  "teams": "${teams}",
  "request_type": "${requestType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manageProvider',
      apiUrl: 'https://api.kennarhealth.com/manageProvider',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ChatCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formstep = '',
    String? email = '',
    String? applicationId = '',
    String? defaultRoleId = '',
    String? userName = '',
    String? channelName = '',
    String? password = '',
    String? name = '',
    String? roomId = '',
    String? userId = '',
    String? xAuthToken = '',
    String? xUserId = '',
    List<String>? providerIdList,
    String? jobName = '',
    String? frequency = '',
    String? startDate = '',
    String? endDate = '',
    String? jobAlias = '',
    String? executionTime = '',
    String? id = '',
    String? filepath = '',
    List<String>? idlistList,
  }) async {
    final providerId = _serializeList(providerIdList);
    final idlist = _serializeList(idlistList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "formstep": "${formstep}",
  "userName": "${userName}",
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "channelName": "${channelName}",
  "password": "${password}",
  "name": "${name}",
  "room_id": "${roomId}",
  "user_id": "${userId}",
  "x_auth_token": "${xAuthToken}",
  "x_user_id": "${xUserId}",
  "provider_id": ${providerId},
  "job_name": "${jobName}",
  "frequency": "${frequency}",
  "start_date": "${startDate}",
  "end_date": "${endDate}",
  "job_alias": "${jobAlias}",
  "execution_time": "${executionTime}",
  "id": "${id}",
  "filpath": "${filepath}",
  "idlist": ${idlist}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chat',
      apiUrl: 'https://api.kennarhealth.com/chat',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? schedulerJobDetails(dynamic response) => getJsonField(
        response,
        r'''$..scheduler_job_details[*]''',
        true,
      ) as List?;
}

class KnSchedulerCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formstep = '',
    String? email = '',
    String? applicationId = '',
    String? defaultRoleId = '',
    String? userName = '',
    String? channelName = '',
    String? password = '',
    String? name = '',
    String? roomId = '',
    String? userId = '',
    String? xAuthToken = '',
    String? xUserId = '',
    List<String>? providerIdList,
    String? jobName = '',
    String? frequency = '',
    String? startDate = '',
    String? endDate = '',
    String? jobAlias = '',
    String? executionTime = '',
    String? id = '',
    String? filepath = '',
    List<String>? idlistList,
    String? role = '',
    String? executiontype = '',
    String? executionDate = '',
  }) async {
    final providerId = _serializeList(providerIdList);
    final idlist = _serializeList(idlistList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "formstep": "${formstep}",
  "userName": "${userName}",
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "channelName": "${channelName}",
  "password": "${password}",
  "name": "${name}",
  "room_id": "${roomId}",
  "user_id": "${userId}",
  "x_auth_token": "${xAuthToken}",
  "x_user_id": "${xUserId}",
  "provider_id": ${providerId},
  "job_name": "${jobName}",
  "frequency": "${frequency}",
  "start_date": "${startDate}",
  "end_date": "${endDate}",
  "job_alias": "${jobAlias}",
  "execution_time": "${executionTime}",
  "id": "${id}",
  "filpath": "${filepath}",
  "idlist": "${idlist}",
  "role": "${role}",
  "executiontype": "${executiontype}",
  "executionDate": "${executionDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'knScheduler',
      apiUrl: 'https://api.kennarhealth.com/knScheduler',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? schedulerJobDetails(dynamic response) => getJsonField(
        response,
        r'''$..scheduler_job_details[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? names(dynamic response) => getJsonField(
        response,
        r'''$[:].json.name''',
        true,
      ) as List?;
  static List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].json.id''',
        true,
      ) as List?;
}

class QuizbpCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? i1 = '',
    String? i2 = '',
    String? formstep = '',
    String? type = '',
    String? starttime1 = '',
    String? starttime2 = '',
    String? starttime3 = '',
    String? endtime1 = '',
    String? endtime2 = '',
    String? endtime3 = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "i1": "${i1}",
  "i2": "${i2}",
  "formstep": "${formstep}",
  "type": "${type}",
  "starttime1": "${starttime1}",
  "starttime2": "${starttime2}",
  "starttime3": "${starttime3}",
  "endtime1": "${endtime1}",
  "endtime2": "${endtime2}",
  "endtime3": "${endtime3}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'quizbp',
      apiUrl: 'https://api.kennarhealth.com/quizbp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProfileChangeCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? id = '',
    String? formstep = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "id": "${id}",
  "formstep": "${formstep}",
  "description":"${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'profileChange',
      apiUrl: 'https://api.kennarhealth.com/profileChange',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CareGapsCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? id = '',
    String? formstep = '',
    String? type = '',
    String? measure = '',
    String? age = '',
    String? frequency = '',
    String? criteria = '',
    List<String>? testList,
    List<String>? cptCodeList,
    String? fromAge = '',
    String? toAge = '',
    String? otherFrequency = '',
    String? name = '',
    String? question = '',
    String? gender = '',
    String? answer = '',
    String? remarks = '',
    String? questionId = '',
  }) async {
    final test = _serializeList(testList);
    final cptCode = _serializeList(cptCodeList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "id": "${id}",
  "formstep": "${formstep}",
  "type": "${type}",
  "measure": "${measure}",
  "age": "${age}",
  "frequency": "${frequency}",
  "criteria": "${criteria}",
  "fromAge": "${fromAge}",
  "toAge": "${toAge}",
  "otherFrequecy": "${otherFrequency}",
  "name": "${name}",
  "question": "${question}",
  "test": ${test},
  "cptCode": ${cptCode},
  "gender": "${gender}",
  "answer": "${answer}",
  "remarks": "${remarks}",
  "questionId": "${questionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CareGaps',
      apiUrl: 'https://api.kennarhealth.com/careGap',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      ) as List?;
  static List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].json.id''',
        true,
      ) as List?;
  static List? names(dynamic response) => getJsonField(
        response,
        r'''$[:].json.name''',
        true,
      ) as List?;
}

class KnindividualaccessCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formstep = '',
    String? name = '',
    String? patientId = '',
    String? fid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "name": "${name}",
  "patientId": "${patientId}",
  "fid": "${fid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'knindividualaccess',
      apiUrl: 'https://api.kennarhealth.com/kn_individual_access',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allDataList(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
}

class GetDataKCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? email = '',
    String? type = '',
    String? formstep = '',
    String? id = '',
    String? ids = '',
    String? roleid = '',
    String? name = '',
    String? starttime = '',
    String? temperature = '',
    String? uneasy = '',
    String? emergency = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "id": "${id}",
  "formstep": "${formstep}",
  "type": "${type}",
  "ids": "${ids}",
  "roleid": "${roleid}",
  "name": "${name}",
  "starttime": "${starttime}",
  "temperature": "${temperature}",
  "uneasy": "${uneasy}",
  "emergency": "${emergency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDataK',
      apiUrl: 'https://api.kennarhealth.com/getDataK',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PatientProfileCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? email = '',
    String? type = '',
    String? formstep = '',
    String? id = '',
    String? ids = '',
    String? roleid = '',
    String? name = '',
    String? starttime = '',
    String? temperature = '',
    String? uneasy = '',
    String? emergency = '',
    bool? userconnect,
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "id": "${id}",
  "formstep": "${formstep}",
  "type": "${type}",
  "ids": "${ids}",
  "roleid": "${roleid}",
  "name": "${name}",
  "starttime": "${starttime}",
  "temperature": "${temperature}",
  "uneasy": "${uneasy}",
  "emergency": "${emergency}",
  "userconnect": ${userconnect}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patientProfile',
      apiUrl: 'https://api.kennarhealth.com/patientProfile',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? activeYears(dynamic response) => getJsonField(
        response,
        r'''$..active_year''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
  static List? state(dynamic response) => getJsonField(
        response,
        r'''$..state''',
        true,
      ) as List?;
  static List? country(dynamic response) => getJsonField(
        response,
        r'''$..[0]..country''',
        true,
      ) as List?;
  static List? observation(dynamic response) => getJsonField(
        response,
        r'''$..observation[*]''',
        true,
      ) as List?;
  static List? diagnosis(dynamic response) => getJsonField(
        response,
        r'''$..diagnosis[*]''',
        true,
      ) as List?;
  static List? medication(dynamic response) => getJsonField(
        response,
        r'''$..medication[*]''',
        true,
      ) as List?;
  static List? diabetes(dynamic response) => getJsonField(
        response,
        r'''$..diabetes[*]''',
        true,
      ) as List?;
  static List? bpList(dynamic response) => getJsonField(
        response,
        r'''$..bp[*]''',
        true,
      ) as List?;
}

class KnNetworkCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? formstep = '',
    String? facilityName = '',
    String? firstName = '',
    String? lastName = '',
    String? contactNumber = '',
    String? gender = '',
    String? dob = '',
    String? address = '',
    String? state = '',
    String? city = '',
    String? zipcode = '',
    String? id = '',
    dynamic? jsonListJson,
    String? facilityId = '',
    String? mileRadius = '',
  }) async {
    final jsonList = _serializeJson(jsonListJson, true);
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "formstep": "${formstep}",
  "facility_name": "${facilityName}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "contactNumber": "${contactNumber}",
  "gender": "${gender}",
  "dob": "${dob}",
  "address": "${address}",
  "state": "${state}",
  "city": "${city}",
  "zipcode": "${zipcode}",
  "id": "${id}",
  "jsonList": ${jsonList},
  "facility_id": "${facilityId}",
  "mile_radius": "${mileRadius}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'knNetwork',
      apiUrl: 'https://api.kennarhealth.com/kn_network',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? dataList(dynamic response) => getJsonField(
        response,
        r'''$..data''',
        true,
      ) as List?;
}

class ReadExcelFileCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'readExcelFile',
      apiUrl: 'https://api.kennarhealth.com/readExcelFile',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeEmailCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
    String? firstName = '',
    String? lastName = '',
    String? updatedEmail = '',
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "type": "${type}",
"first_name":"${firstName}",
"last_name":"${lastName}",
"updated_email":"${updatedEmail}",
"phone_number":"${phoneNumber}"


}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changeEmail',
      apiUrl: 'https://api.kennarhealth.com/changeEmail',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BpRegistrationbCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? organizationName = '',
    String? address = '',
    String? description = '',
    String? id = '',
    String? applicationId = '',
    String? firstName = '',
    String? title = '',
    String? email = '',
    String? phoneNo = '',
    String? extension = '',
    String? mobileNo = '',
    String? lastName = '',
    String? industryName = '',
    String? otherIndustry = '',
    String? confirmOrg = '',
    String? formstep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "organizationName": "${organizationName}",
  "address": "${address}",
  "description": "${description}",
  "id": "${id}",
  "applicationId": "${applicationId}",
  "firstName": "${firstName}",
  "title": "${title}",
  "email": "${email}",
  "phoneNo": "${phoneNo}",
  "extension": "${extension}",
  "mobileNo": "${mobileNo}",
  "lastName": "${lastName}",
  "industry_name": "${industryName}",
  "other_industry": "${otherIndustry}",
  "confirm_org": "${confirmOrg}",
  "formstep":" ${formstep}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bpRegistrationb',
      apiUrl: 'https://api.kennarhealth.com/bpRegistration',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterUserBeforeCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? applicationId = '',
    String? password = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "applicationId": "${applicationId}",
  "password": "${password}",
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registerUserBefore',
      apiUrl: 'https://api.kennarhealth.com/registerUserBefore',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserDataCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? applicationId = '',
    String? password = '',
    String? type = '',
    String? regStatus = '',
    String? firstName = '',
    String? lastName = '',
    String? dob = '',
    String? gender = '',
    String? street = '',
    String? state = '',
    String? city = '',
    String? zipcode = '',
    bool? confirm,
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "applicationId": "${applicationId}",
  "password": "${password}",
  "type": "${type}",
  "regStatus": "${regStatus}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "dob": "${dob}",
  "gender": "${gender}",
  "street": "${street}",
  "state": "${state}",
  "city": "${city}",
  "zipcode": "${zipcode}",
  "confirm": ${confirm}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserData',
      apiUrl: 'https://api.kennarhealth.com/updateUserData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NLoginCall {
  static Future<ApiCallResponse> call({
    String? loginId = '',
    String? applicationId = '',
    String? number = '',
  }) async {
    final ffApiRequestBody = '''
{
  "loginId": "${loginId}",
  "applicationId": "${applicationId}",
  "number": "${number}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NLogin',
      apiUrl: 'https://api.kennarhealth.com/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NLogoutCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NLogout',
      apiUrl: 'https://api.kennarhealth.com/logout',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFacilityDetailsCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? type = '',
    String? id = '',
    String? refreshToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "type": "${type}",
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFacilityDetails',
      apiUrl: 'https://api.kennarhealth.com/getFacilityDetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetFacilitiesCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? roleId = '',
    String? faacilityId = '',
    String? status = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "roleId": "${roleId}",
  "faacilityId": "${faacilityId}",
  "status": "${status}",
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'setFacilities',
      apiUrl: 'https://api.kennarhealth.com/setPhysicianFacilities',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ManageFacilityCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? roleId = '',
    String? formStep = '',
    String? facilityName = '',
    String? facilitysid = '',
    String? facilityid = '',
    String? mobileNumber = '',
    String? address1 = '',
    String? address2 = '',
    String? country = '',
    String? province = '',
    String? city = '',
    String? postalCode = '',
    String? cpersonName = '',
    String? cpersonNumber = '',
    String? cpersonEmail = '',
    String? facilityType = '',
    String? action = '',
    String? status = '',
    String? applicationId = '',
    bool? aarp,
    bool? amerigroup,
    bool? aetna,
    bool? anthem,
    bool? aFI,
    bool? bCBSA,
    bool? aNIC,
    String? uICreate = '',
    String? facilityLogo = '',
    String? primaryAddress1 = '',
    String? primaryAddress2 = '',
    String? primaryCountry = '',
    String? primaryState = '',
    String? primaryCity = '',
    String? primaryPhone = '',
    String? npiNumber = '',
    String? npiType = '',
    String? defaultRoleid = '',
    String? authFirstName = '',
    String? authLastName = '',
    String? mailingFaxNumber = '',
    String? primaryFaxNumber = '',
    String? title = '',
    String? facilityStatus = '',
    String? mailingZipcode = '',
    String? addressZipcode = '',
    String? id = '',
    String? xlpath = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "${status}",
  "action": "${action}",
  "facilityType": "${facilityType}",
  "cpersonEmail": "${cpersonEmail}",
  "cpersonNumber": "${cpersonNumber}",
  "cpersonName": "${cpersonName}",
  "facilityid": "${facilityid}",
  "facilitysid": "${facilitysid}",
  "facilityName": "${facilityName}",
  "refreshToken": "${refreshToken}",
  "roleId": "${roleId}",
  "formStep": "${formStep}",
  "mobileNumber": "${mobileNumber}",
  "address1": "${address1}",
  "address2": "${address2}",
  "country": "${country}",
  "province": "${province}",
  "city": "${city}",
  "postalCode": "${postalCode}",
  "applicationId": "${applicationId}",
  "aarp": ${aarp},
  "amerigroup": ${amerigroup},
  "aetna": ${aetna},
  "anthem": ${anthem},
  "a_f_i": ${aFI},
  "b_c_b_s_a": ${bCBSA},
  "a_n_i_c": ${aNIC},
  "UICreate": "${uICreate}",
  "facilityLogo": "${facilityLogo}",
  "primary_address1": "${primaryAddress1}",
  "primary_address2": "${primaryAddress2}",
  "primary_state": "${primaryState}",
  "primary_country": "${primaryCountry}",
  "primary_city": "${primaryCity}",
  "primary_phone": "${primaryPhone}",
  "npi_number": "${npiNumber}",
  "npi_type": "${npiType}",
  "default_roleid": "${defaultRoleid}",
  "authFirstName": "${authFirstName}",
  "authLastName": "${authLastName}",
  "mailing_faxNumber": "${mailingFaxNumber}",
  "primary_faxNumber": "${primaryFaxNumber}",
  "title": "${title}",
  "facility_status": "${facilityStatus}",
  "mailing_zipcode": "${mailingZipcode}",
  "address_zipcode": "${addressZipcode}",
  "id": "${id}",
  "xlpath": "${xlpath}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manageFacility',
      apiUrl: 'https://api.kennarhealth.com/manageFacility',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ManageFacilityClinicCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? roleId = '',
    String? formStep = '',
    String? clinicName = '',
    String? clinicsid = '',
    String? clinicfacilityid = '',
    String? mobileNumber = '',
    String? address1 = '',
    String? address2 = '',
    String? country = '',
    String? province = '',
    String? city = '',
    String? postalCode = '',
    String? contactPersonName = '',
    String? contactPersonNumber = '',
    String? contactPersonEmail = '',
    String? clinicType = '',
    String? facilityAlphaNumeric = '',
    String? status = '',
    String? applicationId = '',
    String? clinicEmail = '',
    String? clinicAdmin = '',
    String? ehrDetails = '',
    List<String>? clinictypesList,
    String? id = '',
  }) async {
    final clinictypes = _serializeList(clinictypesList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "roleId": "${roleId}",
  "formStep": "${formStep}",
  "clinicName": "${clinicName}",
  "clinicsid": "${clinicsid}",
  "clinicfacilityid": "${clinicfacilityid}",
  "mobileNumber": "${mobileNumber}",
  "address1": "${address1}",
  "address2": "${address2}",
  "country": "${country}",
  "province": "${province}",
  "city": "${city}",
  "postalCode": "${postalCode}",
  "contactPersonName": "${contactPersonName}",
  "contactPersonNumber": "${contactPersonNumber}",
  "contactPersonEmail": "${contactPersonEmail}",
  "clinicType": "${clinicType}",
  "facilityAlphaNumeric": "${facilityAlphaNumeric}",
  "applicationId": "${applicationId}",
  "status": "${status}",
  "clinicEmail": "${clinicEmail}",
  "clinicAdmin": "${clinicAdmin}",
  "ehrDetails": "${ehrDetails}",
  "clinictypes": ${clinictypes},
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manageFacilityClinic',
      apiUrl: 'https://api.kennarhealth.com/manageFacilityClinic',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class NGetDataCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? tableName = '',
    String? facilityAdminMail = '',
    String? defaultRoleId = '',
    String? ids = '',
    String? requesttype = '',
    String? conditioncode = '',
    String? name = '',
    String? firstname = '',
    String? lastname = '',
    String? email = '',
    String? mobileNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "requesttype": "${requesttype}",
  "refreshToken": "${refreshToken}",
  "tableName": "${tableName}",
  "facilityAdminMail": "${facilityAdminMail}",
  "defaultRoleId": "${defaultRoleId}",
  "ids": "${ids}",
  "conditioncode": "${conditioncode}",
  "name": "${name}",
  "firstname": "${firstname}",
  "lastname": "${lastname}",
  "email": "${email}",
  "mobile_number": "${mobileNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NGetData',
      apiUrl: 'https://api.kennarhealth.com/getData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$[:].json.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ids(dynamic response) => (getJsonField(
        response,
        r'''$[:].json.m_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? alldata(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class SAdminAllFacilitiesCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? tableName = '',
    String? facilityAdminMail = '',
    String? defaultRoleId = '',
    String? ids = '',
    String? requesttype = '',
    String? conditioncode = '',
    String? name = '',
    String? firstname = '',
    String? lastname = '',
    String? email = '',
    String? mobileNumber = '',
    String? orderBy = '',
  }) async {
    final ffApiRequestBody = '''
{
  "requesttype": "${requesttype}",
  "refreshToken": "${refreshToken}",
  "tableName": "${tableName}",
  "facilityAdminMail": "${facilityAdminMail}",
  "defaultRoleId": "${defaultRoleId}",
  "ids": "${ids}",
  "conditioncode": "${conditioncode}",
  "name": "${name}",
  "firstname": "${firstname}",
  "lastname": "${lastname}",
  "email": "${email}",
  "mobile_number": "${mobileNumber}",
  "order_by": "${orderBy}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sAdminAllFacilities',
      apiUrl: 'https://api.kennarhealth.com/sAdminAllFacilities',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class PatientAppointmentsCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? firstName = '',
    String? lastName = '',
    String? middleName = '',
    String? phoneNumber = '',
    String? emailAddress = '',
    String? city = '',
    String? state = '',
    String? country = '',
    String? providerName = '',
    String? providerId = '',
    String? departmentName = '',
    String? date = '',
    String? time = '',
    String? formstep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firstName": "${firstName}",
  "refreshToken": "${refreshToken}",
  "lastName": "${lastName}",
  "middleName": "${middleName}",
  "emailAddress": "${emailAddress}",
  "phoneNumber": "${phoneNumber}",
  "city": "${city}",
  "state": "${state}",
  "country": "${country}",
  "providerName": "${providerName}",
  "providerId": "${providerId}",
  "departmentName": "${departmentName}",
  "date": "${date}",
  "time": "${time}",
  "formstep": "${formstep}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patientAppointments',
      apiUrl: 'https://api.kennarhealth.com/patientAppointments',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SendInvitationmailCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? tableName = '',
    String? facilityAdminMail = '',
    String? defaultRoleId = '',
    String? ids = '',
    String? requesttype = '',
    String? conditioncode = '',
    String? name = '',
    String? firstname = '',
    String? lastname = '',
    String? email = '',
    String? mobileNumber = '',
    String? middlename = '',
    String? gender = '',
    String? npi = '',
    String? npiType = '',
    String? status = '',
    String? address1 = '',
    String? address2 = '',
    String? city = '',
    String? state = '',
    String? country = '',
    String? telephoneNum = '',
  }) async {
    final ffApiRequestBody = '''
{
  "requesttype": "${requesttype}",
  "refreshToken": "${refreshToken}",
  "tableName": "${tableName}",
  "facilityAdminMail": "${facilityAdminMail}",
  "defaultRoleId": "${defaultRoleId}",
  "ids": "${ids}",
  "conditioncode": "${conditioncode}",
  "name": "${name}",
  "firstname": "${firstname}",
  "lastname": "${lastname}",
  "email": "${email}",
  "mobile_number": "${mobileNumber}",
  "middlename": "${middlename}",
  "gender": "${gender}",
  "npi": "${npi}",
  "npi_type": "${npiType}",
  "status": "${status}",
  "address1": "${address1}",
  "address2": "${address2}",
  "city": "${city}",
  "state": "${state}",
  "country": "${country}",
  "telephone_num": "${telephoneNum}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendInvitationmail',
      apiUrl: 'https://api.kennarhealth.com/sendInvitationmail',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NGetTableMetaDataCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? tableName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "tableName": "${tableName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NGetTableMetaData',
      apiUrl: 'https://api.kennarhealth.com/getTableMetaData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NRegisterUserCall {
  static Future<ApiCallResponse> call({
    String? loginId = '',
    String? password = '',
    String? applicationId = '',
    String? defaultRoleId = '',
    String? npiNumber = '',
    String? npiType = '',
    String? city = '',
    String? firstName = '',
    String? middleName = '',
    String? lastName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "loginId": "${loginId}",
  "password": "${password}",
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "npiNumber": ${npiNumber},
  "npiType": "${npiType}",
  "city": "${city}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "middleName": "${middleName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NRegisterUser',
      apiUrl: 'https://api.kennarhealth.com/registerUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class KnPatientDetailsCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
    String? fid = '',
    String? ids = '',
    String? facility = '',
    String? facilityIds = '',
    String? status = '',
    String? address = '',
    String? hieconsent = '',
    List<String>? facilityidsList,
    String? legal1 = '',
    String? legal2 = '',
  }) async {
    final facilityids = _serializeList(facilityidsList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "type": "${type}",
  "fid": "${fid}",
  "ids": "${ids}",
  "facility": "${facility}",
  "facilityIds": "${facilityIds}",
  "status": "${status}",
  "address": "${address}",
  "hieconsent": "${hieconsent}",
  "facilityids": ${facilityids},
  "legal1": "${legal1}",
  "legal2": "${legal2}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'knPatientDetails',
      apiUrl: 'https://api.kennarhealth.com/knPatientDetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allDataList(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      ) as List?;
}

class NpiNumberCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
    String? npiNumber = '',
    String? firstName = '',
    String? lastName = '',
    String? phoneNum = '',
    String? status = '',
    String? email = '',
    String? ids = '',
    String? address = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "type": "${type}",
  "npiNumber": "${npiNumber}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "phoneNum": "${phoneNum}",
  "status": "${status}",
  "email": "${email}",
  "ids": "${ids}",
  "address": "${address}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'npiNumber',
      apiUrl: 'https://api.kennarhealth.com/npiNumber',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InviteProviderFacilityCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
    String? npiNumber = '',
    String? firstName = '',
    String? lastName = '',
    String? country = '',
    String? state = '',
    String? step = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "type": "${type}",
  "npiNumber": "${npiNumber}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "country": "${country}",
  "state": "${state}",
  "step": "${step}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inviteProviderFacility',
      apiUrl: 'https://api.kennarhealth.com/inviteProviderFacility',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allData(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class KManagePhysicianCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
    String? npiNumber = '',
    String? firstName = '',
    String? lastName = '',
    String? middleName = '',
    String? npiType = '',
    int? id,
    String? dis = '',
    String? status = '',
    String? roleId = '',
    String? mobileNumber = '',
    String? address1 = '',
    String? address2 = '',
    String? country = '',
    String? province = '',
    String? city = '',
    String? postalCode = '',
    String? gender = '',
  }) async {
    final ffApiRequestBody = '''
{
"firstName":"${firstName}",
"lastName":"${lastName}",
"middleName": "${middleName}",
"gender":"${gender}",
"npiNumber":"${npiNumber}",
"npiType":"${npiType}",
"id":${id},
"dis":"${dis}",
"status":"${status}",
"refreshToken" : "${refreshToken}",
"roleId" : "${roleId}",
"mobileNumber" : "${mobileNumber}",
"address1" : "${address1}",
"address2" : "${address2}",
"country" : "${country}",
"province" : "${province}",
"city" : "${city}",
"postalCode": "${postalCode}",
"gender":"${gender}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'KManagePhysician',
      apiUrl: 'https://api.kennarhealth.com/managePhysicianDetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class KManagePhysicianCopyCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? type = '',
    String? npiNumber = '',
    String? firstName = '',
    String? lastName = '',
    String? middleName = '',
    String? npiType = '',
    int? id,
    String? dis = '',
    String? status = '',
    String? roleId = '',
    String? mobileNumber = '',
    String? address1 = '',
    String? address2 = '',
    String? country = '',
    String? province = '',
    String? city = '',
    String? postalCode = '',
    String? gender = '',
  }) async {
    final ffApiRequestBody = '''
{
"firstName":"${firstName}",
"lastName":"${lastName}",
"middleName": "${middleName}",
"gender":"${gender}",
"npiNumber":"${npiNumber}",
"npiType":"${npiType}",
"id":${id},
"dis":"${dis}",
"status":"${status}",
"refreshToken" : "${refreshToken}",
"roleId" : "${roleId}",
"mobileNumber" : "${mobileNumber}",
"address1" : "${address1}",
"address2" : "${address2}",
"country" : "${country}",
"province" : "${province}",
"city" : "${city}",
"postalCode": "${postalCode}",
"gender":"${gender}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'KManagePhysician Copy',
      apiUrl: 'https://api.kennarhealth.com/managePhysicianDetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNPICall {
  static Future<ApiCallResponse> call({
    int? number,
    double? version = 2.1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getNPI',
      apiUrl: 'https://npiregistry.cms.hhs.gov/api',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'number': number,
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateChannelCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createChannel',
      apiUrl: 'https://api-admin.kennarhealth.com/api/v1/channels.create',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'name': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NkennarChatCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? email = '',
    String? formstep = '',
    String? userName = '',
    String? applicationId = '',
    String? defaultRoleId = '',
    String? channelName = '',
    String? password = '',
    String? name = '',
    String? roomId = '',
    String? userId = '',
    String? xAuthToken = '',
    String? xUserId = '',
    List<String>? providerIdList,
    String? jobName = '',
    String? frequency = '',
    String? startDate = '',
    String? endDate = '',
    String? jobAlias = '',
    String? executionTime = '',
    String? id = '',
    String? filepath = '',
    List<String>? idlistList,
  }) async {
    final providerId = _serializeList(providerIdList);
    final idlist = _serializeList(idlistList);

    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}",
  "email": "${email}",
  "formstep": "${formstep}",
  "userName": "${userName}",
  "applicationId": "${applicationId}",
  "defaultRoleId": "${defaultRoleId}",
  "channelName": "${channelName}",
  "password": "${password}",
  "name": "${name}",
  "room_id": "${roomId}",
  "user_id": "${userId}",
  "x_auth_token": "${xAuthToken}",
  "x_user_id": "${xUserId}",
  "provider_id": ${providerId},
  "job_name": "${jobName}",
  "frequency": "${frequency}",
  "start_date": "${startDate}",
  "end_date": "${endDate}",
  "job_alias": "${jobAlias}",
  "execution_time": "${executionTime}",
  "id": "${id}",
  "filpath": "${filepath}",
  "idlist": ${idlist}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NkennarChat',
      apiUrl: 'https://api.kennarhealth.com/NkennarChat',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
