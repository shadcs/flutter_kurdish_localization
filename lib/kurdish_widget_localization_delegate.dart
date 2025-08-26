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
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get copyButtonLabel => _isKrm ? 'Jêber bike' : 'کۆپی';

  @override
  String get cutButtonLabel => _isKrm ? 'Jê bibe' : 'بڕین';

  @override
  String get pasteButtonLabel => _isKrm ? 'Pêve bike' : 'پەیست';

  @override
  String get selectAllButtonLabel => _isKrm ? 'Hemûyan hilbijêre' : 'دیاریکردنی هەموو';

  @override
  String get lookUpButtonLabel => 'بە دوادا گەڕان';

  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';

  @override
  String get reorderItemDown => 'بەرەو خوارەوە جوڵاندن';

  @override
  String get reorderItemLeft => 'بەرەو چەپ جوڵاندن';

  @override
  String get reorderItemRight => 'بەرەو ڕاست جوڵاندن';

  @override
  String get reorderItemToEnd => 'جوڵاندن بۆ کۆتایی';

  @override
  String get reorderItemToStart => 'جوڵاندن بۆ سەرەتا';

  @override
  String get reorderItemUp => 'بەرەو سەرەوە جوڵاندن';
}
