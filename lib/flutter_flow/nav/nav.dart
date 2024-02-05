import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/Svg.svg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : PatientDashboardWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/Svg.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PatientDashboardWidget(),
        ),
        FFRoute(
          name: 'patient_All_facilities',
          path: '/patientAllFacilities',
          builder: (context, params) => PatientAllFacilitiesWidget(),
        ),
        FFRoute(
          name: 'patient_Selected_facilities',
          path: '/ptmf',
          builder: (context, params) => PatientSelectedFacilitiesWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/Login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'kennar_enrol_01',
          path: '/penroll',
          builder: (context, params) => KennarEnrol01Widget(),
        ),
        FFRoute(
          name: 'kennar_otp_email',
          path: '/otp',
          builder: (context, params) => KennarOtpEmailWidget(
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Patient_Dashboard',
          path: '/ptdb',
          builder: (context, params) => PatientDashboardWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patientProfile1',
          path: '/patientProfile1',
          builder: (context, params) => PatientProfile1Widget(),
        ),
        FFRoute(
          name: 'patient_link_email',
          path: '/patientLinkEmail',
          builder: (context, params) => PatientLinkEmailWidget(),
        ),
        FFRoute(
          name: 'newIssue',
          path: '/newIssue',
          builder: (context, params) => NewIssueWidget(),
        ),
        FFRoute(
          name: 'issueList',
          path: '/issueList',
          builder: (context, params) => IssueListWidget(),
        ),
        FFRoute(
          name: 'issue_tracking_new_form',
          path: '/issueTrackingNewForm',
          builder: (context, params) => IssueTrackingNewFormWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'issue_tracking_data_descrepency',
          path: '/issueTrackingDataDescrepency',
          builder: (context, params) => IssueTrackingDataDescrepencyWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'issue_tracking_appointment_01',
          path: '/issueTrackingAppointment01',
          builder: (context, params) => IssueTrackingAppointment01Widget(),
        ),
        FFRoute(
          name: 'issue_tracking_appointment_02',
          path: '/issueTrackingAppointment02',
          builder: (context, params) => IssueTrackingAppointment02Widget(),
        ),
        FFRoute(
          name: 'issue_tracking_appointment_03',
          path: '/issueTrackingAppointment03',
          builder: (context, params) => IssueTrackingAppointment03Widget(),
        ),
        FFRoute(
          name: 'issue_tracking_appointment_04',
          path: '/issueTrackingAppointment04',
          builder: (context, params) => IssueTrackingAppointment04Widget(
            dis: params.getParam('dis', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'issue_tracking_listing_mob',
          path: '/issueTrackingListingMob',
          builder: (context, params) => IssueTrackingListingMobWidget(),
        ),
        FFRoute(
          name: 'review_insurance',
          path: '/ptpdb',
          builder: (context, params) => ReviewInsuranceWidget(),
        ),
        FFRoute(
          name: 'insurancelist',
          path: '/ptpmd',
          builder: (context, params) => InsurancelistWidget(),
        ),
        FFRoute(
          name: 'loadingscreen',
          path: '/ptpcc',
          builder: (context, params) => LoadingscreenWidget(),
        ),
        FFRoute(
          name: 'RecordsReview',
          path: '/ptpat',
          builder: (context, params) => RecordsReviewWidget(),
        ),
        FFRoute(
          name: 'errorInsurance',
          path: '/errorInsurance',
          builder: (context, params) => ErrorInsuranceWidget(),
        ),
        FFRoute(
          name: 'ProviderAllChatsnew',
          path: '/ptcm',
          builder: (context, params) => ProviderAllChatsnewWidget(
            pageName: params.getParam('pageName', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ProviderAllChatsnewmobile',
          path: '/providerAllChatsnewmobile',
          builder: (context, params) => ProviderAllChatsnewmobileWidget(
            pageName: params.getParam('pageName', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'PatientCareAnswerList',
          path: '/ptcg',
          builder: (context, params) => PatientCareAnswerListWidget(
            patientId: params.getParam('patientId', ParamType.String),
            patientName: params.getParam('patientName', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'kennar_enrollAll_02',
          path: '/proenroll',
          builder: (context, params) => KennarEnrollAll02Widget(
            firstName: params.getParam('firstName', ParamType.String),
            lastName: params.getParam('lastName', ParamType.String),
            dob: params.getParam('dob', ParamType.String),
            gender: params.getParam('gender', ParamType.String),
            street: params.getParam('street', ParamType.String),
            state: params.getParam('state', ParamType.String),
            city: params.getParam('city', ParamType.String),
            zipcode: params.getParam('zipcode', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'sa_networkaccessaudit',
          path: '/audit',
          builder: (context, params) => SaNetworkaccessauditWidget(
            requestType: params.getParam('requestType', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patientEncounterDetails',
          path: '/patientEncounterDetails',
          builder: (context, params) => PatientEncounterDetailsWidget(
            count: params.getParam('count', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'KennarConnect',
          path: '/pttcc',
          builder: (context, params) => KennarConnectWidget(
            firstName: params.getParam('firstName', ParamType.String),
            lastName: params.getParam('lastName', ParamType.String),
            dob: params.getParam('dob', ParamType.String),
            gender: params.getParam('gender', ParamType.String),
            street: params.getParam('street', ParamType.String),
            state: params.getParam('state', ParamType.String),
            city: params.getParam('city', ParamType.String),
            zipcode: params.getParam('zipcode', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patientCareDetails',
          path: '/patientCareDetails',
          builder: (context, params) => PatientCareDetailsWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patientAllEvents',
          path: '/patientAllEvents',
          builder: (context, params) => PatientAllEventsWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patientAllMedication',
          path: '/patientAllMedication',
          builder: (context, params) => PatientAllMedicationWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'insurance_All_facilities',
          path: '/insuranceAllFacilities',
          builder: (context, params) => InsuranceAllFacilitiesWidget(),
        ),
        FFRoute(
          name: 'providerPatientHIE',
          path: '/providerPatientHIE',
          builder: (context, params) => ProviderPatientHIEWidget(
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patient_doc',
          path: '/patientDoc',
          builder: (context, params) => PatientDocWidget(
            firstname: params.getParam('firstname', ParamType.String),
            lastname: params.getParam('lastname', ParamType.String),
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'patientMedList',
          path: '/patientMedList',
          builder: (context, params) => PatientMedListWidget(),
        ),
        FFRoute(
          name: 'patientAllTimeline',
          path: '/patientAllTimeline',
          builder: (context, params) => PatientAllTimelineWidget(
            pageName: params.getParam('pageName', ParamType.String),
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ViewPatientDoc',
          path: '/viewPatientDoc',
          builder: (context, params) => ViewPatientDocWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'kennar_enrol_03',
          path: '/kennar_enrol_03',
          builder: (context, params) => KennarEnrol03Widget(),
        ),
        FFRoute(
          name: 'kennar_enrol_04',
          path: '/kennar_enrol_04',
          builder: (context, params) => KennarEnrol04Widget(),
        ),
        FFRoute(
          name: 'NetworkSearchByOrg',
          path: '/networkSearchByOrg',
          builder: (context, params) => NetworkSearchByOrgWidget(),
        ),
        FFRoute(
          name: 'patient_All_facilities_new',
          path: '/patientAllFacilitiesNew',
          builder: (context, params) => PatientAllFacilitiesNewWidget(),
        ),
        FFRoute(
          name: 'patient_Selected_facilities_new',
          path: '/patientSelectedFacilitiesNew',
          builder: (context, params) => PatientSelectedFacilitiesNewWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
