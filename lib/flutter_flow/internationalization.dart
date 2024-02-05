import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? esText = '',
  }) =>
      [enText, frText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // patient_All_facilities
  {
    'sq87tqdx': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'btwkrph6': {
      'en': 'Facilities',
      'es': '',
      'fr': '',
    },
    'sl559c24': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'lm3avqlw': {
      'en': 'Kennar Facilities',
      'es': '',
      'fr': '',
    },
    '97s2qrtj': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    'qudmisbx': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'xjf9unsw': {
      'en': 'Network Facilities',
      'es': '',
      'fr': '',
    },
    'b7dhmgk6': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'wn21ebmp': {
      'en': 'Facilities',
      'es': '',
      'fr': '',
    },
    'm7a3fvw9': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    '3dqk9618': {
      'en': 'Individual',
      'es': '',
      'fr': '',
    },
    'vlg2ziq5': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    'ordmcm8e': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patient_Selected_facilities
  {
    'f81nbar2': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'y1l5v21y': {
      'en': 'Health Care Facilities',
      'es': '',
      'fr': '',
    },
    'oxmfycka': {
      'en': 'Review your Healthcare Facilities',
      'es': '',
      'fr': '',
    },
    'ootj2e24': {
      'en': 'Last updated on ',
      'es': '',
      'fr': '',
    },
    'c6cb7ntg': {
      'en': 'Mapped Facilities',
      'es': '',
      'fr': '',
    },
    '3nqls2ds': {
      'en': 'Individual',
      'es': '',
      'fr': '',
    },
    'bp1l6d2u': {
      'en': 'Individual',
      'es': '',
      'fr': '',
    },
    'lr00p00m': {
      'en': 'Please select facilities by clicking Add Hospital',
      'es': '',
      'fr': '',
    },
    'g0r7j7tk': {
      'en': 'Add Facility',
      'es': '',
      'fr': '',
    },
    'nxww7yey': {
      'en': 'Save',
      'es': '',
      'fr': '',
    },
    'b8u9p8yu': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // Login
  {
    'pwadhrpv': {
      'en': 'Login',
      'es': '',
      'fr': '',
    },
    'rt5of3xj': {
      'en':
          'Kennar makes it easier for you to always be connected, and always feel safe.',
      'es': '',
      'fr': '',
    },
    'x7ivr76q': {
      'en': 'Phone Number',
      'es': '',
      'fr': '',
    },
    'h2hr19i1': {
      'en': 'Enter phone number',
      'es': '',
      'fr': '',
    },
    'ioha1az5': {
      'en': 'or',
      'es': '',
      'fr': '',
    },
    '16k4842k': {
      'en': 'Email ID',
      'es': '',
      'fr': '',
    },
    'juvin08g': {
      'en': 'Enter  Email ID',
      'es': '',
      'fr': '',
    },
    'icub5px0': {
      'en': 'phone number is required',
      'es': '',
      'fr': '',
    },
    '0pc87s7m': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'fe6baq6u': {
      'en': 'Email address is required',
      'es': '',
      'fr': '',
    },
    '0rxyzbgj': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '9kqp296e': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'tcsr4quz': {
      'en': 'By continuing, you agree to the ',
      'es': '',
      'fr': '',
    },
    '2vmguebi': {
      'en': 'terms of services ',
      'es': '',
      'fr': '',
    },
    'g4w66jea': {
      'en': 'and the ',
      'es': '',
      'fr': '',
    },
    'oivbpxcv': {
      'en': 'privacy policy ',
      'es': '',
      'fr': '',
    },
    'gm2mnxsf': {
      'en': 'of the Kennar App.',
      'es': '',
      'fr': '',
    },
    '3udxuys3': {
      'en': 'v1.26_03',
      'es': '',
      'fr': '',
    },
    '1ougq9dk': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // kennar_enrol_01
  {
    'd5fffup2': {
      'en': 'Enroll',
      'es': '',
      'fr': '',
    },
    'yye8pxwm': {
      'en': 'First Name',
      'es': '',
      'fr': '',
    },
    'zkc1u6mv': {
      'en': 'Enter first name',
      'es': '',
      'fr': '',
    },
    'osgyk3fg': {
      'en': 'Last Name',
      'es': '',
      'fr': '',
    },
    'cro0x7b8': {
      'en': 'Enter last name',
      'es': '',
      'fr': '',
    },
    '2uqs9d1k': {
      'en': 'Date of Birth',
      'es': '',
      'fr': '',
    },
    'kpufcviu': {
      'en': 'January',
      'es': '',
      'fr': '',
    },
    's1442n9h': {
      'en': 'February',
      'es': '',
      'fr': '',
    },
    'qby4xqyu': {
      'en': 'March',
      'es': '',
      'fr': '',
    },
    'u3qchan3': {
      'en': 'April',
      'es': '',
      'fr': '',
    },
    '91opilvw': {
      'en': 'May',
      'es': '',
      'fr': '',
    },
    'xsgfin4u': {
      'en': 'June',
      'es': '',
      'fr': '',
    },
    'se5hjorf': {
      'en': 'July',
      'es': '',
      'fr': '',
    },
    'olphby7g': {
      'en': 'August',
      'es': '',
      'fr': '',
    },
    'wp5vdlw3': {
      'en': 'September',
      'es': '',
      'fr': '',
    },
    'f5wekytt': {
      'en': 'October',
      'es': '',
      'fr': '',
    },
    'qn0gj0sz': {
      'en': 'November',
      'es': '',
      'fr': '',
    },
    '4v3cklw4': {
      'en': 'December',
      'es': '',
      'fr': '',
    },
    'g1pf1c1k': {
      'en': 'Month',
      'es': '',
      'fr': '',
    },
    'e9xasym7': {
      'en': '01',
      'es': '',
      'fr': '',
    },
    '5elj9iiz': {
      'en': '02',
      'es': '',
      'fr': '',
    },
    '4f6c4dwe': {
      'en': '03',
      'es': '',
      'fr': '',
    },
    '760x96o3': {
      'en': '04',
      'es': '',
      'fr': '',
    },
    '03av4ta6': {
      'en': '05',
      'es': '',
      'fr': '',
    },
    'snmt96of': {
      'en': '06',
      'es': '',
      'fr': '',
    },
    'pkc3ocpo': {
      'en': '07',
      'es': '',
      'fr': '',
    },
    'wfcz8lsp': {
      'en': '08',
      'es': '',
      'fr': '',
    },
    'gl3i0in8': {
      'en': '09',
      'es': '',
      'fr': '',
    },
    'ztpy2k2f': {
      'en': '10',
      'es': '',
      'fr': '',
    },
    'duu0jcyw': {
      'en': '11',
      'es': '',
      'fr': '',
    },
    'ddiudvq1': {
      'en': '12',
      'es': '',
      'fr': '',
    },
    'x43yzlot': {
      'en': '13',
      'es': '',
      'fr': '',
    },
    'hsm2caub': {
      'en': '14',
      'es': '',
      'fr': '',
    },
    'a2taswyd': {
      'en': '15',
      'es': '',
      'fr': '',
    },
    'ne6mmava': {
      'en': '16',
      'es': '',
      'fr': '',
    },
    'cw367uba': {
      'en': '17',
      'es': '',
      'fr': '',
    },
    'igada3b7': {
      'en': '18',
      'es': '',
      'fr': '',
    },
    'b7dvrxha': {
      'en': '19',
      'es': '',
      'fr': '',
    },
    'ox0f8bf5': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'jpe57hnc': {
      'en': '21',
      'es': '',
      'fr': '',
    },
    '9ylvj3hs': {
      'en': '22',
      'es': '',
      'fr': '',
    },
    'nwhiyhva': {
      'en': '23',
      'es': '',
      'fr': '',
    },
    'cyp4p9qx': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'rn271rer': {
      'en': '25',
      'es': '',
      'fr': '',
    },
    'w912w8kl': {
      'en': '26',
      'es': '',
      'fr': '',
    },
    'k8d6zurm': {
      'en': '27',
      'es': '',
      'fr': '',
    },
    'zhgm15em': {
      'en': '28',
      'es': '',
      'fr': '',
    },
    's3m1io60': {
      'en': '29',
      'es': '',
      'fr': '',
    },
    'o3zmviuf': {
      'en': '30',
      'es': '',
      'fr': '',
    },
    'klt8ft3g': {
      'en': '31',
      'es': '',
      'fr': '',
    },
    'q6jinrvu': {
      'en': 'Date',
      'es': '',
      'fr': '',
    },
    'wmw4t8r9': {
      'en': '1995',
      'es': '',
      'fr': '',
    },
    'ru2fljbv': {
      'en': '1996',
      'es': '',
      'fr': '',
    },
    '1y7y1jo5': {
      'en': '1997',
      'es': '',
      'fr': '',
    },
    'xrlwg36s': {
      'en': '1998',
      'es': '',
      'fr': '',
    },
    'fg5h3y0a': {
      'en': '1999',
      'es': '',
      'fr': '',
    },
    'ur01k74f': {
      'en': '2000',
      'es': '',
      'fr': '',
    },
    '0e8ztfy7': {
      'en': '2001',
      'es': '',
      'fr': '',
    },
    'dxsc5knk': {
      'en': '2002',
      'es': '',
      'fr': '',
    },
    'qkilvw6i': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    'iwfrumse': {
      'en': 'Enter year',
      'es': '',
      'fr': '',
    },
    'pjn19m0x': {
      'en': 'Gender',
      'es': '',
      'fr': '',
    },
    'll4hpwvn': {
      'en': 'Male',
      'es': '',
      'fr': '',
    },
    'azi8loqu': {
      'en': 'Female',
      'es': '',
      'fr': '',
    },
    's8knfsq7': {
      'en': 'Other',
      'es': '',
      'fr': '',
    },
    '4sz2fp7i': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'ivule7gq': {
      'en': 'First name is required',
      'es': '',
      'fr': '',
    },
    'mmcvt2ld': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '71mbro3i': {
      'en': 'Last name is required',
      'es': '',
      'fr': '',
    },
    'waaju148': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'vokx35uf': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // kennar_otp_email
  {
    'yideony1': {
      'en': 'Login',
      'es': '',
      'fr': '',
    },
    '3a8q6fm5': {
      'en':
          'Kennar makes it easier for you to always be connected, and always feel safe.',
      'es': '',
      'fr': '',
    },
    '65ccrwc9': {
      'en': 'Change Phone Number?',
      'es': '',
      'fr': '',
    },
    'c4bpydku': {
      'en': 'Change Phone Number?',
      'es': '',
      'fr': '',
    },
    'a015jtfy': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    '4u0aq48d': {
      'en': 'Please enter only one character',
      'es': '',
      'fr': '',
    },
    '1le59nan': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'yeej641l': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'bhnps75r': {
      'en': 'Please enter only one character',
      'es': '',
      'fr': '',
    },
    '2oi0h8fu': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'ys86eb6q': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'n042b3i7': {
      'en': 'Please enter only one character',
      'es': '',
      'fr': '',
    },
    '6o8786xs': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'jwk5ay6x': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'yqcvrt8p': {
      'en': 'Please enter only one character',
      'es': '',
      'fr': '',
    },
    'p1tasvmh': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '3ueu3q6y': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'o66zhm69': {
      'en': 'Please enter only one character',
      'es': '',
      'fr': '',
    },
    'elj5o9q4': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'ec9xhp9o': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'n4hmd1m5': {
      'en': 'Please enter only one character',
      'es': '',
      'fr': '',
    },
    'if7xj0za': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'u2gdsrmm': {
      'en': 'Didn\'t receive the OTP?',
      'es': '',
      'fr': '',
    },
    'vgkp88ie': {
      'en': 'Resend.',
      'es': '',
      'fr': '',
    },
    'k88ye5ot': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'wp38pa9v': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // Patient_Dashboard
  {
    'vzu0d7dl': {
      'en': 'Your care team',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    'gdacckhu': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    'wvqxcu1y': {
      'en': 'Send a message',
      'es': '',
      'fr': '',
    },
    'ihr7tpu8': {
      'en': 'Voice call',
      'es': '',
      'fr': '',
    },
    'osd6yd1t': {
      'en': 'Your care team details will be updated soon',
      'es': '',
      'fr': '',
    },
    'x51i11i8': {
      'en': 'How are you feeling today?',
      'es': '¿Cómo te sientes hoy?',
      'fr': 'Comment vous sentez-vous aujourd\'hui?',
    },
    'wk9du23p': {
      'en': 'Connect patient',
      'es': '',
      'fr': '',
    },
    'jarcclw5': {
      'en': 'Events:',
      'es': '',
      'fr': '',
    },
    '9w7v6bs9': {
      'en': 'Upcoming',
      'es': '',
      'fr': '',
    },
    '858pm8uq': {
      'en': 'Past ',
      'es': '',
      'fr': '',
    },
    'd0e9js92': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    'y8qk9wre': {
      'en': 'No events are availble yet!',
      'es': '',
      'fr': '',
    },
    'upwu2s99': {
      'en': 'Vitals',
      'es': '',
      'fr': '',
    },
    'jwsp9gyq': {
      'en': 'Oxygen',
      'es': '',
      'fr': '',
    },
    'hk6w10cp': {
      'en': 'Heart Rate',
      'es': '',
      'fr': '',
    },
    '4ynws495': {
      'en': 'Body Temp.',
      'es': '',
      'fr': '',
    },
    'r7s9i6c2': {
      'en': 'Blood Pressure',
      'es': '',
      'fr': '',
    },
    '8tvvr1pv': {
      'en': 'Average Readings',
      'es': '',
      'fr': '',
    },
    'nb0he2d3': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    'qijaa2o3': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    'pyg5vy07': {
      'en': 'Medication',
      'es': 'Medicamento',
      'fr': 'Médicament',
    },
    'ffh04srn': {
      'en': 'Date',
      'es': 'Dosis',
      'fr': 'Dose',
    },
    'ta7la0ym': {
      'en': 'No medication details available yet!',
      'es': 'No se encontraron tabletas',
      'fr': 'Aucune tablette trouvée',
    },
    'jt9gna8p': {
      'en': 'Diabetes',
      'es': '',
      'fr': '',
    },
    'qot42h1f': {
      'en': 'Avg. Reading',
      'es': '',
      'fr': '',
    },
    's9z5clcb': {
      'en': 'Target Score',
      'es': '',
      'fr': '',
    },
    'hotsqbru': {
      'en': 'Comorbidities',
      'es': '',
      'fr': '',
    },
    'rpsardoz': {
      'en': 'Adherence',
      'es': '',
      'fr': '',
    },
    'wfex7vpt': {
      'en': 'Blood Pressure',
      'es': '',
      'fr': '',
    },
    'omu8xq7s': {
      'en': 'Avg. Reading',
      'es': '',
      'fr': '',
    },
    'utbhvq2t': {
      'en': 'Comorbidites',
      'es': '',
      'fr': '',
    },
    'bbtokaic': {
      'en': 'Adherence',
      'es': '',
      'fr': '',
    },
    'db0cwdau': {
      'en': 'Biometrics',
      'es': '',
      'fr': '',
    },
    'pcyyznil': {
      'en': 'Hemoglobin Readings',
      'es': '',
      'fr': '',
    },
    'f3xffvk6': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    'ky100z9c': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'ilgx7ong': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ter481ao': {
      'en': 'Cholesterol Readings',
      'es': '',
      'fr': '',
    },
    'echc7pnl': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    'w7morp2j': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'ga4hhrgd': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'n79anzwd': {
      'en': 'Timeline',
      'es': '',
      'fr': '',
    },
    '7ofmgirs': {
      'en': 'Last 5 Encounters',
      'es': '',
      'fr': '',
    },
    'cr2j9a7p': {
      'en': 'Select',
      'es': '',
      'fr': '',
    },
    'btsunr8s': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'xoo3qraj': {
      'en': 'View Details',
      'es': '',
      'fr': '',
    },
    'depwuepe': {
      'en': 'Chronic',
      'es': '',
      'fr': '',
    },
    '4evr0wi2': {
      'en': 'Acute',
      'es': '',
      'fr': '',
    },
    'sizo7xu2': {
      'en': 'Others',
      'es': '',
      'fr': '',
    },
    '9e21dzqb': {
      'en': '|\n|\n|\n|',
      'es': '',
      'fr': '',
    },
    'vjnbrsez': {
      'en': 'No details available yet!',
      'es': '',
      'fr': '',
    },
    'rij5gh2q': {
      'en': 'Documents',
      'es': '',
      'fr': '',
    },
    '2kfsebas': {
      'en': 'Add New',
      'es': '',
      'fr': '',
    },
    't0svhj3x': {
      'en': 'Application.pdf',
      'es': '',
      'fr': '',
    },
    'b8ivho3h': {
      'en': 'No document details are available yet!',
      'es': '',
      'fr': '',
    },
    's3gx1lq4': {
      'en': 'Analyses',
      'es': '',
      'fr': '',
    },
    'rzhy4emv': {
      'en': 'No  details are available yet!',
      'es': '',
      'fr': '',
    },
    'hq55h2cp': {
      'en': 'Your care team',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    '34ng7t1j': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    '71zdase7': {
      'en': 'Send a message',
      'es': '',
      'fr': '',
    },
    'nq0wsyhu': {
      'en': 'Voice call',
      'es': '',
      'fr': '',
    },
    'i3i4gyxk': {
      'en': 'Your care team details will be updated soon',
      'es': '',
      'fr': '',
    },
    'opv3odar': {
      'en': 'How are you feeling today?',
      'es': '¿Cómo te sientes hoy?',
      'fr': 'Comment vous sentez-vous aujourd\'hui?',
    },
    '44r1wfds': {
      'en': 'Connect patient',
      'es': '',
      'fr': '',
    },
    'tfyu3wuf': {
      'en': 'Events:',
      'es': '',
      'fr': '',
    },
    'vcoigri6': {
      'en': 'Upcoming',
      'es': '',
      'fr': '',
    },
    'xvhbpjkv': {
      'en': 'Past ',
      'es': '',
      'fr': '',
    },
    '6xgsij1u': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    'r5k3ctkj': {
      'en': 'No events are availble yet!',
      'es': '',
      'fr': '',
    },
    '8iugnt0o': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    'gczln7nd': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    'tr3ysbw7': {
      'en': 'Vitals',
      'es': '',
      'fr': '',
    },
    '9rd4fs2j': {
      'en': 'Oxygen',
      'es': '',
      'fr': '',
    },
    'm0nwhark': {
      'en': 'Heart Rate',
      'es': '',
      'fr': '',
    },
    'x87k0nkb': {
      'en': 'Body Temp.',
      'es': '',
      'fr': '',
    },
    'ao23zgne': {
      'en': 'Blood Pressure',
      'es': '',
      'fr': '',
    },
    'i3w7rujy': {
      'en': 'Last 5 readings avg.',
      'es': '',
      'fr': '',
    },
    'swetsszv': {
      'en': 'Diabetes',
      'es': '',
      'fr': '',
    },
    'n87s44rw': {
      'en': 'Avg. Reading',
      'es': '',
      'fr': '',
    },
    'yi781g83': {
      'en': 'Target Score',
      'es': '',
      'fr': '',
    },
    'w88cypgl': {
      'en': 'Comorbidites',
      'es': '',
      'fr': '',
    },
    'vkfk4e9p': {
      'en': 'Adherence',
      'es': '',
      'fr': '',
    },
    '63oebrxj': {
      'en': 'Blood Pressure',
      'es': '',
      'fr': '',
    },
    '5x62iunh': {
      'en': 'Avg. Reading',
      'es': '',
      'fr': '',
    },
    'gu353tzf': {
      'en': 'Comorbidites',
      'es': '',
      'fr': '',
    },
    '5fv0f2te': {
      'en': 'Adherence',
      'es': '',
      'fr': '',
    },
    '4gphyl15': {
      'en': 'Biometrics',
      'es': '',
      'fr': '',
    },
    'pimyr608': {
      'en': 'Hemoglobin Readings',
      'es': '',
      'fr': '',
    },
    'wplcyu8q': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    'ityq07ws': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'gwthlp26': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '0lypxgm1': {
      'en': 'Cholesterol Readings',
      'es': '',
      'fr': '',
    },
    '5so0a14e': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    '32i0xmvi': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'adoujnc7': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'y981951e': {
      'en': 'Timeline',
      'es': '',
      'fr': '',
    },
    'tiycra6c': {
      'en': 'View Details',
      'es': 'Próximos Eventos',
      'fr': 'évènements à venir',
    },
    '5ozve4rc': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    'fvqa6e8h': {
      'en': 'Last 5 Encounters',
      'es': '',
      'fr': '',
    },
    'v6vzzo4w': {
      'en': 'Select',
      'es': '',
      'fr': '',
    },
    'r7p6vooi': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '6cmxbd45': {
      'en': 'Chronic',
      'es': '',
      'fr': '',
    },
    '40d9qaww': {
      'en': 'Acute',
      'es': '',
      'fr': '',
    },
    '36rvd8nb': {
      'en': 'Others',
      'es': '',
      'fr': '',
    },
    'c55ic89b': {
      'en': '|\n|\n|\n|',
      'es': '',
      'fr': '',
    },
    'cdd4ikp5': {
      'en': 'No details available yet!',
      'es': '',
      'fr': '',
    },
    'dydqzqg7': {
      'en': 'Documents',
      'es': '',
      'fr': '',
    },
    'mlj63web': {
      'en': 'Application.pdf',
      'es': '',
      'fr': '',
    },
    'svsnqywa': {
      'en': 'No documents available yet!',
      'es': '',
      'fr': '',
    },
    's2s6dvdk': {
      'en': 'Analyses',
      'es': '',
      'fr': '',
    },
    'sp31okoy': {
      'en': 'No  details are available yet!',
      'es': '',
      'fr': '',
    },
    'g6f7ccb8': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // patientProfile1
  {
    'ygmeto4w': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '9fuefz6r': {
      'en': 'My Profile',
      'es': '',
      'fr': '',
    },
    '4tx13n4q': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'ukjvqcqk': {
      'en': 'My Profile',
      'es': '',
      'fr': '',
    },
    'psezh3iw': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    '9rellmxf': {
      'en': 'Gender',
      'es': '',
      'fr': '',
    },
    'dpktw0yl': {
      'en': 'Phone Number',
      'es': '',
      'fr': '',
    },
    'im1fn53x': {
      'en': 'Date of Birth',
      'es': '',
      'fr': '',
    },
    'igjjmi3y': {
      'en': 'Occupation',
      'es': '',
      'fr': '',
    },
    'aen2di7a': {
      'en': 'Address',
      'es': '',
      'fr': '',
    },
    'xyooytua': {
      'en': 'City',
      'es': '',
      'fr': '',
    },
    'htg03fvq': {
      'en': 'State',
      'es': '',
      'fr': '',
    },
    'svah2rmz': {
      'en': 'Country',
      'es': '',
      'fr': '',
    },
    'x12qq3o2': {
      'en': 'Zip Code',
      'es': '',
      'fr': '',
    },
    'qrtqqk7g': {
      'en': 'Vitals',
      'es': '',
      'fr': '',
    },
    'fda7g1y6': {
      'en': 'Oxygen',
      'es': '',
      'fr': '',
    },
    'ow9uz56y': {
      'en': 'Heart Rate',
      'es': '',
      'fr': '',
    },
    'pusrcxiw': {
      'en': 'Body Temp.',
      'es': '',
      'fr': '',
    },
    'zopg0hv7': {
      'en': 'Blood Pressure',
      'es': '',
      'fr': '',
    },
    '0pvp8yuz': {
      'en': 'Last 5 readings avg.',
      'es': '',
      'fr': '',
    },
    'dhwr774d': {
      'en': 'Insurance',
      'es': '',
      'fr': '',
    },
    'bcjjgkaa': {
      'en': 'Health Insurance',
      'es': '',
      'fr': '',
    },
    'u0mq2m8d': {
      'en': 'Policy Number',
      'es': '',
      'fr': '',
    },
    'l6yq8lqi': {
      'en': 'Valid till',
      'es': '',
      'fr': '',
    },
    'ej0sqy1t': {
      'en': 'No insurance details available yet!',
      'es': '',
      'fr': '',
    },
    '4hcezp94': {
      'en': 'Biometrics',
      'es': '',
      'fr': '',
    },
    'kbeqoj8a': {
      'en': 'Hemoglobin Readings',
      'es': '',
      'fr': '',
    },
    'vdw72n8p': {
      'en': '2023',
      'es': '',
      'fr': '',
    },
    'uvbfk3z9': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    'clv0lf69': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'q3yoza2n': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'bz9p7aix': {
      'en': 'Cholesterol Readings',
      'es': '',
      'fr': '',
    },
    'zt3w9m8u': {
      'en': '2023',
      'es': '',
      'fr': '',
    },
    '1iwfc1fi': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    '6g42nmat': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'wjvaxb9s': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rqmkjbl3': {
      'en': 'Documents',
      'es': '',
      'fr': '',
    },
    'dtqdh76o': {
      'en': 'Application.pdf',
      'es': '',
      'fr': '',
    },
    '07ypqsvk': {
      'en': 'No documents available yet!',
      'es': '',
      'fr': '',
    },
    'ikleiaxk': {
      'en': 'Analyses',
      'es': '',
      'fr': '',
    },
    '22at7ono': {
      'en': 'No  details are available yet!',
      'es': '',
      'fr': '',
    },
    'udaqa1ni': {
      'en': 'Timeline',
      'es': '',
      'fr': '',
    },
    'zazb95wr': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    'h6y5e3dd': {
      'en': 'Last 5 Encounters',
      'es': '',
      'fr': '',
    },
    '7co18m7s': {
      'en': 'Select',
      'es': '',
      'fr': '',
    },
    'a41dxhw8': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'sw9e1hdx': {
      'en': 'Chronic',
      'es': '',
      'fr': '',
    },
    '228mwvhf': {
      'en': 'Acute',
      'es': '',
      'fr': '',
    },
    'nwixww8r': {
      'en': 'Others',
      'es': '',
      'fr': '',
    },
    'uhww1poh': {
      'en': '|\n|\n|\n|',
      'es': '',
      'fr': '',
    },
    'zz04hstc': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    'w7ph6s7l': {
      'en': 'Last 5',
      'es': '',
      'fr': '',
    },
    'm3bxjqqd': {
      'en': 'Last 5',
      'es': '',
      'fr': '',
    },
    '5fffv0c4': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'zyt1v8sb': {
      'en': 'No medication details available yet!',
      'es': '',
      'fr': '',
    },
    'vfekraak': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    'by0z07cr': {
      'en': 'Gender',
      'es': '',
      'fr': '',
    },
    '3m14xax6': {
      'en': 'Phone Number',
      'es': '',
      'fr': '',
    },
    'ib7knifm': {
      'en': 'Birth Date',
      'es': '',
      'fr': '',
    },
    'sp6o9ur0': {
      'en': 'Occupation',
      'es': '',
      'fr': '',
    },
    'd2ctd2vl': {
      'en': 'Address',
      'es': '',
      'fr': '',
    },
    'l7pyk7zb': {
      'en': 'City',
      'es': '',
      'fr': '',
    },
    'tlrh63nh': {
      'en': 'State',
      'es': '',
      'fr': '',
    },
    'e8nivdn5': {
      'en': 'Country',
      'es': '',
      'fr': '',
    },
    'a6vd1k8q': {
      'en': 'Zipcode',
      'es': '',
      'fr': '',
    },
    '379wlemu': {
      'en': 'Vitals',
      'es': '',
      'fr': '',
    },
    'bw5qrucf': {
      'en': 'View Details',
      'es': '',
      'fr': '',
    },
    'nzns9awz': {
      'en': 'Oxygen',
      'es': '',
      'fr': '',
    },
    'bw8lv5rm': {
      'en': 'Heart Rate',
      'es': '',
      'fr': '',
    },
    'wudgtbu5': {
      'en': 'Body Temp.',
      'es': '',
      'fr': '',
    },
    'a718fndj': {
      'en': 'Blood Pressure',
      'es': '',
      'fr': '',
    },
    'wrw4eaaa': {
      'en': 'Average Readings',
      'es': '',
      'fr': '',
    },
    'hslrqx8p': {
      'en': 'Insurance',
      'es': '',
      'fr': '',
    },
    'lk07jhi9': {
      'en': 'Health Insurance',
      'es': '',
      'fr': '',
    },
    'ndf42a4b': {
      'en': 'Policy Number',
      'es': '',
      'fr': '',
    },
    'c2ypuyer': {
      'en': 'Valid till',
      'es': '',
      'fr': '',
    },
    'qw08odla': {
      'en': 'No insurance details available yet!',
      'es': '',
      'fr': '',
    },
    'yavfdd92': {
      'en': 'Timeline',
      'es': '',
      'fr': '',
    },
    'mvlstgwf': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    't74rnnvy': {
      'en': 'Last 5 Encounters',
      'es': '',
      'fr': '',
    },
    'we38c8rz': {
      'en': 'Select',
      'es': '',
      'fr': '',
    },
    'jl6j859u': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'xynralzy': {
      'en': 'Chronic',
      'es': '',
      'fr': '',
    },
    '0wfwbhnw': {
      'en': 'Acute',
      'es': '',
      'fr': '',
    },
    'ln2eaaab': {
      'en': 'Others',
      'es': '',
      'fr': '',
    },
    '1e8cqv7e': {
      'en': '|\n|\n|\n|',
      'es': '',
      'fr': '',
    },
    'dbwdjjs1': {
      'en': 'Biometrics',
      'es': '',
      'fr': '',
    },
    'n28qy0oh': {
      'en': 'Hemoglobin Readings',
      'es': '',
      'fr': '',
    },
    '2mzrb9mk': {
      'en': '2023',
      'es': '',
      'fr': '',
    },
    'zh9cxay2': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    'i4h5jqhm': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'tbmecdql': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '1pk0tdyo': {
      'en': 'Cholesterol Readings',
      'es': '',
      'fr': '',
    },
    '4no9umco': {
      'en': '2023',
      'es': '',
      'fr': '',
    },
    'n5rv5svs': {
      'en': '2021',
      'es': '',
      'fr': '',
    },
    'rqoidiin': {
      'en': '2022',
      'es': '',
      'fr': '',
    },
    'avuvpoxo': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'o6jtt6tl': {
      'en': 'Documents',
      'es': '',
      'fr': '',
    },
    '8mgeewfk': {
      'en': 'Add New',
      'es': '',
      'fr': '',
    },
    'yvs5wkqr': {
      'en': 'Application.pdf',
      'es': '',
      'fr': '',
    },
    '1yggl2p7': {
      'en': 'No document details are available yet!',
      'es': '',
      'fr': '',
    },
    '4rx2h8d0': {
      'en': 'Analyses',
      'es': '',
      'fr': '',
    },
    'bxn64iid': {
      'en': 'No  details are available yet!',
      'es': '',
      'fr': '',
    },
    'iy7u713w': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'ztfvkfa5': {
      'en': 'Save',
      'es': '',
      'fr': '',
    },
    'm4exvmay': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patient_link_email
  {
    'rkkck4c9': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'girn2d3c': {
      'en': 'Patient Linking',
      'es': '',
      'fr': '',
    },
    'vwcis958': {
      'en': 'Enter email.',
      'es': '',
      'fr': '',
    },
    'phm6cu5p': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'c44z2vgl': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'ljwgpwtu': {
      'en': 'Check For Details',
      'es': '',
      'fr': '',
    },
    'e1vri0n0': {
      'en': 'My Requests',
      'es': '',
      'fr': '',
    },
    'dsho6bv2': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    '93u8fkr2': {
      'en': 'Emails',
      'es': '',
      'fr': '',
    },
    'a3xtwiw6': {
      'en': 'Request Date',
      'es': '',
      'fr': '',
    },
    '5jg0ponv': {
      'en': 'Request Status',
      'es': '',
      'fr': '',
    },
    '5doasq0j': {
      'en': 'Accept/\nReject date',
      'es': '',
      'fr': '',
    },
    'mdy6uqy7': {
      'en': 'Reason For \nRejection',
      'es': '',
      'fr': '',
    },
    'ok77dqrs': {
      'en': 'Hospital/ \nER Visits ',
      'es': '',
      'fr': '',
    },
    'wtc8lz4f': {
      'en': 'Chat\nTime ',
      'es': '',
      'fr': '',
    },
    'b0153j75': {
      'en': 'Edit Column 8',
      'es': '',
      'fr': '',
    },
    'oqztj8le': {
      'en': 'Actions',
      'es': '',
      'fr': '',
    },
    'xfxbu16p': {
      'en': 'Delink',
      'es': '',
      'fr': '',
    },
    '3dawcnhh': {
      'en': 'Rows per page',
      'es': '',
      'fr': '',
    },
    'rldspde6': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'o4pog1jo': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'hrrpzv2k': {
      'en': '40',
      'es': '',
      'fr': '',
    },
    'rn3ilmpp': {
      'en': '60',
      'es': '',
      'fr': '',
    },
    '2l4p21x2': {
      'en': '80',
      'es': '',
      'fr': '',
    },
    '11p2ja7u': {
      'en': '100',
      'es': '',
      'fr': '',
    },
    '3nwss2ge': {
      'en': 'Requests for me',
      'es': '',
      'fr': '',
    },
    'ok6uqd2m': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    '3yh6081k': {
      'en': 'Email',
      'es': '',
      'fr': '',
    },
    'verb8pcs': {
      'en': 'Status',
      'es': '',
      'fr': '',
    },
    's11w3h2h': {
      'en': 'Accepted/Rejected Date',
      'es': '',
      'fr': '',
    },
    'mlkvfnxq': {
      'en': 'Reason \nFor Rejection',
      'es': '',
      'fr': '',
    },
    'fdz2ugh1': {
      'en': 'Actions',
      'es': '',
      'fr': '',
    },
    'ob4ztotz': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    '5czz5ovz': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'srmt50y4': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'w4whmhfj': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    'wlh0tzda': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'hto5mufd': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    '4x6dn4i2': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    '5tsf54np': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'e9vr52ag': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    'phw8yfla': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'u9gh0f9m': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'ublkat2t': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    '2hh9f9dm': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'm5p3ire1': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    'oxprjy9t': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'mbt27oje': {
      'en': 'Email',
      'es': '',
      'fr': '',
    },
    'fnxzg0k7': {
      'en': 'Status',
      'es': '',
      'fr': '',
    },
    'pyle1v03': {
      'en': 'Request Status',
      'es': '',
      'fr': '',
    },
    'ognx13k7': {
      'en': 'Edit Column 4',
      'es': '',
      'fr': '',
    },
    '3evfzpqn': {
      'en': 'Accepted/\nRejected date',
      'es': '',
      'fr': '',
    },
    'o1p2zqui': {
      'en': 'Reason For \nRejection',
      'es': '',
      'fr': '',
    },
    'yh5asut8': {
      'en': 'Hospital/ \nER Visits ',
      'es': '',
      'fr': '',
    },
    '8mo6h40n': {
      'en': 'Chat\nTime ',
      'es': '',
      'fr': '',
    },
    '1cdxgs9n': {
      'en': 'Edit Column 8',
      'es': '',
      'fr': '',
    },
    'uko5ofew': {
      'en': 'Actions',
      'es': '',
      'fr': '',
    },
    'socsvoy1': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    'e0chqdxp': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    '3q6ibbef': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    '7rb24fog': {
      'en': 'Rows per page',
      'es': '',
      'fr': '',
    },
    '0i3f0bbx': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    '24ca46fb': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'irrurfm8': {
      'en': '40',
      'es': '',
      'fr': '',
    },
    '2kaziy0x': {
      'en': '60',
      'es': '',
      'fr': '',
    },
    '32wnw8jd': {
      'en': '80',
      'es': '',
      'fr': '',
    },
    'hqe5kwsa': {
      'en': '100',
      'es': '',
      'fr': '',
    },
    '2opnevf9': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'ohq07zt7': {
      'en': 'Patient Linking',
      'es': '',
      'fr': '',
    },
    'dxh7fo37': {
      'en': 'Enter email.',
      'es': '',
      'fr': '',
    },
    '1zb7y2ms': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    '57xqpzsd': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'due4a109': {
      'en': 'Check For Details',
      'es': '',
      'fr': '',
    },
    'mes4bbps': {
      'en': 'My Requests',
      'es': '',
      'fr': '',
    },
    'ck4kqi4l': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'wlbdaf4m': {
      'en': 'Email : ',
      'es': '',
      'fr': '',
    },
    'rtr684r4': {
      'en': 'Requested Date : ',
      'es': '',
      'fr': '',
    },
    'h6dh19do': {
      'en': 'Request Status : ',
      'es': '',
      'fr': '',
    },
    'cla20ci9': {
      'en': 'Accept/Reject Date : ',
      'es': '',
      'fr': '',
    },
    'hoa26c3v': {
      'en': 'Reason For Rejection',
      'es': '',
      'fr': '',
    },
    '7q5pmo54': {
      'en': 'Delink',
      'es': '',
      'fr': '',
    },
    'bov80tna': {
      'en': 'No new requests are found!',
      'es': '',
      'fr': '',
    },
    'gai9sv9e': {
      'en': 'No matching records are found!',
      'es': '',
      'fr': '',
    },
    'q1fl06w6': {
      'en': 'Requests for me',
      'es': '',
      'fr': '',
    },
    '12o4sd4m': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'lapzc3h6': {
      'en': 'Email',
      'es': '',
      'fr': '',
    },
    'nbjv0za0': {
      'en': 'Status',
      'es': '',
      'fr': '',
    },
    'haejcd8a': {
      'en': 'Accepted/Rejected Date',
      'es': '',
      'fr': '',
    },
    'dgx292x7': {
      'en': 'Reason \nFor Rejection',
      'es': '',
      'fr': '',
    },
    'abtye8ej': {
      'en': 'Actions',
      'es': '',
      'fr': '',
    },
    '352v19sn': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    '9jbi9kd1': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'hnzvz7wl': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    '170kf50f': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    've0mhaue': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'v2awoj9t': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'ig5e9jji': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    'h0a5adpn': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'y6y98a00': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    '6whn27ss': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    '4twsa47v': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'heivnjza': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    'wxcbbgy4': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    'b6818vbo': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    'ox13zvvx': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    '8irgwols': {
      'en': 'Email : ',
      'es': '',
      'fr': '',
    },
    'tzfe3a76': {
      'en': 'Request Status : ',
      'es': '',
      'fr': '',
    },
    'lq4j4o6c': {
      'en': 'Accept/Reject Date : ',
      'es': '',
      'fr': '',
    },
    'xi7whm3a': {
      'en': 'Reason For Rejection',
      'es': '',
      'fr': '',
    },
    'iuea0w8r': {
      'en': 'Reject',
      'es': '',
      'fr': '',
    },
    'r5grz2s6': {
      'en': 'Accept',
      'es': '',
      'fr': '',
    },
    '3wjvx13c': {
      'en': 'View',
      'es': '',
      'fr': '',
    },
    'a0lrj46k': {
      'en': 'No new requests are found!',
      'es': '',
      'fr': '',
    },
    'txdmoeud': {
      'en': 'No matching records are found!',
      'es': '',
      'fr': '',
    },
    'o8htfixg': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // newIssue
  {
    'uplrcxsu': {
      'en': 'New Request',
      'es': '',
      'fr': '',
    },
    'zxmuj6qw': {
      'en': 'Category',
      'es': '',
      'fr': '',
    },
    'cvxyzpt4': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'ypyrfcjz': {
      'en': 'Provider',
      'es': '',
      'fr': '',
    },
    '6z0wj1zc': {
      'en': 'Staff',
      'es': '',
      'fr': '',
    },
    'su9cvfw9': {
      'en': 'Please select category',
      'es': '',
      'fr': '',
    },
    'bx4z0jxn': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'taykckai': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'ezpctwz8': {
      'en': 'Select Patient',
      'es': '',
      'fr': '',
    },
    '19sgvlwh': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'tow4w24q': {
      'en': 'Get Facilities',
      'es': '',
      'fr': '',
    },
    'sem8i1z9': {
      'en': 'Facility',
      'es': '',
      'fr': '',
    },
    'ru5t3atv': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'bm1x7c8h': {
      'en': 'Select Facility',
      'es': '',
      'fr': '',
    },
    'a59md470': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '3uewrrkb': {
      'en': 'Provider',
      'es': '',
      'fr': '',
    },
    'h3xp5ab1': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'nknp2jhh': {
      'en': 'Provider',
      'es': '',
      'fr': '',
    },
    'ncb0xakw': {
      'en': 'Staff',
      'es': '',
      'fr': '',
    },
    '7bwv21c6': {
      'en': 'Please select provider',
      'es': '',
      'fr': '',
    },
    'cqcdr59g': {
      'en': 'Facility',
      'es': '',
      'fr': '',
    },
    'maus6phm': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'irz0acne': {
      'en': 'Select Facility',
      'es': '',
      'fr': '',
    },
    'vw9mc2y8': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '1g7eduwr': {
      'en': 'Get Patient',
      'es': '',
      'fr': '',
    },
    'detwrt65': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'zf7yeflt': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'im1981ue': {
      'en': 'Select patient',
      'es': '',
      'fr': '',
    },
    'uuhp64h4': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'ank0cjjz': {
      'en': 'Date ',
      'es': '',
      'fr': '',
    },
    'we64lfgc': {
      'en': '  Select Date',
      'es': '',
      'fr': '',
    },
    'wtj2mmon': {
      'en': 'Appointment Type',
      'es': '',
      'fr': '',
    },
    'c86igt3x': {
      'en': 'Regular Check up',
      'es': '',
      'fr': '',
    },
    '4sqvquog': {
      'en': 'Emergency',
      'es': '',
      'fr': '',
    },
    'io4ablx6': {
      'en': 'Select Appointment Type',
      'es': '',
      'fr': '',
    },
    '7ayrfd2q': {
      'en': 'Description ',
      'es': '',
      'fr': '',
    },
    '1sbj9psq': {
      'en': 'Enter brief description about request. ',
      'es': '',
      'fr': '',
    },
    'ubal8f7q': {
      'en': 'Please enter description.',
      'es': '',
      'fr': '',
    },
    'ow1m9vgb': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '85uo4zlx': {
      'en': 'Description ',
      'es': '',
      'fr': '',
    },
    'yg0jvpru': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'opj2jz8t': {
      'en': 'Submit',
      'es': '',
      'fr': '',
    },
    'musysgfp': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'ejiqf6ac': {
      'en': 'Submit',
      'es': '',
      'fr': '',
    },
    'lzlmqg5f': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // issueList
  {
    'jc67srgd': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'yx7pyhbp': {
      'en': 'Help',
      'es': '',
      'fr': '',
    },
    '9n3mnw3b': {
      'en': 'Open',
      'es': '',
      'fr': '',
    },
    'xwyy69fq': {
      'en': 'Filters',
      'es': '',
      'fr': '',
    },
    '8wyl6clf': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'kdojul0y': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    'ip5as11g': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '9zcncqj7': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'z7gbsvgp': {
      'en': 'Last 2 years',
      'es': '',
      'fr': '',
    },
    '6hs5m1lx': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'hx566955': {
      'en': 'Filters',
      'es': '',
      'fr': '',
    },
    'uly28kl9': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'c0hcw35x': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    '3y68ycvk': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'whmh4zy5': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'sdvstqgt': {
      'en': 'Last 2 years',
      'es': '',
      'fr': '',
    },
    'a1zege1o': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'jpv48xtf': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    'j1b540cn': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    'bw2kh1w4': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'cijvz4i3': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'y8ihuunz': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'jpay33ki': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    '0xbgpc16': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    '88uvhj4a': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    'q3i7zfd1': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'klvj2wea': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'sjlpm5u5': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'a6klgzyo': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    'eee0wyi5': {
      'en': 'No help is availble yet!',
      'es': '',
      'fr': '',
    },
    'dlzjv2kl': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    'szb6dfds': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    'r4b7bfrd': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'h2k2paad': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    '5pc400gn': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'kwavzsh6': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    'kfbidiki': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    '1g8q6o5d': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    '6gcgegww': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'jqtxugoz': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    '6kkme4fx': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    '4ozwqivl': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    'rv1rhagc': {
      'en': 'No help is availble yet!',
      'es': '',
      'fr': '',
    },
    '79msohdz': {
      'en': 'Closed',
      'es': '',
      'fr': '',
    },
    'u9pbse8r': {
      'en': 'See image',
      'es': '',
      'fr': '',
    },
    'm3sionkk': {
      'en': 'Export',
      'es': '',
      'fr': '',
    },
    'jj91efyf': {
      'en': 'Export All',
      'es': '',
      'fr': '',
    },
    'pksm6gcd': {
      'en': 'No help is available yet!',
      'es': '',
      'fr': '',
    },
    '0q71yste': {
      'en': 'Description',
      'es': '',
      'fr': '',
    },
    '4fmmuply': {
      'en': 'OK',
      'es': '',
      'fr': '',
    },
    'hexmseu0': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // issue_tracking_new_form
  {
    'vrvygcu5': {
      'en': 'Help',
      'es': '',
      'fr': '',
    },
    'aw1qeb0u': {
      'en': 'Data Discrepancy',
      'es': '',
      'fr': '',
    },
    'zq8jk963': {
      'en': 'Data Consent',
      'es': '',
      'fr': '',
    },
    '8skfkojg': {
      'en': 'Appointment',
      'es': '',
      'fr': '',
    },
    'v5o6yny9': {
      'en': 'List of New Request',
      'es': '',
      'fr': '',
    },
    'md7fyrs1': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // issue_tracking_data_descrepency
  {
    '3x4xhbol': {
      'en': 'Data Discrepancy',
      'es': '',
      'fr': '',
    },
    '4ftidyql': {
      'en': 'Data Consent',
      'es': '',
      'fr': '',
    },
    'fav4hgrw': {
      'en':
          'Your information is secure. You have full access and control at all times.',
      'es': '',
      'fr': '',
    },
    'rsokjz95': {
      'en': 'How can we help you?',
      'es': '',
      'fr': '',
    },
    'egy3gukp': {
      'en': 'Write here...',
      'es': '',
      'fr': '',
    },
    'fle3n535': {
      'en': 'Description is required.',
      'es': '',
      'fr': '',
    },
    'mhppuvhv': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'djwmwh9i': {
      'en': 'Continue to dashboard',
      'es': '',
      'fr': '',
    },
    'rqt7u0ot': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // issue_tracking_appointment_01
  {
    'dxdm64tb': {
      'en': 'Appointment',
      'es': '',
      'fr': '',
    },
    'dg5un6d5': {
      'en': 'Request appointment',
      'es': '',
      'fr': '',
    },
    'beq6wqu6': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'ksz1cl3h': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    '3k3h1kmr': {
      'en': 'Select Patient',
      'es': '',
      'fr': '',
    },
    '89fldixm': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '53wzaye9': {
      'en': 'Get Facilities',
      'es': '',
      'fr': '',
    },
    'c0c9m61h': {
      'en': 'Facility',
      'es': '',
      'fr': '',
    },
    'e9y5dnu8': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    '2w2funya': {
      'en': 'Select Facility',
      'es': '',
      'fr': '',
    },
    'shfyf46l': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'xhq7h69q': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'x5ckeb54': {
      'en': 'Facility',
      'es': '',
      'fr': '',
    },
    'jsscyoa9': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'bqcytr10': {
      'en': 'Select Facility',
      'es': '',
      'fr': '',
    },
    's8ed1mry': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    't3vxk4cr': {
      'en': 'Get Patient',
      'es': '',
      'fr': '',
    },
    '9qr4shpi': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'jukpvrlt': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'ih60str6': {
      'en': 'Select patient',
      'es': '',
      'fr': '',
    },
    '8s4wdkql': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'lz767gls': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'p2s2hao2': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // issue_tracking_appointment_02
  {
    '0lccvc90': {
      'en': 'Appointment',
      'es': '',
      'fr': '',
    },
    '5fwnv86y': {
      'en': 'Request appointment',
      'es': '',
      'fr': '',
    },
    'e22u45hy': {
      'en': 'Provider',
      'es': '',
      'fr': '',
    },
    'whaokms9': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    '4z87hrz4': {
      'en': 'Select Provider',
      'es': '',
      'fr': '',
    },
    'oc0xhnn2': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'td26wrxg': {
      'en': 'Appointment Type',
      'es': '',
      'fr': '',
    },
    '26gryzb3': {
      'en': 'Regular Check up',
      'es': '',
      'fr': '',
    },
    'g2t8v6u9': {
      'en': 'Emergency',
      'es': '',
      'fr': '',
    },
    'm2zx67e7': {
      'en': 'Select Appointment Type',
      'es': '',
      'fr': '',
    },
    'frfmdqdq': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'o7g6t1xn': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'f7w2qbb0': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // issue_tracking_appointment_03
  {
    'fdltu8bf': {
      'en': 'Appointment',
      'es': '',
      'fr': '',
    },
    '4jdszyqq': {
      'en': 'Request appointment',
      'es': '',
      'fr': '',
    },
    'a27s6xez': {
      'en': 'Date',
      'es': '',
      'fr': '',
    },
    'op4ksqp8': {
      'en': 'Select Date',
      'es': '',
      'fr': '',
    },
    'gg1usjje': {
      'en': 'Description ',
      'es': '',
      'fr': '',
    },
    'wsjpks2a': {
      'en': 'Enter brief description about request. ',
      'es': '',
      'fr': '',
    },
    'r9ho9sk6': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    '3u9yjdgc': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // issue_tracking_appointment_04
  {
    'jciio138': {
      'en': 'Request Sent!',
      'es': '',
      'fr': '',
    },
    '6v45gdn7': {
      'en': 'Appointment',
      'es': '',
      'fr': '',
    },
    '2sdjmnmf': {
      'en': 'Facility :',
      'es': '',
      'fr': '',
    },
    'gmacy8ux': {
      'en': 'Patient :',
      'es': '',
      'fr': '',
    },
    'o1pvss1u': {
      'en': 'Provider :',
      'es': '',
      'fr': '',
    },
    'l2n4vvt5': {
      'en': 'Date :',
      'es': '',
      'fr': '',
    },
    'g0p239yv': {
      'en': 'Request Appointment',
      'es': '',
      'fr': '',
    },
    '2myisj27': {
      'en': 'Go Back and Edit',
      'es': '',
      'fr': '',
    },
    '4ul7ap3f': {
      'en': 'Continue to Homepage',
      'es': '',
      'fr': '',
    },
    'i4nkqygc': {
      'en': 'Not sure? Modify appointment',
      'es': '',
      'fr': '',
    },
    'lxn0xbyo': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // issue_tracking_listing_mob
  {
    'hsrym0og': {
      'en': 'Help',
      'es': '',
      'fr': '',
    },
    'wgffne1t': {
      'en': 'Open',
      'es': '',
      'fr': '',
    },
    'wsrv1bce': {
      'en': 'Filters',
      'es': '',
      'fr': '',
    },
    'oentyv0a': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'mejj24oi': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    '19ctzsro': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'lxpn17m0': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'w5ujmtjh': {
      'en': 'Last 2 years',
      'es': '',
      'fr': '',
    },
    'yb605yii': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '58kdkkzb': {
      'en': 'Filters',
      'es': '',
      'fr': '',
    },
    'io2rsuex': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    '7me2wliw': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    'hhrk1r8n': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'nxe6a47g': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'qnhlzrlu': {
      'en': 'Last 2 years',
      'es': '',
      'fr': '',
    },
    '61yyczpu': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'ap6545kb': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    'lgwqrpvu': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    'awg73czo': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'tb8s0pqm': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'g8l8165p': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    '7v6hfvv9': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    '03qk6xpc': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    '7g247ug0': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    '6a0y7d8b': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'bep9fko8': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'alr0i6p7': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'anw1vtr2': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    '4j0iqsst': {
      'en': 'No help is availble yet!',
      'es': '',
      'fr': '',
    },
    'm56kbcrn': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    'iou17c0x': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    'mu8jbp5p': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'xjl78vsh': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'v7phln2j': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'olsw94ih': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    'wnaxgqjn': {
      'en': '...',
      'es': '',
      'fr': '',
    },
    'c1wmlohv': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    'mlj9311l': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'jm1oa5vv': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'eyc2k6nz': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'zoo0voc9': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
    '852uogvz': {
      'en': 'No help is availble yet!',
      'es': '',
      'fr': '',
    },
    '4ayf4iwk': {
      'en': 'Closed',
      'es': '',
      'fr': '',
    },
    'x4r6ay7x': {
      'en': 'See image',
      'es': '',
      'fr': '',
    },
    'zh15pa5e': {
      'en': 'Export',
      'es': '',
      'fr': '',
    },
    'zxhd7ya9': {
      'en': 'Export All',
      'es': '',
      'fr': '',
    },
    'c9mr5zty': {
      'en': 'No help is available yet!',
      'es': '',
      'fr': '',
    },
    'ube0uj21': {
      'en': 'Description',
      'es': '',
      'fr': '',
    },
    'xr48rrdm': {
      'en': 'OK',
      'es': '',
      'fr': '',
    },
    'n2xiylub': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // review_insurance
  {
    'syv4vcjf': {
      'en': 'Review your insurance',
      'es': '',
      'fr': '',
    },
    '3qkl1eog': {
      'en': 'Last updated on ',
      'es': '',
      'fr': '',
    },
    'em9f0ln0': {
      'en': 'Add Insurance Plan',
      'es': '',
      'fr': '',
    },
    '9avu2r41': {
      'en': 'Save',
      'es': '',
      'fr': '',
    },
    '2b5gnjei': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    '14zbsan7': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // insurancelist
  {
    'rxazp4bf': {
      'en': 'Insurance List',
      'es': '',
      'fr': '',
    },
    'r3hauz4j': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'xrciezbk': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'pf8lv6h5': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // loadingscreen
  {
    '7pc3cdfi': {
      'en': 'Just a moment!',
      'es': '',
      'fr': '',
    },
    '6vpbosm8': {
      'en':
          'We\'re taking you to your insurance platform\n  where you can sign in.',
      'es': '',
      'fr': '',
    },
    'xogi8nn6': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // RecordsReview
  {
    '1sgo4h3t': {
      'en': 'Records Retrived!',
      'es': '',
      'fr': '',
    },
    'gx3e9cx3': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // errorInsurance
  {
    'i6aubxfk': {
      'en': 'Oops!',
      'es': '',
      'fr': '',
    },
    'trco1os2': {
      'en': 'We couldn\'t retrieve your records.',
      'es': '',
      'fr': '',
    },
    '6hwy1i0w': {
      'en': 'Try again',
      'es': '',
      'fr': '',
    },
    '3a80cdin': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    '9qx7vvhh': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // ProviderAllChatsnew
  {
    '6nq9tnmg': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'k78efvz8': {
      'en': 'Chat',
      'es': '',
      'fr': '',
    },
    'ae47ilkp': {
      'en': 'Patient',
      'es': '',
      'fr': '',
    },
    'chp4jnq9': {
      'en': 'Team',
      'es': '',
      'fr': '',
    },
    '3curae7d': {
      'en': 'Option 1',
      'es': '',
      'fr': '',
    },
    'jcka8k4z': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    'wpo9j9v6': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'ej4pgf67': {
      'en': 'Team',
      'es': '',
      'fr': '',
    },
    'bc6r8ey0': {
      'en': 'Active',
      'es': '',
      'fr': '',
    },
    'q6gqliou': {
      'en': 'All Messages',
      'es': '',
      'fr': '',
    },
    'kd2v1vki': {
      'en': 'Archived',
      'es': '',
      'fr': '',
    },
    'v1omqsrd': {
      'en': 'All Messages',
      'es': '',
      'fr': '',
    },
    'ubtoqv9g': {
      'en': 'Inactive',
      'es': '',
      'fr': '',
    },
    '25k688j0': {
      'en': 'All Messages',
      'es': '',
      'fr': '',
    },
    'dpetjhkh': {
      'en': 'Unarchive',
      'es': '',
      'fr': '',
    },
    '7ovgd4xe': {
      'en': 'Archive',
      'es': '',
      'fr': '',
    },
    'lmkolowz': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // ProviderAllChatsnewmobile
  {
    'lw9k9dzv': {
      'en': 'Unarchive',
      'es': '',
      'fr': '',
    },
    'kxkyrs77': {
      'en': 'Archive',
      'es': '',
      'fr': '',
    },
    'q0762f8r': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // PatientCareAnswerList
  {
    'x7p6j2yh': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'wx22tr6y': {
      'en': 'Patients',
      'es': '',
      'fr': '',
    },
    'btz2xr2x': {
      'en': 'Care Gap Details',
      'es': '',
      'fr': '',
    },
    'e53pn4u9': {
      'en': 'My Questions',
      'es': '',
      'fr': '',
    },
    'ktobegeh': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'qrd4qeq3': {
      'en': 'Question',
      'es': '',
      'fr': '',
    },
    'fcjfbsrr': {
      'en': 'Answer',
      'es': '',
      'fr': '',
    },
    'z33vljyv': {
      'en': 'Remark',
      'es': '',
      'fr': '',
    },
    'np8dnntu': {
      'en': 'Last Encounter Date',
      'es': '',
      'fr': '',
    },
    'y3mr0xho': {
      'en': 'Next Encounter Date',
      'es': '',
      'fr': '',
    },
    'sllwcg6f': {
      'en': 'Rows per page',
      'es': '',
      'fr': '',
    },
    'xpl0hb3d': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'k5x3b4k2': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'n894yyvz': {
      'en': '40',
      'es': '',
      'fr': '',
    },
    '4a12rygi': {
      'en': '60',
      'es': '',
      'fr': '',
    },
    'et8jue1v': {
      'en': '80',
      'es': '',
      'fr': '',
    },
    'xkfqf15k': {
      'en': '100',
      'es': '',
      'fr': '',
    },
    'kn3yve6t': {
      'en': 'No questions are answered yet!',
      'es': '',
      'fr': '',
    },
    'n11phkeu': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '7jxeuidc': {
      'en': 'Patients',
      'es': '',
      'fr': '',
    },
    'o62krhfr': {
      'en': 'Care Gap Details',
      'es': '',
      'fr': '',
    },
    'yodtkpqs': {
      'en': 'My Questions',
      'es': '',
      'fr': '',
    },
    '2074587p': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'k4xjid1e': {
      'en': 'Question',
      'es': '',
      'fr': '',
    },
    'kvqpldz5': {
      'en': 'Answer',
      'es': '',
      'fr': '',
    },
    '2lg4lvom': {
      'en': 'Remarks',
      'es': '',
      'fr': '',
    },
    't1ls7dkq': {
      'en': 'Encounter\nDate',
      'es': '',
      'fr': '',
    },
    '4pp819p1': {
      'en': 'New Encounter \nDate',
      'es': '',
      'fr': '',
    },
    'bma89psh': {
      'en': 'Last Updated',
      'es': '',
      'fr': '',
    },
    'ygcrspk8': {
      'en': 'Rows per page',
      'es': '',
      'fr': '',
    },
    '5l3i1w4y': {
      'en': '7',
      'es': '',
      'fr': '',
    },
    'ia0ihyiu': {
      'en': '7',
      'es': '',
      'fr': '',
    },
    'eq04au55': {
      'en': '10',
      'es': '',
      'fr': '',
    },
    'r9684lmd': {
      'en': '25',
      'es': '',
      'fr': '',
    },
    '3cjh6p7s': {
      'en': '50',
      'es': '',
      'fr': '',
    },
    '5pdgq1j9': {
      'en': '100',
      'es': '',
      'fr': '',
    },
    'wlfa0omb': {
      'en': 'No questions are answered yet!',
      'es': '',
      'fr': '',
    },
    'oo1uawza': {
      'en': 'No details available for the requested input.',
      'es': '',
      'fr': '',
    },
    'zv94aza3': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // kennar_enrollAll_02
  {
    'mdbz6w8w': {
      'en': 'Terms & Conditions',
      'es': '',
      'fr': '',
    },
    '13j4xlhk': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'giakgxgj': {
      'en': 'I do not consent to this above the terms and conditions.',
      'es': '',
      'fr': '',
    },
    'ttwjg1s5': {
      'en': 'Privacy Policy.',
      'es': '',
      'fr': '',
    },
    's6bhii27': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // sa_networkaccessaudit
  {
    '4l10h973': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '2znpjwq4': {
      'en': 'Network Access Details',
      'es': '',
      'fr': '',
    },
    'm6xtw8qj': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'qzcchmk5': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    '6fgasjb6': {
      'en': 'Patient Name',
      'es': '',
      'fr': '',
    },
    'rw92ny4l': {
      'en': 'Initiated By',
      'es': '',
      'fr': '',
    },
    '2yzzkiho': {
      'en': 'Date',
      'es': '',
      'fr': '',
    },
    'nwsuhra2': {
      'en': 'Type',
      'es': '',
      'fr': '',
    },
    '3fbj18ce': {
      'en': 'Status',
      'es': '',
      'fr': '',
    },
    'lrxsrama': {
      'en': 'Action',
      'es': '',
      'fr': '',
    },
    'h8dy5nv7': {
      'en': 'Patient Name',
      'es': '',
      'fr': '',
    },
    '76tcsm79': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    'b0x6uxem': {
      'en': 'Initiated By',
      'es': '',
      'fr': '',
    },
    'pyezuww6': {
      'en': 'Facility Name',
      'es': '',
      'fr': '',
    },
    'ggo03r0a': {
      'en': 'Date',
      'es': '',
      'fr': '',
    },
    '7q56p8b1': {
      'en': 'Type',
      'es': '',
      'fr': '',
    },
    'z6n4jwc4': {
      'en': 'Hospital/ \nER Visits ',
      'es': '',
      'fr': '',
    },
    'en7avyu1': {
      'en': 'Chat\nTime ',
      'es': '',
      'fr': '',
    },
    '76w5nhvy': {
      'en': 'Status',
      'es': '',
      'fr': '',
    },
    '08odbs86': {
      'en': 'Action',
      'es': '',
      'fr': '',
    },
    'byv9dyn8': {
      'en': 'View Details',
      'es': '',
      'fr': '',
    },
    'qh69d9vn': {
      'en': 'Rows per page',
      'es': '',
      'fr': '',
    },
    'y8ra92a4': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'esg55udz': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'uyioy3lc': {
      'en': '40',
      'es': '',
      'fr': '',
    },
    'sfhujoyh': {
      'en': '60',
      'es': '',
      'fr': '',
    },
    '90c3fec0': {
      'en': '80',
      'es': '',
      'fr': '',
    },
    'azho19si': {
      'en': '100',
      'es': '',
      'fr': '',
    },
    'k70lk8ow': {
      'en': 'No data found!',
      'es': '',
      'fr': '',
    },
    'ted625u7': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patientEncounterDetails
  {
    '5aa5mwv0': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'g8dbqth7': {
      'en': 'My Encounter Details',
      'es': '',
      'fr': '',
    },
    'dv9w5f4l': {
      'en': 'Date                    :',
      'es': '',
      'fr': '',
    },
    'p4jtm5mw': {
      'en': 'Facility               :',
      'es': '',
      'fr': '',
    },
    'q96ke7oj': {
      'en': 'Provider             :',
      'es': '',
      'fr': '',
    },
    'ju45w1aw': {
      'en': 'Observation    :',
      'es': '',
      'fr': '',
    },
    'jmh0ftms': {
      'en': 'Diagnosis        :',
      'es': '',
      'fr': '',
    },
    'u709zput': {
      'en': 'Medication      :',
      'es': '',
      'fr': '',
    },
    '5qwfcnka': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // KennarConnect
  {
    'fxdgazv8': {
      'en': 'Connect with Kennar',
      'es': '',
      'fr': '',
    },
    '7fafpt8i': {
      'en':
          'We enable healthcare teams to deliver a seamless patient care journey.',
      'es': '',
      'fr': '',
    },
    'qaseybda': {
      'en': 'Your phone number',
      'es': '',
      'fr': '',
    },
    '1wsqhhw5': {
      'en': 'Opt In',
      'es': '',
      'fr': '',
    },
    'awvz25tp': {
      'en': 'Opt Out',
      'es': '',
      'fr': '',
    },
    'bgp1ccnn': {
      'en':
          'By providing your cell phone number to Kennar, you are agreeing to be contacted by or on behalf of Kennar at the telephone number provided, including text (SMS) messages to your cell phone and other wireless devices, and the use of an automatic telephone dialing system, artificial voice and prerecorded messages, to provide you with informational, marketing, and promotional materials relating to Kennar’s products and services. You may opt-out of receiving text (SMS) messages from Kennar at any time by replying with the word STOP from the mobile device receiving the messages. You need not provide this consent in order to purchase any products or services from Kennar. However, you acknowledge that opting out of receiving text (SMS) messages may impact your experience with the service(s) that rely on communications via text (SMS) messaging.',
      'es': '',
      'fr': '',
    },
    'bvtqmisa': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'on1qqqvg': {
      'en': 'Please enter valid phone number.',
      'es': '',
      'fr': '',
    },
    'kypukzkp': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'lzjsoyjg': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patientCareDetails
  {
    'bz77neto': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // patientAllEvents
  {
    'swpk5yu5': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'z71a667n': {
      'en': 'Events',
      'es': '',
      'fr': '',
    },
    '2znlf1gf': {
      'en': 'Events:',
      'es': '',
      'fr': '',
    },
    'horfw0h7': {
      'en': 'Upcoming',
      'es': '',
      'fr': '',
    },
    'bgy6raad': {
      'en': 'Past ',
      'es': '',
      'fr': '',
    },
    'o1t8e75s': {
      'en': 'No events are availble yet!',
      'es': '',
      'fr': '',
    },
    'i1m4beky': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // patientAllMedication
  {
    '052vz137': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'r3tthznn': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    'o6o4a2k6': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    'v51w49sa': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    '0hom2zlz': {
      'en': 'Date',
      'es': '',
      'fr': '',
    },
    '2c3cndsk': {
      'en': 'No medication details available yet!',
      'es': '',
      'fr': '',
    },
    '3p9zam23': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // insurance_All_facilities
  {
    'dxnrao9y': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'voum864p': {
      'en': 'Insurance',
      'es': '',
      'fr': '',
    },
    '459qjska': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'fsmpsbiy': {
      'en': 'My Insurance details',
      'es': '',
      'fr': '',
    },
    'gc1vj1dp': {
      'en': 'Health Insurance: ',
      'es': '',
      'fr': '',
    },
    'ae719u9c': {
      'en': 'Policy Number: ',
      'es': '',
      'fr': '',
    },
    's956n7ee': {
      'en': 'Valid till: ',
      'es': '',
      'fr': '',
    },
    '7ajpdejv': {
      'en': 'No insurance details are available yet!',
      'es': '',
      'fr': '',
    },
    'naxynjlz': {
      'en': 'Network ',
      'es': '',
      'fr': '',
    },
    'ifqi8hqm': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'yjpg9z45': {
      'en': 'Facilities',
      'es': '',
      'fr': '',
    },
    'aovu8j2n': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'b3q4ybtf': {
      'en': 'Individual',
      'es': '',
      'fr': '',
    },
    'w9v7pmq0': {
      'en': 'No Data',
      'es': '',
      'fr': '',
    },
    'pwbwi4va': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // providerPatientHIE
  {
    'ww147jt3': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'gw3ym4m6': {
      'en': 'HIE Consent',
      'es': '',
      'fr': '',
    },
    'veo0epuk': {
      'en': 'HIE Consent Form',
      'es': '',
      'fr': '',
    },
    '9srxxync': {
      'en': 'Patient Name',
      'es': '',
      'fr': '',
    },
    'rbr03tq8': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '3cass6nz': {
      'en': 'Enter patient name',
      'es': '',
      'fr': '',
    },
    'ncurf8j3': {
      'en': 'Patient Date of Birth',
      'es': '',
      'fr': '',
    },
    'v0pky3g9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '329j5f2q': {
      'en': 'Enter date of birth',
      'es': '',
      'fr': '',
    },
    '1v66ugth': {
      'en': 'Patient Id Number',
      'es': '',
      'fr': '',
    },
    'ptvx5z0v': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '31uz3fmw': {
      'en': 'Enter patient id number',
      'es': '',
      'fr': '',
    },
    'qlyrnv4q': {
      'en': ' Name of Patient\'s Legal Representative(if Applicable)',
      'es': '',
      'fr': '',
    },
    'g68aunpq': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rfjyv76a': {
      'en': 'Enter',
      'es': '',
      'fr': '',
    },
    'psc2mjaj': {
      'en': 'Relationship of Legal Representative to Patient (if Applicable)',
      'es': '',
      'fr': '',
    },
    'nykbby49': {
      'en': '',
      'es': '',
      'fr': '',
    },
    's32fujrs': {
      'en': 'Enter ',
      'es': '',
      'fr': '',
    },
    '64kimrz8': {
      'en': 'Your healthcare provider organization ',
      'es': '',
      'fr': '',
    },
    'qu035w5u': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    '7vp9xb9h': {
      'en':
          '(“Provider”) has partnered with Toothpicker Holdings Inc d/b/a Kennar Health (“Kennar Health”) ',
      'es': '',
      'fr': '',
    },
    'v5tk1lge': {
      'en':
          ' to support care management and care coordination for you and other patients as well as improve quality of health care.  By signing this consent form, your Provider, and Kennar Health, on behalf of your Provider, will have the ability to view and access your health information through a computerized system called a Health Information Exchange (“HIE”).  Currently, the HIEs Kennar Health and your Provider anticipate accessing include the following:  CommonWell Health Information Exchange (commonwellalliance.org), eHealth Exchange (ehealthexchange.org) and Carequality (carequality.org).  ',
      'es': '',
      'fr': '',
    },
    'nwvuw2x1': {
      'en':
          'You may also use this consent form to decide whether or not your Provider and Kennar Health, on behalf of your Provider, may share your health information to the HIEs listed above for the purposes described in the attached fact sheet.',
      'es': '',
      'fr': '',
    },
    '4mq8bzxe': {
      'en':
          'Your health information is private and cannot be given to other people without your permission under applicable state laws and U.S. laws and rules.  Your Provider, Kennar Health and other organizations that participate in the noted HIEs that can get and see your health information must obey all these laws.  They cannot give your information to other people unless you agree or the law says they can give the information to other people.  This is true if your health information is on a computer system or on paper.  Some laws cover care for HIV/AIDS, mental health records, and substance use disorder records.  ',
      'es': '',
      'fr': '',
    },
    'rtr2e1j8': {
      'en':
          'The choice you make in this consent form will NOT affect your ability to receive health care. The choice you make in this consent form does NOT allow health insurers to have access to your information for the purpose of deciding whether to provide you with health insurance coverage or pay your medical bills.',
      'es': '',
      'fr': '',
    },
    'eksjim1g': {
      'en': 'Your Consent Choice',
      'es': '',
      'fr': '',
    },
    'am2dgo7p': {
      'en':
          'I GIVE CONSENT for the Provider and Kennar Health, on behalf of my Provider, to get ALL my health information through the HIEs listed above to give me care or manage my care and to review and make the care of all patients better.I can change my mind and take back my consent at any time by signing a submitting a new Kennar Health Patient Information Access and Disclosure Through a HIE Consent Form with my new choice and giving it to my Provider.',
      'es': '',
      'fr': '',
    },
    '0jzqugso': {
      'en':
          'I DENY CONSENT for the Provider and Kennar Health, on behalf of my Provider, to access my health information through HIEs and deny consent for the Provider and Kennar Health, on behalf of my Provider, to share my health information that it cannot already share pursuant to 45 CFR Parts 160 and 164 (which are the rules referred to as “HIPAA”) and state law.',
      'es': '',
      'fr': '',
    },
    '4kemwpft': {
      'en': 'Acknowledgement of Understanding and Signature',
      'es': '',
      'fr': '',
    },
    'nhpig3cx': {
      'en':
          'I acknowledge and understand the terms of this consent form.  If I have questions about this consent form, I may contact my Provider or Kennar Health.  I have been provided and received a copy of this consent form.\n',
      'es': '',
      'fr': '',
    },
    'kjq22js2': {
      'en':
          'Details about the information accessed through a HIE and the consent process:',
      'es': '',
      'fr': '',
    },
    'xfachf92': {
      'en': '1.   How Your Information May be Used.',
      'es': '',
      'fr': '',
    },
    'xp4c26n7': {
      'en':
          'Your health information will be used only for the following healthcare services:',
      'es': '',
      'fr': '',
    },
    'bwirrhrd': {
      'en': 'Treatment Services.',
      'es': '',
      'fr': '',
    },
    'pc1weg5l': {
      'en': 'Provide you with medical treatment and related services.',
      'es': '',
      'fr': '',
    },
    'x6sy23cd': {
      'en': 'Insurance Eligibility Verification.',
      'es': '',
      'fr': '',
    },
    'a9hyaufp': {
      'en': 'Check whether you have health insurance and what it covers.',
      'es': '',
      'fr': '',
    },
    'v5p6tf3z': {
      'en': 'Care Management Activities.',
      'es': '',
      'fr': '',
    },
    's9kd5jbf': {
      'en':
          'These include assisting you in obtaining appropriate medical care, improving the quality of services provided to you, coordinating the provision of multiple health care services provided to you, or supporting you in following a plan of medical care.',
      'es': '',
      'fr': '',
    },
    '93rx31ov': {
      'en': 'Quality Improvement Activities.',
      'es': '',
      'fr': '',
    },
    'c7mclity': {
      'en':
          'Evaluate and improve the quality of medical care provided to you and all patients.',
      'es': '',
      'fr': '',
    },
    'o0qo81c9': {
      'en': '2.   What Types of Information about You Are Included.',
      'es': '',
      'fr': '',
    },
    'a9cfetsh': {
      'en':
          'If you give consent, your Provider and Kennar Health may access ALL of your electronic health information available through a HIE in which it participates as further discussed on the consent form. This includes information created before and after the date this form is signed. Your health records may include a history of illnesses or injuries you have had (like diabetes or a broken bone), test results (like X-rays or blood tests), and lists of medicines you have taken. This information may include sensitive health conditions, including but not limited to:',
      'es': '',
      'fr': '',
    },
    'bvtlw316': {
      'en': 'Substance use disorder and treatment',
      'es': '',
      'fr': '',
    },
    '292ljpmm': {
      'en': 'Sexually transmitted diseases',
      'es': '',
      'fr': '',
    },
    '57wcdtmx': {
      'en': 'Discharge summary',
      'es': '',
      'fr': '',
    },
    'wc0m84m5': {
      'en': 'Birth control and abortion (family planning)',
      'es': '',
      'fr': '',
    },
    'h56yhefz': {
      'en': 'Medication and Dosages',
      'es': '',
      'fr': '',
    },
    'tcri1i33': {
      'en': 'Employment Information',
      'es': '',
      'fr': '',
    },
    'c050t74c': {
      'en': 'Genetic(inherited diseases or tests)',
      'es': '',
      'fr': '',
    },
    'd7o1qrp3': {
      'en': 'Diagnostic Information',
      'es': '',
      'fr': '',
    },
    'phzjmgzz': {
      'en': 'Living Situation',
      'es': '',
      'fr': '',
    },
    '5fxymju6': {
      'en': 'HIV/AIDS',
      'es': '',
      'fr': '',
    },
    'qeo0a7vw': {
      'en': 'Allergies',
      'es': '',
      'fr': '',
    },
    '4o6in2ob': {
      'en': 'Social Supports',
      'es': '',
      'fr': '',
    },
    'b894725f': {
      'en': 'Mental health conditions',
      'es': '',
      'fr': '',
    },
    'yy8ckzuq': {
      'en': 'Substance use history summaries',
      'es': '',
      'fr': '',
    },
    'ecls7394': {
      'en': 'Claims Encounter Data',
      'es': '',
      'fr': '',
    },
    'o5falg3p': {
      'en': 'Clinical notes',
      'es': '',
      'fr': '',
    },
    '2957ooep': {
      'en': 'Lab Tests',
      'es': '',
      'fr': '',
    },
    'kuj77efi': {
      'en': '3.   Where Health Information About You Comes From.',
      'es': '',
      'fr': '',
    },
    'l82gh53r': {
      'en':
          'Information about you comes from places that have provided you with medical care or health insurance. These may include hospitals, physicians, pharmacies, clinical laboratories, health insurers, the Medicaid program, and other organizations that exchange health information electronically.',
      'es': '',
      'fr': '',
    },
    'f6ubujl0': {
      'en': '4.   Who May Access Information About You, If You Give Consent.',
      'es': '',
      'fr': '',
    },
    'h7cp2ef7': {
      'en':
          'The only people who can see your health information are those who you agree can get and see it, like your Provider and Kennar Health, and by the HIE to access information may access your health information through the HIE.',
      'es': '',
      'fr': '',
    },
    '8xf6szgs': {
      'en': '5.   Public Health and Organ Procurement Organization Access.',
      'es': '',
      'fr': '',
    },
    '86ti5cbz': {
      'en':
          'Federal, state or local public health agencies and certain organ procurement organizations are authorized by law to access health information without a patient\'s consent for certain public health and organ transplant purposes.  These entities may access your information through an HIE for these purposes without regard to whether you give consent, deny consent or do not fill out a consent form.',
      'es': '',
      'fr': '',
    },
    'mzs3x6wz': {
      'en': '6.   Penalties for Improper Access to or Use of Your Information.',
      'es': '',
      'fr': '',
    },
    'pbbdge1t': {
      'en':
          'There are penalties for inappropriate access to or use or your electronic health information.  If at any time you suspect that someone who should not have seen or received access to your information has done so, you may file a complaint with the Office for Civil Rights at http://www.hhs.gov/ocr/privacy/hipaa/complaints/. ',
      'es': '',
      'fr': '',
    },
    'id5nk8bg': {
      'en': '7.   Re-disclosure of Information.',
      'es': '',
      'fr': '',
    },
    'gxghjp73': {
      'en':
          'Any organization(s) you have given consent to access health information about you may re-disclose your health information, but only to the extent permitted by state and federal laws and regulations. Substance use disorder treatment-related information or confidential HIV-related information may only be accessed and may only be re-disclosed if accompanied by the required statements regarding prohibition of re-disclosure.',
      'es': '',
      'fr': '',
    },
    'ux5cmqz6': {
      'en': '8.   Effective Period.',
      'es': '',
      'fr': '',
    },
    'khjm16so': {
      'en':
          'This consent form will remain in effect until the day you change your consent choice, in case of a minor until he/she turns 18 years of age, or until your death.',
      'es': '',
      'fr': '',
    },
    'jp8dh0t8': {
      'en': '9.   Changing Your Consent Choice.',
      'es': '',
      'fr': '',
    },
    'jyynhmhr': {
      'en':
          'You can change your consent choice at any time by submitting a new consent form with your new choice. Organizations that access your health information through an HIE while your consent is in are not required to return your information or remove it from their records if you later revoke this consent.',
      'es': '',
      'fr': '',
    },
    '7n7f9077': {
      'en': '10.   Copy of Form.',
      'es': '',
      'fr': '',
    },
    'ix44eba0': {
      'en': 'You are entitled to get a copy of this consent form.',
      'es': '',
      'fr': '',
    },
    'f0ozvng5': {
      'en': 'Submit',
      'es': '',
      'fr': '',
    },
    'p7oq6ll4': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patient_doc
  {
    'g0dg085t': {
      'en': 'Back',
      'es': '',
      'fr': '',
    },
    'q3tbxzkk': {
      'en': 'Page Title',
      'es': '',
      'fr': '',
    },
    'j2j1zv2x': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patientMedList
  {
    '4frgn5f2': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    'vlddnygv': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    '4vyf1exd': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    '7jaeu6rz': {
      'en': 'Current',
      'es': '',
      'fr': '',
    },
    'amvnnbtb': {
      'en': 'No medication details available yet!',
      'es': '',
      'fr': '',
    },
    'apv7pydv': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    '7dilwqhf': {
      'en': 'All',
      'es': '',
      'fr': '',
    },
    'tat5zq9g': {
      'en': 'No medication details available yet!',
      'es': '',
      'fr': '',
    },
    '6bworcfk': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    '8j0dp72t': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patientAllTimeline
  {
    'f5r0zatx': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '3mb16257': {
      'en': 'Timeline',
      'es': '',
      'fr': '',
    },
    '6ykyonpw': {
      'en': 'Chronic',
      'es': '',
      'fr': '',
    },
    'jebq1y4x': {
      'en': 'No chronic details available yet!',
      'es': '',
      'fr': '',
    },
    '13b9pn0s': {
      'en': 'Acute',
      'es': '',
      'fr': '',
    },
    'z5f3ktr4': {
      'en': 'No acute details available yet!',
      'es': '',
      'fr': '',
    },
    'yrovbkwo': {
      'en': 'Others',
      'es': '',
      'fr': '',
    },
    'jfstxo89': {
      'en': 'No others details available yet!',
      'es': '',
      'fr': '',
    },
    '5zkahhqc': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // ViewPatientDoc
  {
    '5es3iy00': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // kennar_enrol_03
  {
    'cf3qi1jw': {
      'en': 'Opt In',
      'es': '',
      'fr': '',
    },
    'u10v72g1': {
      'en': 'Opting in allows us to send you text updates.',
      'es': '',
      'fr': '',
    },
    'i7vgiczw': {
      'en': 'Phone Number',
      'es': '',
      'fr': '',
    },
    'fur3p8cu': {
      'en': 'Enter phone number.',
      'es': '',
      'fr': '',
    },
    '1x9k9zu6': {
      'en': 'First name is required',
      'es': '',
      'fr': '',
    },
    'x70i0ktb': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'q76cynyr': {
      'en': 'Last name is required',
      'es': '',
      'fr': '',
    },
    '2pj5kumx': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'wzbj3ebq': {
      'en': 'I consent.',
      'es': '',
      'fr': '',
    },
    '13d2sc10': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'h1pb2tgo': {
      'en': 'Skip and complete later',
      'es': '',
      'fr': '',
    },
    'qi4oq6n9': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // kennar_enrol_04
  {
    'gkxgeb52': {
      'en': 'I consent to the above stated HIE terms.',
      'es': '',
      'fr': '',
    },
    'bfx3ktdr': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'uvnjlzpb': {
      'en': 'Skip and complete later',
      'es': '',
      'fr': '',
    },
    '55btzfn1': {
      'en': 'HIE Consent Form',
      'es': '',
      'fr': '',
    },
    'qhlo7u6i': {
      'en':
          'The HIE Consent form allows us to find helpful information from the network. ',
      'es': '',
      'fr': '',
    },
    'eurhvo87': {
      'en': 'Learn more',
      'es': '',
      'fr': '',
    },
    'h3p7zzey': {
      'en': 'Patient Name',
      'es': '',
      'fr': '',
    },
    'c6a4id40': {
      'en': 'Enter patient name.',
      'es': '',
      'fr': '',
    },
    'db1ej9oh': {
      'en': 'Patient ID',
      'es': '',
      'fr': '',
    },
    'ykrummzl': {
      'en': 'Enter patient Id',
      'es': '',
      'fr': '',
    },
    'kpsqwb76': {
      'en': 'Date of Birth',
      'es': '',
      'fr': '',
    },
    '2qfzu22y': {
      'en': 'January',
      'es': '',
      'fr': '',
    },
    '0i2pxnyy': {
      'en': 'February',
      'es': '',
      'fr': '',
    },
    'su48fo97': {
      'en': 'March',
      'es': '',
      'fr': '',
    },
    'lgc3ecbu': {
      'en': 'April',
      'es': '',
      'fr': '',
    },
    'lno51i15': {
      'en': 'May',
      'es': '',
      'fr': '',
    },
    '65hii6uv': {
      'en': 'June',
      'es': '',
      'fr': '',
    },
    'p6kcuwrj': {
      'en': 'July',
      'es': '',
      'fr': '',
    },
    'pax8ddyh': {
      'en': 'August',
      'es': '',
      'fr': '',
    },
    '50nug3gi': {
      'en': 'September',
      'es': '',
      'fr': '',
    },
    'yv3jqii9': {
      'en': 'October',
      'es': '',
      'fr': '',
    },
    'c34bmh34': {
      'en': 'November',
      'es': '',
      'fr': '',
    },
    'szzl3ef9': {
      'en': 'December',
      'es': '',
      'fr': '',
    },
    'q2y1apt5': {
      'en': 'Month',
      'es': '',
      'fr': '',
    },
    'rpojskha': {
      'en': '01',
      'es': '',
      'fr': '',
    },
    '3ldnwy03': {
      'en': '02',
      'es': '',
      'fr': '',
    },
    'w66rs7ck': {
      'en': '03',
      'es': '',
      'fr': '',
    },
    '2nrclzlk': {
      'en': '04',
      'es': '',
      'fr': '',
    },
    'i7zoyo8c': {
      'en': '05',
      'es': '',
      'fr': '',
    },
    '3uwcr3rk': {
      'en': '06',
      'es': '',
      'fr': '',
    },
    'j4nhto2h': {
      'en': '07',
      'es': '',
      'fr': '',
    },
    'xpr2qnx2': {
      'en': '08',
      'es': '',
      'fr': '',
    },
    'byofrs9s': {
      'en': '09',
      'es': '',
      'fr': '',
    },
    '66pvrpx2': {
      'en': '10',
      'es': '',
      'fr': '',
    },
    'fjn26h3f': {
      'en': '11',
      'es': '',
      'fr': '',
    },
    'weo5l77u': {
      'en': '12',
      'es': '',
      'fr': '',
    },
    '490i0ij5': {
      'en': '13',
      'es': '',
      'fr': '',
    },
    'w1n6o9sh': {
      'en': '14',
      'es': '',
      'fr': '',
    },
    '5x8weusl': {
      'en': '15',
      'es': '',
      'fr': '',
    },
    'el9b3b4w': {
      'en': '16',
      'es': '',
      'fr': '',
    },
    'tgz5cezh': {
      'en': '17',
      'es': '',
      'fr': '',
    },
    'av0nlpez': {
      'en': '18',
      'es': '',
      'fr': '',
    },
    '7p2s9c8k': {
      'en': '19',
      'es': '',
      'fr': '',
    },
    'l4ci9xl3': {
      'en': '20',
      'es': '',
      'fr': '',
    },
    'zs09a8ui': {
      'en': '21',
      'es': '',
      'fr': '',
    },
    'wh199mfc': {
      'en': '22',
      'es': '',
      'fr': '',
    },
    'rmxixj7q': {
      'en': '23',
      'es': '',
      'fr': '',
    },
    'z3yx70lm': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    '5eokepoz': {
      'en': '25',
      'es': '',
      'fr': '',
    },
    '78n5nk1o': {
      'en': '26',
      'es': '',
      'fr': '',
    },
    'go3xav9p': {
      'en': '27',
      'es': '',
      'fr': '',
    },
    'r5i7towv': {
      'en': '28',
      'es': '',
      'fr': '',
    },
    '4vu8ytct': {
      'en': '29',
      'es': '',
      'fr': '',
    },
    'ad6y2cqm': {
      'en': '30',
      'es': '',
      'fr': '',
    },
    'gqucxl3b': {
      'en': '31',
      'es': '',
      'fr': '',
    },
    'cggdi13p': {
      'en': 'Date',
      'es': '',
      'fr': '',
    },
    '2yhjp8to': {
      'en': '1995',
      'es': '',
      'fr': '',
    },
    '26f8dvhd': {
      'en': '1996',
      'es': '',
      'fr': '',
    },
    'nk1dsv6k': {
      'en': '1997',
      'es': '',
      'fr': '',
    },
    'ziots5yy': {
      'en': '1998',
      'es': '',
      'fr': '',
    },
    '50gfqkwy': {
      'en': '1999',
      'es': '',
      'fr': '',
    },
    'dk6v9obn': {
      'en': '2000',
      'es': '',
      'fr': '',
    },
    'wnx7c153': {
      'en': '2001',
      'es': '',
      'fr': '',
    },
    '8nene3y0': {
      'en': '2002',
      'es': '',
      'fr': '',
    },
    'f2tzs19f': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    'qfj3u2ls': {
      'en': 'Enter year',
      'es': '',
      'fr': '',
    },
    'jkuog4uz': {
      'en': 'Healthcare Organization',
      'es': '',
      'fr': '',
    },
    'f7wzs3tr': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    '37l85rdv': {
      'en': 'Legal Representative',
      'es': '',
      'fr': '',
    },
    'cey3scfe': {
      'en': 'Enter legal representative',
      'es': '',
      'fr': '',
    },
    '03krbjp1': {
      'en':
          ' To support care management and care coordination for you and other patients as well as improve quality of health care.  By signing this consent form, your Provider, and Kennar Health, on behalf of your Provider, will have the ability to view and access your health information through a computerized system called a Health Information Exchange (“HIE”).  Currently, the HIEs Kennar Health and your Provider anticipate accessing include the following:  CommonWell Health Information Exchange (commonwellalliance.org), eHealth Exchange (ehealthexchange.org) and Carequality (carequality.org).  ',
      'es': '',
      'fr': '',
    },
    'kcv54mv4': {
      'en':
          'You may also use this consent form to decide whether or not your Provider and Kennar Health, on behalf of your Provider, may share your health information to the HIEs listed above for the purposes described in the attached fact sheet.',
      'es': '',
      'fr': '',
    },
    'lox7tlj2': {
      'en':
          'Your health information is private and cannot be given to other people without your permission under applicable state laws and U.S. laws and rules.  Your Provider, Kennar Health and other organizations that participate in the noted HIEs that can get and see your health information must obey all these laws.  They cannot give your information to other people unless you agree or the law says they can give the information to other people.  This is true if your health information is on a computer system or on paper.  Some laws cover care for HIV/AIDS, mental health records, and substance use disorder records.  ',
      'es': '',
      'fr': '',
    },
    'ndhy6a1e': {
      'en':
          'The choice you make in this consent form will NOT affect your ability to receive health care. The choice you make in this consent form does NOT allow health insurers to have access to your information for the purpose of deciding whether to provide you with health insurance coverage or pay your medical bills.',
      'es': '',
      'fr': '',
    },
    'racid212': {
      'en': 'Acknowledgement of Understanding and Signature',
      'es': '',
      'fr': '',
    },
    '3gl6c5wp': {
      'en':
          'I acknowledge and understand the terms of this consent form.  If I have questions about this consent form, I may contact my Provider or Kennar Health.  I have been provided and received a copy of this consent form.\n',
      'es': '',
      'fr': '',
    },
    '88ajqrq2': {
      'en':
          'Details about the information accessed through a HIE and the consent process:',
      'es': '',
      'fr': '',
    },
    '93vrjalo': {
      'en': '1.   How Your Information May be Used.',
      'es': '',
      'fr': '',
    },
    'anxbda9z': {
      'en':
          'Your health information will be used only for the following healthcare services:',
      'es': '',
      'fr': '',
    },
    'bdp4r0qu': {
      'en': 'Treatment Services.',
      'es': '',
      'fr': '',
    },
    '43815q46': {
      'en': 'Provide you with medical treatment and related services.',
      'es': '',
      'fr': '',
    },
    '6gdkera2': {
      'en': 'Insurance Eligibility Verification.',
      'es': '',
      'fr': '',
    },
    '0yukxqtj': {
      'en': 'Check whether you have health insurance and what it covers.',
      'es': '',
      'fr': '',
    },
    'k7e858o4': {
      'en': 'Care Management Activities.',
      'es': '',
      'fr': '',
    },
    '3dk3uycb': {
      'en':
          'These include assisting you in obtaining appropriate medical care, improving the quality of services provided to you, coordinating the provision of multiple health care services provided to you, or supporting you in following a plan of medical care.',
      'es': '',
      'fr': '',
    },
    'evx9e8c4': {
      'en': 'Quality Improvement Activities.',
      'es': '',
      'fr': '',
    },
    '21a0hzgo': {
      'en':
          'Evaluate and improve the quality of medical care provided to you and all patients.',
      'es': '',
      'fr': '',
    },
    'klwa1btc': {
      'en': '2.   What Types of Information about You Are Included.',
      'es': '',
      'fr': '',
    },
    'olfcwl57': {
      'en':
          'If you give consent, your Provider and Kennar Health may access ALL of your electronic health information available through a HIE in which it participates as further discussed on the consent form. This includes information created before and after the date this form is signed. Your health records may include a history of illnesses or injuries you have had (like diabetes or a broken bone), test results (like X-rays or blood tests), and lists of medicines you have taken. This information may include sensitive health conditions, including but not limited to:',
      'es': '',
      'fr': '',
    },
    '759vhkhn': {
      'en': 'Substance use disorder and treatment',
      'es': '',
      'fr': '',
    },
    'xehsexuw': {
      'en': 'Sexually transmitted diseases',
      'es': '',
      'fr': '',
    },
    'dgsei5bg': {
      'en': 'Discharge summary',
      'es': '',
      'fr': '',
    },
    '5o08lyqz': {
      'en': 'Birth control and abortion (family planning)',
      'es': '',
      'fr': '',
    },
    '2oqcnhmi': {
      'en': 'Medication and Dosages',
      'es': '',
      'fr': '',
    },
    'yay09ycs': {
      'en': 'Employment Information',
      'es': '',
      'fr': '',
    },
    '27hdl14u': {
      'en': 'Genetic(inherited diseases or tests)',
      'es': '',
      'fr': '',
    },
    'oh0eyhfs': {
      'en': 'Diagnostic Information',
      'es': '',
      'fr': '',
    },
    'i5e0fxh1': {
      'en': 'Living Situation',
      'es': '',
      'fr': '',
    },
    'tqabcfex': {
      'en': 'HIV/AIDS',
      'es': '',
      'fr': '',
    },
    'w0ja5zcq': {
      'en': 'Allergies',
      'es': '',
      'fr': '',
    },
    'xfwt1kkx': {
      'en': 'Social Supports',
      'es': '',
      'fr': '',
    },
    'ud7nrqjt': {
      'en': 'Mental health conditions',
      'es': '',
      'fr': '',
    },
    '8avxzz10': {
      'en': 'Substance use history summaries',
      'es': '',
      'fr': '',
    },
    'u2g2hcwk': {
      'en': 'Claims Encounter Data',
      'es': '',
      'fr': '',
    },
    'dmd1qn5i': {
      'en': 'Clinical notes',
      'es': '',
      'fr': '',
    },
    'ygyw63qw': {
      'en': 'Lab Tests',
      'es': '',
      'fr': '',
    },
    '8lp7fwr8': {
      'en': '3.   Where Health Information About You Comes From.',
      'es': '',
      'fr': '',
    },
    '9zksbl7i': {
      'en':
          'Information about you comes from places that have provided you with medical care or health insurance. These may include hospitals, physicians, pharmacies, clinical laboratories, health insurers, the Medicaid program, and other organizations that exchange health information electronically.',
      'es': '',
      'fr': '',
    },
    'k9uvigcr': {
      'en': '4.   Who May Access Information About You, If You Give Consent.',
      'es': '',
      'fr': '',
    },
    'a5m7brj7': {
      'en':
          'The only people who can see your health information are those who you agree can get and see it, like your Provider and Kennar Health, and by the HIE to access information may access your health information through the HIE.',
      'es': '',
      'fr': '',
    },
    'ecl6e05s': {
      'en': '5.   Public Health and Organ Procurement Organization Access.',
      'es': '',
      'fr': '',
    },
    'w7axado4': {
      'en':
          'Federal, state or local public health agencies and certain organ procurement organizations are authorized by law to access health information without a patient\'s consent for certain public health and organ transplant purposes.  These entities may access your information through an HIE for these purposes without regard to whether you give consent, deny consent or do not fill out a consent form.',
      'es': '',
      'fr': '',
    },
    'cvkkunyn': {
      'en': '6.   Penalties for Improper Access to or Use of Your Information.',
      'es': '',
      'fr': '',
    },
    '50orl0u8': {
      'en':
          'There are penalties for inappropriate access to or use or your electronic health information.  If at any time you suspect that someone who should not have seen or received access to your information has done so, you may file a complaint with the Office for Civil Rights at http://www.hhs.gov/ocr/privacy/hipaa/complaints/. ',
      'es': '',
      'fr': '',
    },
    'c7juzx2s': {
      'en': '7.   Re-disclosure of Information.',
      'es': '',
      'fr': '',
    },
    'gmg2cnva': {
      'en':
          'Any organization(s) you have given consent to access health information about you may re-disclose your health information, but only to the extent permitted by state and federal laws and regulations. Substance use disorder treatment-related information or confidential HIV-related information may only be accessed and may only be re-disclosed if accompanied by the required statements regarding prohibition of re-disclosure.',
      'es': '',
      'fr': '',
    },
    'sy5hm9ak': {
      'en': '8.   Effective Period.',
      'es': '',
      'fr': '',
    },
    'duw1uuox': {
      'en':
          'This consent form will remain in effect until the day you change your consent choice, in case of a minor until he/she turns 18 years of age, or until your death.',
      'es': '',
      'fr': '',
    },
    'y5iw966d': {
      'en': '9.   Changing Your Consent Choice.',
      'es': '',
      'fr': '',
    },
    '5urgaqev': {
      'en':
          'You can change your consent choice at any time by submitting a new consent form with your new choice. Organizations that access your health information through an HIE while your consent is in are not required to return your information or remove it from their records if you later revoke this consent.',
      'es': '',
      'fr': '',
    },
    'g7r8fh7q': {
      'en': '10.   Copy of Form.',
      'es': '',
      'fr': '',
    },
    '7cr934jr': {
      'en': 'You are entitled to get a copy of this consent form.',
      'es': '',
      'fr': '',
    },
    'zb6z2lz4': {
      'en': 'First name is required',
      'es': '',
      'fr': '',
    },
    'lacqowcm': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'tv2wh809': {
      'en': 'Last name is required',
      'es': '',
      'fr': '',
    },
    'd1ytgbrp': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'fsbmfi4u': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // NetworkSearchByOrg
  {
    'hk4gqdjv': {
      'en': 'Back',
      'es': '',
      'fr': '',
    },
    'aibhllsc': {
      'en': 'Page Title',
      'es': '',
      'fr': '',
    },
    'hvlp1e7y': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patient_All_facilities_new
  {
    'r4p23bfh': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    '767t2sc8': {
      'en': 'Connect',
      'es': '',
      'fr': '',
    },
    'bp7jd7pf': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'ahwb26r0': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patient_Selected_facilities_new
  {
    'sqxu4oxi': {
      'en': 'Add Hospital',
      'es': '',
      'fr': '',
    },
    'l8a3kezy': {
      'en': 'Skip and add later',
      'es': '',
      'fr': '',
    },
    'd5q99uzy': {
      'en': 'Search Facilities',
      'es': '',
      'fr': '',
    },
    'h8f27a1r': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // patient_new_navBar
  {
    'ubwfi5gd': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
    'g17lfe3e': {
      'en': 'Help',
      'es': '',
      'fr': '',
    },
    'zjn9yvpl': {
      'en': 'Insurance',
      'es': '',
      'fr': '',
    },
    'iap9zv7q': {
      'en': 'Chat',
      'es': '',
      'fr': '',
    },
  },
  // reasonCheckBox
  {
    '8z89tllt': {
      'en': 'Not related person',
      'es': '',
      'fr': '',
    },
    'gk722mgx': {
      'en': 'Need privacy',
      'es': '',
      'fr': '',
    },
    '5v7c9nhu': {
      'en': 'Personal',
      'es': '',
      'fr': '',
    },
  },
  // historyPopup
  {
    '7y2l0zkc': {
      'en': 'Help status history',
      'es': '',
      'fr': '',
    },
    '217h0ym4': {
      'en': 'Tracking Id',
      'es': '',
      'fr': '',
    },
    'z4ena4p8': {
      'en': 'Description',
      'es': '',
      'fr': '',
    },
    'foyn8v54': {
      'en': 'Created Date',
      'es': '',
      'fr': '',
    },
    'i0qe7mn5': {
      'en': 'Responded Date',
      'es': '',
      'fr': '',
    },
    'gx7t8l6q': {
      'en': 'There is no recent history.',
      'es': '',
      'fr': '',
    },
    'hdm9agyr': {
      'en': 'Close',
      'es': '',
      'fr': '',
    },
  },
  // issue_tracking_eamil
  {
    'g1bleciu': {
      'en': 'Enter brief description about helpdesk. ',
      'es': '',
      'fr': '',
    },
    '4nx7cn3n': {
      'en': 'Back',
      'es': '',
      'fr': '',
    },
    '3ugn870o': {
      'en': 'Submit',
      'es': '',
      'fr': '',
    },
    'ujizekhe': {
      'en': 'Enter description',
      'es': '',
      'fr': '',
    },
    'n8dlwokp': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // patient_new_menu_bar
  {
    '9nyc8we7': {
      'en': 'Care Gaps',
      'es': '',
      'fr': '',
    },
    'vuapkgbb': {
      'en': 'HIE Consent',
      'es': '',
      'fr': '',
    },
    'tviy9i2h': {
      'en': 'Health Care Facilities',
      'es': '',
      'fr': '',
    },
    'wywjyx0w': {
      'en': 'Insurance',
      'es': '',
      'fr': '',
    },
    'ms5largb': {
      'en': 'Medication',
      'es': '',
      'fr': '',
    },
    '4kusfyc5': {
      'en': 'Network Search',
      'es': '',
      'fr': '',
    },
    'lg94up1i': {
      'en': 'Patient Linking',
      'es': '',
      'fr': '',
    },
  },
  // flag_pop_up
  {
    'trcvstek': {
      'en': 'By : ',
      'es': '',
      'fr': '',
    },
    '2cdqfo7y': {
      'en': 'On : ',
      'es': '',
      'fr': '',
    },
    '068zibkc': {
      'en': 'Close',
      'es': '',
      'fr': '',
    },
  },
  // patient_listing_pro_popup
  {
    'vwp2cnw4': {
      'en': 'Reason',
      'es': '',
      'fr': '',
    },
    'hlqu7ovw': {
      'en': 'Enter reason',
      'es': '',
      'fr': '',
    },
    'wcptck2u': {
      'en': 'Complexity',
      'es': '',
      'fr': '',
    },
    'u9ha79sm': {
      'en': 'Low',
      'es': '',
      'fr': '',
    },
    'm724zm7u': {
      'en': 'Medium',
      'es': '',
      'fr': '',
    },
    'z3hefd48': {
      'en': 'High',
      'es': '',
      'fr': '',
    },
    'fc4jzyao': {
      'en': 'Select complexity',
      'es': '',
      'fr': '',
    },
    'xq3hzhlu': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'yncs61ey': {
      'en': 'Remarks',
      'es': '',
      'fr': '',
    },
    '367zwaqt': {
      'en': 'Remarks',
      'es': '',
      'fr': '',
    },
    'a8979195': {
      'en': 'Back',
      'es': '',
      'fr': '',
    },
    'e3c1abqb': {
      'en': 'Please enter reason',
      'es': '',
      'fr': '',
    },
    '63d6a4m7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'f79kvmcv': {
      'en': 'Please enter remarks',
      'es': '',
      'fr': '',
    },
    '8ewv8yt8': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // issueDetails
  {
    '3h9mhl4p': {
      'en': 'Name: ',
      'es': '',
      'fr': '',
    },
    '7j9dd1ig': {
      'en': 'Facility Name: ',
      'es': '',
      'fr': '',
    },
    'ab6gi438': {
      'en': 'Date: ',
      'es': '',
      'fr': '',
    },
    'pcz9p64b': {
      'en': 'Description: ',
      'es': '',
      'fr': '',
    },
    'ttxibt3p': {
      'en': 'Image not available.',
      'es': '',
      'fr': '',
    },
  },
  // providerselect
  {
    'tv2g6ag3': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ig7esndq': {
      'en': 'Enter name...',
      'es': '',
      'fr': '',
    },
    'sip3b2hy': {
      'en': 'Group name is required',
      'es': '',
      'fr': '',
    },
    '8h986bye': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '52s44bfl': {
      'en': 'No data',
      'es': '',
      'fr': '',
    },
    'ea0w5my2': {
      'en': 'Search..',
      'es': '',
      'fr': '',
    },
    'gmbtwebl': {
      'en': 'No data',
      'es': '',
      'fr': '',
    },
    'by5w5cty': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'g77nw7be': {
      'en': 'Start Chat',
      'es': '',
      'fr': '',
    },
  },
  // patientselectCare
  {
    '9v2jso30': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    'hkewett6': {
      'en': 'Provider',
      'es': '',
      'fr': '',
    },
    'c8gc9cug': {
      'en': 'Action',
      'es': '',
      'fr': '',
    },
    'g5jjny1s': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
  },
  // caregaps
  {
    'xyvm13ti': {
      'en': 'Patient Care Gaps Question',
      'es': '',
      'fr': '',
    },
    'csx61gqe': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    'uga5c57y': {
      'en': 'Enter name',
      'es': '',
      'fr': '',
    },
    'nra8h74s': {
      'en': 'Question',
      'es': '',
      'fr': '',
    },
    'jjpqqq77': {
      'en': 'Question',
      'es': '',
      'fr': '',
    },
    'db8fnq09': {
      'en': 'Enter question',
      'es': '',
      'fr': '',
    },
    '4c8umjd7': {
      'en': 'Type',
      'es': '',
      'fr': '',
    },
    'y33ddemz': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    '19fszztg': {
      'en': 'Measure',
      'es': '',
      'fr': '',
    },
    '4pz1iv22': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    'rfgnv13g': {
      'en': 'From Age',
      'es': '',
      'fr': '',
    },
    'xwuz1vq5': {
      'en': 'Enter from age',
      'es': '',
      'fr': '',
    },
    '6f3jf29o': {
      'en': 'To Age',
      'es': '',
      'fr': '',
    },
    'l0kjdhuz': {
      'en': 'Enter to age',
      'es': '',
      'fr': '',
    },
    'kamdec7g': {
      'en': 'Gender',
      'es': '',
      'fr': '',
    },
    'a1gbqikz': {
      'en': 'Male',
      'es': '',
      'fr': '',
    },
    '3yjy0r7j': {
      'en': 'Female',
      'es': '',
      'fr': '',
    },
    'o9xo1ek4': {
      'en': 'Other',
      'es': '',
      'fr': '',
    },
    'qtpgjn0v': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    'g69ykbiv': {
      'en': 'Frequency',
      'es': '',
      'fr': '',
    },
    'fcevkcr8': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    'lvqrimxn': {
      'en': 'Enter other frequency',
      'es': '',
      'fr': '',
    },
    'fjbzcg6q': {
      'en': 'Test',
      'es': '',
      'fr': '',
    },
    'qazflhzk': {
      'en': 'Enter test',
      'es': '',
      'fr': '',
    },
    '05geriba': {
      'en': 'Criteria',
      'es': '',
      'fr': '',
    },
    '7iz36ar8': {
      'en': 'Enter criteria',
      'es': '',
      'fr': '',
    },
    'dqx3cqwj': {
      'en': 'CPT ',
      'es': '',
      'fr': '',
    },
    '8mmxh8cf': {
      'en': 'Enter cpt',
      'es': '',
      'fr': '',
    },
    'v8labpi9': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    '6z9qt553': {
      'en': 'Save',
      'es': '',
      'fr': '',
    },
    '1lbxhhfc': {
      'en': 'Please enter name',
      'es': '',
      'fr': '',
    },
    'ppcgryil': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'xbk0jrve': {
      'en': 'Please enter question',
      'es': '',
      'fr': '',
    },
    '661uvo0m': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'udmz7c6i': {
      'en': 'Please enter from age',
      'es': '',
      'fr': '',
    },
    'qnyfmdc6': {
      'en': 'Please enter from age correctly!',
      'es': '',
      'fr': '',
    },
    'kgl5kgwh': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'invt508p': {
      'en': 'Please enter to age',
      'es': '',
      'fr': '',
    },
    'v4ptsgiw': {
      'en': 'Please enter to age correctly!',
      'es': '',
      'fr': '',
    },
    'o5j56bjm': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '2wsrrm5u': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    '8rb1jq1l': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'xipmitl7': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'ty5wzzdp': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'd3ln7yp3': {
      'en': 'Please enter to criteria',
      'es': '',
      'fr': '',
    },
    'f8jb2ims': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'lcg9hiwv': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'cepu9mtd': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // remark
  {
    '9v4ydqdn': {
      'en': 'Write anything you want to specify',
      'es': '',
      'fr': '',
    },
  },
  // chatTime
  {
    'mkkstxxx': {
      'en': 'Total Chat Time',
      'es': '',
      'fr': '',
    },
    '8sij2gvy': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    'mkr6oumx': {
      'en': '2023',
      'es': '',
      'fr': '',
    },
    'tc37kfz4': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    '8an9zzmd': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    '8crp0i58': {
      'en': 'Month',
      'es': '',
      'fr': '',
    },
    'jwgb60dd': {
      'en': 'Jan',
      'es': '',
      'fr': '',
    },
    'n7mbwzhe': {
      'en': 'Feb',
      'es': '',
      'fr': '',
    },
    'wu61rnvq': {
      'en': 'Mar',
      'es': '',
      'fr': '',
    },
    'q7fhqnjt': {
      'en': 'Apr',
      'es': '',
      'fr': '',
    },
    'jjlm8q70': {
      'en': 'May',
      'es': '',
      'fr': '',
    },
    '1qwp1vzd': {
      'en': 'Jun',
      'es': '',
      'fr': '',
    },
    'vu02nsm1': {
      'en': 'Jul',
      'es': '',
      'fr': '',
    },
    'uq8rkjz1': {
      'en': 'Aug',
      'es': '',
      'fr': '',
    },
    '9k87qbih': {
      'en': 'Sep',
      'es': '',
      'fr': '',
    },
    '5e0wzgii': {
      'en': 'Oct',
      'es': '',
      'fr': '',
    },
    'h6ke1r07': {
      'en': 'Nov',
      'es': '',
      'fr': '',
    },
    '2giq8cq6': {
      'en': 'Dec',
      'es': '',
      'fr': '',
    },
    'nikmivas': {
      'en': 'Month',
      'es': '',
      'fr': '',
    },
    'a00hxm62': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'lqzfs9ml': {
      'en': 'Apply Filter',
      'es': '',
      'fr': '',
    },
  },
  // caregapQuestion
  {
    'qeixjwvt': {
      'en': 'Questions not found.',
      'es': '',
      'fr': '',
    },
    'kql77si5': {
      'en':
          ' Please check the boxes for the tests that you\'ve  completed.(Don\'t worry you can enter an approximate time frame)',
      'es': '',
      'fr': '',
    },
    'rbjyhejm': {
      'en': 'Select Date',
      'es': '',
      'fr': '',
    },
    '9lsuxtf7': {
      'en': 'Remark',
      'es': '',
      'fr': '',
    },
    't19bsa1h': {
      'en': 'Save',
      'es': '',
      'fr': '',
    },
    '8xekmy6j': {
      'en': 'Skip',
      'es': '',
      'fr': '',
    },
    '0tg5mbng': {
      'en': 'Next',
      'es': '',
      'fr': '',
    },
    'gq6u7p84': {
      'en': 'Ok',
      'es': '',
      'fr': '',
    },
  },
  // provider_listing_facility
  {
    'umgb192s': {
      'en': 'Provider Name',
      'es': '',
      'fr': '',
    },
    'grr0koeh': {
      'en': 'Action',
      'es': '',
      'fr': '',
    },
    'dplbc17h': {
      'en': 'Assign Doctor',
      'es': '',
      'fr': '',
    },
    'yt0nbdli': {
      'en': 'Back',
      'es': '',
      'fr': '',
    },
  },
  // pie_chart
  {
    'vve5fl26': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    'und4lieq': {
      'en': '2023',
      'es': '',
      'fr': '',
    },
    'hfcigvkh': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    'wcgri110': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'ol4qtply': {
      'en': 'Patients',
      'es': '',
      'fr': '',
    },
    'n8d72f1p': {
      'en': 'Seconds',
      'es': '',
      'fr': '',
    },
    '2e69lsan': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
  },
  // Termandpolice
  {
    'rb4tymkt': {
      'en': 'Privacy Policy',
      'es': '',
      'fr': '',
    },
    's0e5ymdj': {
      'en': 'Terms of Service ',
      'es': '',
      'fr': '',
    },
  },
  // defaultDetails
  {
    'ee8bni03': {
      'en': 'Default Details',
      'es': '',
      'fr': '',
    },
    'ns3tn01n': {
      'en': 'Category',
      'es': '',
      'fr': '',
    },
    '1btw0212': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    'dyqm3fq6': {
      'en': 'Sub Category',
      'es': '',
      'fr': '',
    },
    'fd59ta4p': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
    },
    'e55wvn79': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
    },
    '1hpug50j': {
      'en': 'New Definition',
      'es': '',
      'fr': '',
    },
    'hnjm3rjt': {
      'en': 'Enter new definition',
      'es': '',
      'fr': '',
    },
    '7yccpmk8': {
      'en': 'Text',
      'es': '',
      'fr': '',
    },
    'e25d0qie': {
      'en': 'Enter text',
      'es': '',
      'fr': '',
    },
    '584q1of7': {
      'en': 'Text',
      'es': '',
      'fr': '',
    },
    'ew1gmg6p': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'hqm14rv3': {
      'en': 'Submit',
      'es': '',
      'fr': '',
    },
    'cn1g6wh4': {
      'en': 'Label is required',
      'es': '',
      'fr': '',
    },
    'wo1ug575': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '0nm0klr9': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'bwwvmams': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // EmailInfo
  {
    '4q2g017p': {
      'en': 'Close',
      'es': '',
      'fr': '',
    },
  },
  // patientSearchCard
  {
    '5zhauowz': {
      'en': 'Record found ',
      'es': '',
      'fr': '',
    },
    'o8kh440p': {
      'en': 'Name :',
      'es': '',
      'fr': '',
    },
    '7nd3yhlk': {
      'en': 'Birthdate :',
      'es': '',
      'fr': '',
    },
    'vb006u3m': {
      'en': 'Gender :',
      'es': '',
      'fr': '',
    },
    'yglryday': {
      'en': 'Verify',
      'es': '',
      'fr': '',
    },
  },
  // CustomPopUp
  {
    'uhw93d2f': {
      'en': 'OK',
      'es': '',
      'fr': '',
    },
  },
  // KennarConnect1
  {
    'hwgmehz7': {
      'en': 'Importance',
      'es': '',
      'fr': '',
    },
    '20qaxs9y': {
      'en':
          'By providing your cell phone number to Kennar, \nyou are agreeing to be contacted by or on behalf of Kennar at the telephone number provided, \nincluding text (SMS) messages to your cell phone and other wireless devices, \nand the use of an automatic telephone dialing system, artificial voice and prerecorded messages, \nto provide you with informational, marketing, and promotional materials relating to Kennar’s products and services. \nYou may opt-out of receiving text (SMS) messages from Kennar at any time by replying with the word STOP from the mobile device receiving the messages. \nYou need not provide this consent in order to purchase any products or services from Kennar. ',
      'es': '',
      'fr': '',
    },
    'r69pb9ed': {
      'en': 'Close',
      'es': '',
      'fr': '',
    },
  },
  // ResourceData
  {
    'xvt3dxsx': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    'xql2mg23': {
      'en': 'Type',
      'es': '',
      'fr': '',
    },
    'ch6mtjbi': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
  },
  // DiabetesComponent
  {
    'c8ttvspf': {
      'en': 'Close',
      'es': '',
      'fr': '',
    },
  },
  // year
  {
    'qc2gjegd': {
      'en': 'Add  Year',
      'es': '',
      'fr': '',
    },
    'mp1dk0ic': {
      'en': 'Year',
      'es': '',
      'fr': '',
    },
    'a1ujp2fg': {
      'en': 'Please enter year.',
      'es': '',
      'fr': '',
    },
    'qnehb2ya': {
      'en': 'Year is required',
      'es': '',
      'fr': '',
    },
    '6wnao8fc': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'jqb20sa3': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    'aig7e52l': {
      'en': 'Save',
      'es': '',
      'fr': '',
    },
  },
  // heartratingpopup
  {
    'ru32rdf9': {
      'en': 'Heart Rate Readings',
      'es': '',
      'fr': '',
    },
    'vvpsqhsz': {
      'en': 'No details available yet!',
      'es': '',
      'fr': '',
    },
    't92ni774': {
      'en': 'Refresh',
      'es': '',
      'fr': '',
    },
  },
  // demographicData
  {
    '0290f447': {
      'en': 'Name',
      'es': '',
      'fr': '',
    },
    'gfd8fn97': {
      'en': 'Gender',
      'es': '',
      'fr': '',
    },
    'xl3b86ey': {
      'en': 'Phone Number',
      'es': '',
      'fr': '',
    },
    'e4huqruo': {
      'en': 'Date of Birth',
      'es': '',
      'fr': '',
    },
    'jz1o26r1': {
      'en': 'Occupation',
      'es': '',
      'fr': '',
    },
    'ygv382vz': {
      'en': 'Address',
      'es': '',
      'fr': '',
    },
    'r8vsfuf7': {
      'en': 'City',
      'es': '',
      'fr': '',
    },
    's9gzdm1a': {
      'en': 'State',
      'es': '',
      'fr': '',
    },
    '3ejm730t': {
      'en': 'Country',
      'es': '',
      'fr': '',
    },
    '2sss01dp': {
      'en': 'Zipcode',
      'es': '',
      'fr': '',
    },
    'hhqtji6c': {
      'en': 'Close',
      'es': '',
      'fr': '',
    },
  },
  // multiplePhone
  {
    'vfbikk6a': {
      'en': 'Select any one',
      'es': '',
      'fr': '',
    },
    'wnrc6w9g': {
      'en': 'Low',
      'es': '',
      'fr': '',
    },
    '7tfg66yo': {
      'en': 'Medium',
      'es': '',
      'fr': '',
    },
    '2li3wt6e': {
      'en': 'High',
      'es': '',
      'fr': '',
    },
    'gx044k44': {
      'en': 'Select role',
      'es': '',
      'fr': '',
    },
    'wpwqad0r': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'msu75df7': {
      'en': 'Back',
      'es': '',
      'fr': '',
    },
    'bb0sgliu': {
      'en': 'Continue',
      'es': '',
      'fr': '',
    },
    'luqj2njp': {
      'en': 'Please enter reason',
      'es': '',
      'fr': '',
    },
    'kuvgdktd': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '6rbbvorn': {
      'en': 'Please enter remarks',
      'es': '',
      'fr': '',
    },
    '1x4u55mb': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // HoverEffectMenu
  {
    'sp4lir01': {
      'en': 'Send Email',
      'es': '',
      'fr': '',
    },
    'u80asr69': {
      'en': 'Inprogress',
      'es': '',
      'fr': '',
    },
    'l3tqi91q': {
      'en': 'Make Hold',
      'es': '',
      'fr': '',
    },
    'qcr25rfn': {
      'en': 'Reject      ',
      'es': '',
      'fr': '',
    },
    'ilbl67ut': {
      'en': 'Resolved',
      'es': '',
      'fr': '',
    },
  },
  // filePicker
  {
    'ezphm25u': {
      'en': 'Cancel',
      'es': '',
      'fr': '',
    },
    '6klgs8ly': {
      'en': 'Upload',
      'es': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    '3pl4vnrp': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '6ao82sxy': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '4qeeef3r': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9y3bmto9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rkacofkw': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'vql99qvx': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '6wzaohar': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rmg8crmc': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'priydw05': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'urncgt59': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'zc07kim3': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'qb9ti672': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '4z9k94gy': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hnrsfylr': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9atp3z6a': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9ffdltwq': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'adegzdxt': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rdn2h7hk': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'wiqfl8gu': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'zmtiao0s': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'kn1d7e6x': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'wgz9k82t': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9w361xmf': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '0f4tt53b': {
      'en': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
