import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      locale.languageCode == 'ckb' || locale.languageCode == 'kmr';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(localeName: locale.languageCode),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  KurdishWidgetLocalizations({this.localeName = 'ckb'});

  final String localeName;
  bool get _isKmr => localeName == 'kmr';

  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection =>
      _isKmr ? TextDirection.ltr : TextDirection.rtl;

  @override
  String get copyButtonLabel => _isKmr ? 'Jêber bike' : 'کۆپی';

  @override
  String get cutButtonLabel => _isKmr ? 'Jê bibe' : 'بڕین';

  @override
  String get pasteButtonLabel => _isKmr ? 'Pêve bike' : 'پەیست';

  @override
  String get selectAllButtonLabel =>
      _isKmr ? 'Hemûyan hilbijêre' : 'دیاریکردنی هەموو';

  @override
  String get lookUpButtonLabel => _isKmr ? 'Li dû da gerrîn' : 'بە دوادا گەڕان';

  @override
  String get searchWebButtonLabel => _isKmr ? 'Li wêbê bigere' : 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => _isKmr ? 'Hevparkirinê' : 'هاوبەشکردن';

  @override
  String get reorderItemDown =>
      _isKmr ? 'Ber bi jêrê ve bibe' : 'بەرەو خوارەوە جوڵاندن';

  @override
  String get reorderItemLeft =>
      _isKmr ? 'Ber bi çepê ve bibe' : 'بەرەو چەپ جوڵاندن';

  @override
  String get reorderItemRight =>
      _isKmr ? 'Ber bi rastê ve bibe' : 'بەرەو ڕاست جوڵاندن';

  @override
  String get reorderItemToEnd => _isKmr ? 'Biçe dawîyê' : 'جوڵاندن بۆ کۆتایی';

  @override
  String get reorderItemToStart =>
      _isKmr ? 'Biçe destpêkê' : 'جوڵاندن بۆ سەرەتا';

  @override
  String get reorderItemUp =>
      _isKmr ? 'Ber bi jorê ve bibe' : 'بەرەو سەرەوە جوڵاندن';
}
