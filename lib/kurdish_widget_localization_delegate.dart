import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => 
      locale.languageCode == 'ckb' || locale.languageCode == 'krm';

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
  bool get _isKrm => localeName == 'krm';
  
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => _isKrm ? TextDirection.ltr : TextDirection.rtl;

  @override
  String get copyButtonLabel => _isKrm ? 'Jêber bike' : 'کۆپی';

  @override
  String get cutButtonLabel => _isKrm ? 'Jê bibe' : 'بڕین';

  @override
  String get pasteButtonLabel => _isKrm ? 'Pêve bike' : 'پەیست';

  @override
  String get selectAllButtonLabel => _isKrm ? 'Hemûyan hilbijêre' : 'دیاریکردنی هەموو';

  @override
  String get lookUpButtonLabel => _isKrm ? 'Li dû da gerrîn' : 'بە دوادا گەڕان';

  @override
  String get searchWebButtonLabel => _isKrm ? 'Li wêbê bigere' : 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => _isKrm ? 'Hevparkirinê' : 'هاوبەشکردن';

  @override
  String get reorderItemDown => _isKrm ? 'Ber bi jêrê ve bibe' : 'بەرەو خوارەوە جوڵاندن';

  @override
  String get reorderItemLeft => _isKrm ? 'Ber bi çepê ve bibe' : 'بەرەو چەپ جوڵاندن';

  @override
  String get reorderItemRight => _isKrm ? 'Ber bi rastê ve bibe' : 'بەرەو ڕاست جوڵاندن';

  @override
  String get reorderItemToEnd => _isKrm ? 'Biçe dawîyê' : 'جوڵاندن بۆ کۆتایی';

  @override
  String get reorderItemToStart => _isKrm ? 'Biçe destpêkê' : 'جوڵاندن بۆ سەرەتا';

  @override
  String get reorderItemUp => _isKrm ? 'Ber bi jorê ve bibe' : 'بەرەو سەرەوە جوڵاندن';
}
