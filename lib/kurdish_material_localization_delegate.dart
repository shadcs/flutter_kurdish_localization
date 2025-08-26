import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => 
      locale.languageCode == 'ckb' || locale.languageCode == 'krm';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = locale.languageCode;

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: localeName == 'krm' ? krmLocaleDatePatterns : kuLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(
          localeName == 'krm' ? krmDateSymbols : kuDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      KurdishMaterialLocalizations(
        localeName: localeName,
        fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('MM/DD/YY', localeName),
        compactDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        shortMonthDayFormat: intl.DateFormat('MM/DD', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'ar' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'ar'),
      ),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishMaterialLocalizations extends GlobalMaterialLocalizations {
  const KurdishMaterialLocalizations({
    String localeName = 'ckb',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : _localeName = localeName,
        super(
            localeName: localeName,
            shortDateFormat: shortDateFormat,
            compactDateFormat: compactDateFormat,
            shortMonthDayFormat: shortMonthDayFormat,
            fullYearFormat: fullYearFormat,
            mediumDateFormat: mediumDateFormat,
            longDateFormat: longDateFormat,
            yearMonthFormat: yearMonthFormat,
            decimalFormat: decimalFormat,
            twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat);

  final String _localeName;
  bool get _isKrm => _localeName == 'krm';
  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  String get aboutListTileTitleRaw => _isKrm 
      ? 'Der barê \$applicationName de' 
      : 'دەربارەی \$applicationName';

  @override
  String get alertDialogLabel => _isKrm ? 'Hişyarî' : 'ئاگادارکردنەوە';

  @override
  String get anteMeridiemAbbreviation => _isKrm ? 'BN' : 'پ.ن';

  @override
  String get backButtonTooltip => _isKrm ? 'Vegere' : 'دواوە';

  @override
  String get calendarModeButtonLabel => _isKrm 
      ? 'Biçe nav salnameye' 
      : 'گۆڕین بۆ ڕۆژژمێر';

  @override
  String get cancelButtonLabel => _isKrm ? 'Betal bike' : 'هەڵوەشاندنەوه';

  @override
  String get closeButtonLabel => _isKrm ? 'Bigire' : 'داخستن';

  @override
  String get closeButtonTooltip => _isKrm ? 'Bigire' : 'داخستن';

  @override
  String get collapsedIconTapHint => _isKrm ? 'Fireh bike' : 'فراوانکردن';

  @override
  String get continueButtonLabel => _isKrm ? 'Bidom' : 'بەردەوام بە';

  @override
  String get copyButtonLabel => _isKrm ? 'Jêber bike' : 'کۆپی';

  @override
  String get cutButtonLabel => _isKrm ? 'Jê bibe' : 'بڕین';

  @override
  String get dateHelpText => _isKrm ? 'dd/mm/yyyy' : 'mm/dd/yyyy';

  @override
  String get dateInputLabel => _isKrm ? 'Dîrok binivîse' : 'بەروار بنووسە';

  @override
  String get dateOutOfRangeLabel => _isKrm ? 'Derveyî sînorê' : 'دەرەوەی مەودایە';

  @override
  String get datePickerHelpText => _isKrm ? 'Dîrok hilbijêre' : 'بەروار دیاری بکە';

  @override
  String get dateRangeEndDateSemanticLabelRaw => _isKrm 
      ? 'Dîroka dawîbûnê \$fullDate' 
      : 'بەرواری کۆتایی \$fullDate';

  @override
  String get dateRangeEndLabel => _isKrm ? 'Dîroka dawîbûnê' : 'بەرواری کۆتایی';

  @override
  String get dateRangePickerHelpText => _isKrm ? 'Nîşankirina mîqdarê' : 'دەست نیشانکردنی مەودا';

  @override
  String get dateRangeStartDateSemanticLabelRaw => _isKrm
      ? 'Dîroka destpêkirinê \$fullDate'
      : 'بەرواری دەستپێکردن \$fullDate';

  @override
  String get dateRangeStartLabel => _isKrm ? 'Dîroka destpêkirinê' : 'بەرواری دەستپێکردن';

  @override
  String get dateSeparator => '/';

  @override
  String get deleteButtonTooltip => _isKrm ? 'Jê bibe' : 'سڕینەوە';

  @override
  String get dialModeButtonLabel => _isKrm 
      ? 'Biçe nav moda hilbijêrê daxwazkirinê' 
      : 'گۆڕین بۆ دۆخی هەڵبژێری داواکردن';

  @override
  String get dialogLabel => _isKrm ? 'Diyalog' : 'دیالۆگ';

  @override
  String get drawerLabel => _isKrm ? 'Lîsteya rêberiyê' : 'لیستی ڕێنیشاندەر';

  @override
  String get expandedIconTapHint => _isKrm ? 'Biçûk bike' : 'نوشتانەوە';

  @override
  String get hideAccountsLabel => _isKrm ? 'Ajimêran veşêre' : 'شاردنەوەی ئەژمێرەکان';

  @override
  String get inputDateModeButtonLabel => _isKrm ? 'Biçe nav nivîsandinê' : 'گۆڕین بۆ نووسین';

  @override
  String get inputTimeModeButtonLabel => _isKrm 
      ? 'Biçe nav moda têkirdina deqê' 
      : 'گۆڕین بۆ دۆخی تێکردنی دەق';

  @override
  String get invalidDateFormatLabel => _isKrm ? 'Format şaş e.' : 'فۆرماتی نادروست.';

  @override
  String get invalidDateRangeLabel => _isKrm ? 'Mîqdarek şaş.' : 'مەودایەکی نادروست.';

  @override
  String get invalidTimeLabel => _isKrm ? 'Demek rast binivîse' : 'کاتێکی دروست بنووسە';

  @override
  String get licensesPackageDetailTextOne => _isKrm ? '1 lîsans' : '١ مۆڵەت';

  @override
  String get licensesPackageDetailTextOther => _isKrm 
      ? '\$licenseCount lîsans' 
      : '\$licenseCount مۆڵەت';

  @override
  String get licensesPackageDetailTextZero => _isKrm ? 'Lîsans nîne' : 'مۆڵەت نیە';

  @override
  String get licensesPageTitle => _isKrm ? 'Lîsansan' : 'مۆڵەتەکان';

  @override
  String get modalBarrierDismissLabel => _isKrm ? 'Derxe' : 'دەرکردن';

  @override
  String get moreButtonTooltip => _isKrm ? 'Bêtir' : 'زیاتر';

  @override
  String get nextMonthTooltip => _isKrm ? 'Meha pêş' : 'مانگی داهاتوو';

  @override
  String get nextPageTooltip => _isKrm ? 'Rûpela pêş' : 'لاپەڕەی داهاتوو';

  @override
  String get okButtonLabel => _isKrm ? 'Temam' : 'باشه';

  @override
  String get openAppDrawerTooltip => _isKrm 
      ? 'Lîsteya rêberiyê veke' 
      : 'کردنەوەی لیستی ڕێنیشاندەر';

  @override
  String get pageRowsInfoTitleRaw => _isKrm 
      ? '\$firstRow–\$lastRow ji \$rowCount' 
      : '\$firstRow–\$lastRow لە \$rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw => _isKrm
      ? '\$firstRow–\$lastRow heta \$rowCount'
      : '\$firstRow–\$lastRow تا \$rowCount';

  @override
  String get pasteButtonLabel => _isKrm ? 'Pêve bike' : 'پەیست';

  @override
  String get popupMenuLabel => _isKrm ? 'Lîsteya derketî' : 'لیستی دەرکەوتە';

  @override
  String get postMeridiemAbbreviation => _isKrm ? 'PN' : 'د.ن';

  @override
  String get previousMonthTooltip => _isKrm ? 'Meha berê' : 'مانگی پێشوو';

  @override
  String get previousPageTooltip => _isKrm ? 'Rûpela berê' : 'لاپەڕەی پێشوو';

  @override
  String get refreshIndicatorSemanticLabel => _isKrm ? 'Nûkirinê' : 'نوێکردنەوە';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  List<String> get narrowWeekdays => ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'];

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => _isKrm ? '1 tîp maye' : '١ پیت ماوە';

  @override
  String get remainingTextFieldCharacterCountOther => _isKrm
      ? '\$remainingCount tîp mane'
      : '\$remainingCount پیتەکان ماون';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero => _isKrm 
      ? 'Tu tîpek nemaye' 
      : 'هیچ پیتێک نەماوەتەوە';

  @override
  String get reorderItemDown => _isKrm ? 'Biçe jêr' : 'بڕۆ خوارەوە';

  @override
  String get reorderItemLeft => _isKrm ? 'Biçe çep' : 'بڕۆ لای چەپ';

  @override
  String get reorderItemRight => _isKrm ? 'Biçe rast' : 'بڕۆ لای راست';

  @override
  String get reorderItemToEnd => _isKrm ? 'Biçe dawîyê' : 'بڕۆ کۆتایی';

  @override
  String get reorderItemToStart => _isKrm ? 'Biçe destpêkê' : 'بڕۆ سەرەتا';

  @override
  String get reorderItemUp => _isKrm ? 'Biçe jor' : 'بڕۆ سەرەوە';

  @override
  String get rowsPerPageTitle => _isKrm ? 'Rêz bo her rûpelê:' : 'ڕیزەکان بۆ هەر پەڕەیەک:';

  @override
  String get saveButtonLabel => _isKrm ? 'Tomar bike' : 'هەڵگرتن';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.tall;

  @override
  String get searchFieldLabel => _isKrm ? 'Lêgerîn' : 'گەڕان';

  @override
  String get selectAllButtonLabel => _isKrm ? 'Hemûyan hilbijêre' : 'هەموو هەڵبژێرە';

  @override
  String get selectYearSemanticsLabel => _isKrm ? 'Sal hilbijêre' : 'ساڵ هەڵبژێرە';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => _isKrm ? '1 dane hilbijartî' : '١ دانە هەڵبژێردرا';

  @override
  String get selectedRowCountTitleOther => _isKrm 
      ? '\$selectedRowCount hilbijartî' 
      : '\$selectedRowCount هەڵبژێردراو';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => _isKrm ? 'Tu nehatiye hilbijartin' : 'هیچ هەڵنەبژێراوە';

  @override
  String get showAccountsLabel => _isKrm ? 'Ajimêran nîşan bide' : 'پیشاندانی ئەژمێرەکان';

  @override
  String get showMenuTooltip => _isKrm ? 'Menû nîşan bide' : 'پیشاندانی پێڕست';

  @override
  String get signedInLabel => _isKrm ? 'Têketiye nav' : 'چوونە ژوورەوە';

  @override
  String get tabLabelRaw => _isKrm 
      ? 'Bindestî \$tabIndex ji \$tabCount' 
      : 'خشتەبەندی \$tabIndex لە \$tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerDialHelpText => _isKrm ? 'Dem hilbijêre' : 'کات هەڵبژێرە';

  @override
  String get timePickerHourLabel => _isKrm ? 'Demjimêr' : 'کاتژمێر';

  @override
  String get timePickerHourModeAnnouncement => _isKrm ? 'Demjimêr hilbijêre' : 'کاتژمێر هەڵبژێرە';

  @override
  String get timePickerInputHelpText => _isKrm ? 'Dem binivîse' : 'کات بنووسە';

  @override
  String get timePickerMinuteLabel => _isKrm ? 'Deqîqe' : 'خولەک';

  @override
  String get timePickerMinuteModeAnnouncement => _isKrm ? 'Deqîqe hilbijêre' : 'خولەک هەڵبژێرە';

  @override
  String get unspecifiedDate => _isKrm ? 'Dîrok' : 'بەروار';

  @override
  String get unspecifiedDateRange => _isKrm ? 'Mîqdara dîrokê' : 'مەودای بەروار';

  @override
  String get viewLicensesButtonLabel => _isKrm ? 'Lîsansan nîşan bide' : 'پیشاندانی مۆڵەتەکان';

  @override
  String get firstPageTooltip => _isKrm ? 'Rûpela yekem' : 'لاپه‌ڕه‌ی سه‌ره‌تا';

  @override
  String get lastPageTooltip => _isKrm ? 'Rûpela dawîn' : 'دوایین لاپه‌ڕه‌';

  @override
  String get keyboardKeyAlt => "Alt";

  @override
  String get keyboardKeyAltGraph => "Alt Graph";

  @override
  String get keyboardKeyBackspace => "Backspace";

  @override
  String get keyboardKeyCapsLock => "Caps Lock";

  @override
  String get keyboardKeyChannelDown => "Channel Down";

  @override
  String get keyboardKeyChannelUp => "Channel Up";

  @override
  String get keyboardKeyControl => "Control";

  @override
  String get keyboardKeyDelete => "Delete";

  String get keyboardKeyEisu => "Eisu";

  @override
  String get keyboardKeyEject => "Eject";

  @override
  String get keyboardKeyEnd => "End";

  @override
  String get keyboardKeyEscape => "Escape";

  @override
  String get keyboardKeyFn => "Fn";

  String get keyboardKeyHangulMode => "Hangul Mode";

  String get keyboardKeyHanjaMode => "Hanja Mode";

  String get keyboardKeyHankaku => "Hankaku";

  String get keyboardKeyHiragana => "Hiragana";

  String get keyboardKeyHiraganaKatakana => "Hiragana/Katakana";

  @override
  String get keyboardKeyHome => "Home";

  @override
  String get keyboardKeyInsert => "Insert";

  String get keyboardKeyKanaMode => "Kana Mode";

  String get keyboardKeyKanjiMode => "Kanji Mode";

  String get keyboardKeyKatakana => "Katakana";

  @override
  String get keyboardKeyMeta => "Meta";

  @override
  String get keyboardKeyMetaMacOs => "Meta (Mac OS)";

  @override
  String get keyboardKeyMetaWindows => "Meta (Windows)";

  @override
  String get keyboardKeyNumLock => "Num Lock";

  @override
  String get keyboardKeyNumpad0 => "Numpad 0";

  @override
  String get keyboardKeyNumpad1 => "Numpad 1";

  @override
  String get keyboardKeyNumpad2 => "Numpad 2";

  @override
  String get keyboardKeyNumpad3 => "Numpad 3";

  @override
  String get keyboardKeyNumpad4 => "Numpad 4";

  @override
  String get keyboardKeyNumpad5 => "Numpad 5";

  @override
  String get keyboardKeyNumpad6 => "Numpad 6";

  @override
  String get keyboardKeyNumpad7 => "Numpad 7";

  @override
  String get keyboardKeyNumpad8 => "Numpad 8";

  @override
  String get keyboardKeyNumpad9 => "Numpad 9";

  @override
  String get keyboardKeyNumpadAdd => "Numpad Add";

  @override
  String get keyboardKeyNumpadComma => "Numpad Comma";

  @override
  String get keyboardKeyNumpadDecimal => "Numpad Decimal";

  @override
  String get keyboardKeyNumpadDivide => "Numpad Divide";

  @override
  String get keyboardKeyNumpadEnter => "Numpad Enter";

  @override
  String get keyboardKeyNumpadEqual => "Numpad Equal";

  @override
  String get keyboardKeyNumpadMultiply => "Numpad Multiply";

  @override
  String get keyboardKeyNumpadParenLeft => "Numpad Paren Left";

  @override
  String get keyboardKeyNumpadParenRight => "Numpad Paren Right";

  @override
  String get keyboardKeyNumpadSubtract => "Numpad Subtract";

  @override
  String get keyboardKeyPageDown => "Page Down";

  @override
  String get keyboardKeyPageUp => "Page Up";

  @override
  String get keyboardKeyPower => "Power";

  @override
  String get keyboardKeyPowerOff => "Power Off";

  @override
  String get keyboardKeyPrintScreen => "Print Screen";

  String get keyboardKeyRomaji => "Romaji";

  @override
  String get keyboardKeyScrollLock => "Scroll Lock";

  @override
  String get keyboardKeySelect => "Select";

  @override
  String get keyboardKeySpace => "Space";

  String get keyboardKeyZenkaku => "Zenkaku";

  String get keyboardKeyZenkakuHankaku => "Zenkaku/Hankaku";

  @override
  String get menuBarMenuLabel => _isKrm ? "Lîsteya menûyê" : "مینیوی";

  @override
  String get bottomSheetLabel => _isKrm ? 'Rûpela jêrîn' : 'لاپەڕەی خوارەوە';

  @override
  String get currentDateLabel => _isKrm ? "Dîroka niha" : "بەرواری ئێستا";

  @override
  String get keyboardKeyShift => _isKrm ? "Guhertin" : "گۆڕین";

  @override
  String get scrimLabel => _isKrm ? 'Belav nan' : 'بەلاوە نان';

  @override
  String get scrimOnTapHintRaw => _isKrm ? 'Pence binê bo derxistinê' : 'پەنجە بنێ بۆ دەرکردن';

  @override
  String get collapsedHint => _isKrm ? 'Darma' : 'داڕما';

  @override
  String get expandedHint => _isKrm ? 'Firawan bû' : 'فراوانتر بوو';

  @override
  String get expansionTileCollapsedHint => _isKrm ? 'Darma' : 'داڕما';

  @override
  String get expansionTileCollapsedTapHint => _isKrm ? 'Bo firawankirinê pence binê' : 'بۆ فراوانکردن پەنجە بنێ';

  @override
  String get expansionTileExpandedHint => _isKrm ? 'Firawan kirawe' : 'فراوانتر کراوە';

  @override
  String get expansionTileExpandedTapHint => _isKrm ? 'Pence binê bo ku firawan bît' : 'پەنجە بنێ بۆ ئەوەی فراوانبێت';

  @override
  String get scanTextButtonLabel => _isKrm ? 'Deqa skankirinê' : 'دەقی سکانکردن';

  @override
  String get lookUpButtonLabel => _isKrm ? 'Li dû da gerrîn' : 'بە دوادا گەڕان';

  @override
  String get menuDismissLabel => _isKrm ? 'Belav nan' : 'بەلاوە نان';

  @override
  String get searchWebButtonLabel => _isKrm ? 'Li wêbê bigere' : 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => _isKrm ? 'Hevparkirinê' : 'هاوبەشکردن';

  @override
  String get clearButtonTooltip => "";

  @override
  String get selectedDateLabel => "";
}

const kuDateSymbols = {
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
const kuLocaleDatePatterns = {
  'd': 'd', // DAY
  'E': 'ccc', // ABBR_WEEKDAY
  'EEEE': 'cccc', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'L', // NUM_MONTH
  'Md': 'd/‏M', // NUM_MONTH_DAY
  'MEd': 'EEE، d/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M‏/y', // YEAR_NUM_MONTH
  'yMd': 'd‏/M‏/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d/‏M/‏y', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'MMM y', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE، d MMM y', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'MMMM y', // YEAR_MONTH
  'yMMMMd': 'd MMMM y', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE، d MMMM y', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y', // YEAR_QUARTER
  'H': 'HH', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'h a', // HOUR
  'jm': 'h:mm a', // HOUR_MINUTE
  'jms': 'h:mm:ss a', // HOUR_MINUTE_SECOND
  'jmv': 'h:mm a v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'h:mm a z', // HOUR_MINUTETZ
  'jz': 'h a z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ' // ABBR_UTC_TZ
};

// KRM (Kurmanji) Date Symbols
const krmDateSymbols = {
  'NAME': 'krm',
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
  'WEEKDAYS': [
    'Yekşem',
    'Duşem',
    'Sêşem',
    'Çarşem',
    'Pêncşem',
    'În',
    'Şemî'
  ],
  'STANDALONEWEEKDAYS': [
    'Yekşem',
    'Duşem',
    'Sêşem',
    'Çarşem',
    'Pêncşem',
    'În',
    'Şemî'
  ],
  'SHORTWEEKDAYS': [
    'Yek',
    'Du',
    'Sê',
    'Çar',
    'Pênc',
    'În',
    'Şem'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'Yek',
    'Du',
    'Sê',
    'Çar',
    'Pênc',
    'În',
    'Şem'
  ],
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

const krmLocaleDatePatterns = {
  'd': 'd', // DAY
  'E': 'ccc', // ABBR_WEEKDAY
  'EEEE': 'cccc', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'L', // NUM_MONTH
  'Md': 'd/‏M', // NUM_MONTH_DAY
  'MEd': 'EEE، d/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M‏/y', // YEAR_NUM_MONTH
  'yMd': 'd‏/M‏/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d/‏M/‏y', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'MMM y', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE، d MMM y', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'MMMM y', // YEAR_MONTH
  'yMMMMd': 'd MMMM y', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE، d MMMM y', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y', // YEAR_QUARTER
  'H': 'HH', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'h a', // HOUR
  'jm': 'h:mm a', // HOUR_MINUTE
  'jms': 'h:mm:ss a', // HOUR_MINUTE_SECOND
  'jmv': 'h:mm a v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'h:mm a z', // HOUR_MINUTETZ
  'jz': 'h a z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ' // ABBR_UTC_TZ
};
