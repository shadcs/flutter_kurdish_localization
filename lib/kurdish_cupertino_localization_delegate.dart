import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

/// A custom set of date patterns for the `nn` locale.
//
/// These are not accurate and are just a clone of the date patterns for the
/// `no` locale to demonstrate how one would write and use custom date patterns.
// #docregion Date
const kurdishLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
// #enddocregion Date
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

/// A custom set of date symbols for the `nn` locale.
///
/// These are not accurate and are just a clone of the date symbols for the
/// `no` locale to demonstrate how one would write and use custom date symbols.
// #docregion Date2
const kuDateSymbols2 = {
  'NAME': 'ckb',
  'ERAS': ['پ.ز', 'ز'],
  'ERANAMES': ['پێش زاینی', 'زاینی'],
  'NARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی'
  ],
  'STANDALONENARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی'
  ],
  'MONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONEMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'SHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONESHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'WEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە'
  ],
  'STANDALONEWEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە'
  ],
  'SHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە'
  ],
  'NARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'STANDALONENARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'SHORTQUARTERS': ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  'QUARTERS': ['چارەکی یەکەم', 'چارەکی دووەم', 'چارەکی سێیەم', 'چارەکی چوارەم'],
  'AMPMS': ['پ.ن', 'د.ن'],
  'DATEFORMATS': [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  'TIMEFORMATS': [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '٠',
  'FIRSTDAYOFWEEK': 5,
  'WEEKENDRANGE': [4, 5],
  'FIRSTWEEKCUTOFFDAY': 3
};

// KMR (Kurmanji) Date Symbols for Cupertino
const kmrCupertinoDateSymbols = {
  'NAME': 'kmr',
  'ERAS': ['BZ', 'PZ'],
  'ERANAMES': ['Berî Zayînê', 'Piştî Zayînê'],
  'NARROWMONTHS': [
    'R.P',
    'R.D',
    'A',
    'N',
    'G',
    'H',
    'T',
    'G',
    'Î',
    'T.Y',
    'T.D',
    'Ç'
  ],
  'STANDALONENARROWMONTHS': [
    'R.P',
    'R.D',
    'A',
    'N',
    'G',
    'H',
    'T',
    'G',
    'Î',
    'T.Y',
    'T.D',
    'Ç'
  ],
  'MONTHS': [
    'Rêbendan',
    'Reşemî',
    'Adar',
    'Nîsan',
    'Gulan',
    'Hezîran',
    'Tîrmeh',
    'Gelawêj',
    'Îlon',
    'Tişrîna Yekem',
    'Tişrîna Duyem',
    'Çiriya Pêşîn',
  ],
  'STANDALONEMONTHS': [
    'Rêbendan',
    'Reşemî',
    'Adar',
    'Nîsan',
    'Gulan',
    'Hezîran',
    'Tîrmeh',
    'Gelawêj',
    'Îlon',
    'Tişrîna Yekem',
    'Tişrîna Duyem',
    'Çiriya Pêşîn',
  ],
  'SHORTMONTHS': [
    'Rêb',
    'Reş',
    'Ada',
    'Nîs',
    'Gul',
    'Hez',
    'Tîr',
    'Gel',
    'Îlo',
    'T.Y',
    'T.D',
    'Çir',
  ],
  'STANDALONESHORTMONTHS': [
    'Rêb',
    'Reş',
    'Ada',
    'Nîs',
    'Gul',
    'Hez',
    'Tîr',
    'Gel',
    'Îlo',
    'T.Y',
    'T.D',
    'Çir',
  ],
  'WEEKDAYS': ['Yekşem', 'Duşem', 'Sêşem', 'Çarşem', 'Pêncşem', 'În', 'Şemî'],
  'STANDALONEWEEKDAYS': [
    'Yekşem',
    'Duşem',
    'Sêşem',
    'Çarşem',
    'Pêncşem',
    'În',
    'Şemî'
  ],
  'SHORTWEEKDAYS': ['Yek', 'Du', 'Sê', 'Çar', 'Pênc', 'În', 'Şem'],
  'STANDALONESHORTWEEKDAYS': ['Yek', 'Du', 'Sê', 'Çar', 'Pênc', 'În', 'Şem'],
  'NARROWWEEKDAYS': ['Y', 'D', 'S', 'Ç', 'P', 'Î', 'Ş'],
  'STANDALONENARROWWEEKDAYS': ['Y', 'D', 'S', 'Ç', 'P', 'Î', 'Ş'],
  'SHORTQUARTERS': ['Ç1', 'Ç2', 'Ç3', 'Ç4'],
  'QUARTERS': ['Çareka Yekem', 'Çareka Duyem', 'Çareka Sêyem', 'Çareka Çarem'],
  'AMPMS': ['BN', 'PN'],
  'DATEFORMATS': [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  'TIMEFORMATS': [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '0',
  'FIRSTDAYOFWEEK': 0,
  'WEEKENDRANGE': [5, 6],
  'FIRSTWEEKCUTOFFDAY': 3
};

const kmrCupertinoDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

// #docregion Delegate
class KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const KurdishCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      locale.languageCode == 'ckb' || locale.languageCode == 'kmr';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = locale.languageCode;
    final bool isKmr = localeName == 'kmr';

    // The locale needs to be initialized into the custom
    // date symbols and patterns setup that Flutter uses.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: isKmr ? kmrCupertinoDatePatterns : kurdishLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(
          isKmr ? kmrCupertinoDateSymbols : kuDateSymbols2),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      KurdishCupertinoLocalizations(
        localeName: localeName,
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'en_US' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        // DateFormat here will use the symbols and patterns provided in the
        // `date_symbol_data_custom.initializeDateFormattingCustom` call above.
        // However, an alternative is to simply use a supported locale's
        // DateFormat symbols, similar to NumberFormat above.
        fullYearFormat: intl.DateFormat('y', localeName),
        dayFormat: intl.DateFormat('yMd', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        singleDigitHourFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        singleDigitMinuteFormat: intl.DateFormat('MMMM y', localeName),
        singleDigitSecondFormat: intl.DateFormat('MMM d', localeName),
        weekdayFormat: intl.DateFormat('EEE', localeName),
      ),
    );
  }

  @override
  bool shouldReload(KurdishCupertinoLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'nn' locale. In this example, only
/// the value for openAppDrawerTooltip was modified to use a custom message as
/// an example. Everything else uses the American English (en_US) messages
/// and formatting.
class KurdishCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const KurdishCupertinoLocalizations({
    String localeName = 'ckb',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.NumberFormat decimalFormat,
    required intl.DateFormat dayFormat,
    required intl.DateFormat doubleDigitMinuteFormat,
    required intl.DateFormat singleDigitHourFormat,
    required intl.DateFormat singleDigitMinuteFormat,
    required intl.DateFormat singleDigitSecondFormat,
    required intl.DateFormat weekdayFormat,
  })  : _localeName = localeName,
        super(
          localeName: localeName,
          fullYearFormat: fullYearFormat,
          mediumDateFormat: mediumDateFormat,
          decimalFormat: decimalFormat,
          dayFormat: dayFormat,
          doubleDigitMinuteFormat: doubleDigitMinuteFormat,
          singleDigitHourFormat: singleDigitHourFormat,
          singleDigitMinuteFormat: singleDigitMinuteFormat,
          singleDigitSecondFormat: singleDigitSecondFormat,
          weekdayFormat: weekdayFormat,
        );

  final String _localeName;
  bool get _isKmr => _localeName == 'kmr';

// #docregion Getters

  @override
  String get alertDialogLabel => _isKmr ? r'Hişyarî' : r'ئاگادارکردنەوە';

  @override
  String get collapsedHint => _isKmr ? 'Berfireh bû' : 'کۆنراوە';

  @override
  String get expandedHint => _isKmr ? 'Berfireh bû' : 'فراوان بوو';

  @override
  String get expansionTileCollapsedHint =>
      _isKmr ? 'Du caran baz bike' : 'دوو جار کەوە بکە';

  @override
  String get expansionTileCollapsedTapHint =>
      _isKmr ? 'Ji bo bêtir hûrgulî' : 'بۆ زانیاری زیاتر';

  @override
  String get expansionTileExpandedHint =>
      _isKmr ? 'Ji bo berhevkirinê' : 'بۆ کۆکۆیەک';

  @override
  String get expansionTileExpandedTapHint =>
      _isKmr ? 'Berhev bike' : 'کۆڵەکەیە';

// #enddocregion Getters

  @override
  String get anteMeridiemAbbreviation => _isKmr ? r'BN' : r'پ.ن';

  @override
  String get copyButtonLabel => _isKmr ? r'Jêber bike' : r'کۆپی';

  @override
  String get cutButtonLabel => _isKmr ? r'Jê bibe' : r'بڕین';

  @override
  String get modalBarrierDismissLabel => _isKmr ? r'Betal bike' : r'لادان';

  @override
  String get pasteButtonLabel => _isKmr ? r'Pêve bike' : r'پەیست';

  @override
  String get postMeridiemAbbreviation => _isKmr ? r'PN' : r'د.ن';

  @override
  String get selectAllButtonLabel =>
      _isKmr ? r'Hemûyan hilbijêre' : r'دیاریکردنی هەموو';

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      KurdishCupertinoLocalizationsDelegate();

  @override
  String get datePickerDateOrderString =>
      _isKmr ? "Hilbijartina dîrokê" : "هەڵبژاردنی بەروار";

  @override
  String get datePickerDateTimeOrderString =>
      _isKmr ? "Dem hilbijêre" : "کات هەڵبژێرە";

  @override
  String? get datePickerHourSemanticsLabelOther =>
      _isKmr ? "Demjimêrî hilbijartina dîrokê" : "کاتژمێری هەڵبژاردنی بەروار";

  @override
  String? get datePickerMinuteSemanticsLabelOther =>
      _isKmr ? "Deqîqeyî hilbijartina dîrokê" : "خولەکی هەڵبژاردنی بەروار";

  @override
  String get searchTextFieldPlaceholderLabel => _isKmr ? "Lêgerîn" : "گەڕان";

  @override
  String get tabSemanticsLabelRaw => _isKmr ? "Manasaziya tab" : "ماناسازی تاب";

  @override
  String? get timerPickerHourLabelOther =>
      _isKmr ? "Hilbijêreri demjimêr" : "هەڵبژێرەری کاتژمێر";

  @override
  String? get timerPickerMinuteLabelOther =>
      _isKmr ? "Hilbijêreri deqîqe" : "هەڵبژێرەری خولەک";

  @override
  String? get timerPickerSecondLabelOther =>
      _isKmr ? "Hilbijêreri çirke" : "هەڵبژێرەری چرکە";

  @override
  String get todayLabel => _isKmr ? "Îro" : "ئەمڕۆ";

  @override
  String get noSpellCheckReplacementsLabel => _isKmr
      ? "Tu guherîneyek kontrola rênivîsê nîye"
      : "هیچ جێگرەوەیەکی پشکنینی ڕێنووسی نییە";

  @override
  String get lookUpButtonLabel => _isKmr ? 'Li dû da gerrîn' : 'بە دوادا گەڕان';

  @override
  String get menuDismissLabel => _isKmr ? 'Menû belav bike' : 'بەلاوە نان';

  @override
  String get searchWebButtonLabel => _isKmr ? 'Li wêbê bigere' : 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => _isKmr ? 'Hevparkirinê' : 'هاوبەشکردن';

  @override
  String get clearButtonLabel => "";

  @override
  String get backButtonLabel => _isKmr ? 'Vegere' : 'گەڕان';

  @override
  String get cancelButtonLabel => _isKmr ? 'Betal bike' : 'هەڵوەشاندنەوە';
}
