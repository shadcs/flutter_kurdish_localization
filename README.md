# Flutter Kurdish Localization 🌍

This package provides unofficial localization support for \*Central Kurdish Branch Sorani **(Kurdish: سۆرانی ,Soranî‎)\***.

---

### Getting Started

`import 'package:kurdish_localization_plus/flutter_kurdish_localization.dart';`

Add these two delegates to _localizationsDelegates_ array

**KurdishMaterialLocalizations.delegate** For text and dates localization
**KurdishWidgetLocalizations.delegate** For text and UI directionality

```dart
return MaterialApp(
	localizationsDelegates: [
		..
		KurdishMaterialLocalizations.delegate,
		KurdishWidgetLocalizations.delegate,
		...
	],
	supportedLocales: [ Locale('ckb') ]
	locale: Locale('ckb')
 )
```

---

### Translations are available now!

## Links

- [Source code](https://github.com/shadcs/flutter_kurdish_localization)
- [Facebook](https://www.facebook.com/shad.cs)
