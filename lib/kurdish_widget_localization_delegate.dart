import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get selectAllButtonLabel => 'دیاریکردنی هەموو';

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
