# Flutter Kurdish Localization 🌍

This package provides unofficial localization support for **Central Kurdish (Sorani)** and **Kurmanji** dialects.

**Supported Kurdish Dialects:**

- **CKB** - Central Kurdish/Sorani (کوردیی ناوەندی/سۆرانی)
- **KRM** - Kurmanji (کورمانجی)

---

### Getting Started

`import 'package:kurdish_localization_plus/flutter_kurdish_localization.dart';`

Add these delegates to _localizationsDelegates_ array:

- **KurdishMaterialLocalizations.delegate** - For material design components localization
- **KurdishWidgetLocalizations.delegate** - For text and UI directionality
- **KurdishCupertinoLocalizations.delegate** - For iOS-style components localization

```dart
return MaterialApp(
  localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    KurdishMaterialLocalizations.delegate,
    KurdishWidgetLocalizations.delegate,
    KurdishCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
  Locale('en', 'US'),
  Locale('ckb'), // Central Kurdish (Sorani, RTL)
  Locale('kmr'), // Kurmanji (LTR) - ISO 639-3 standard
  // or use Locale('krm') for compatibility
  ],
  locale: Locale('ckb'), // Default locale
)
```

### Supported Locales

| Language Code | Dialect         | Description                 | Note               |
| ------------- | --------------- | --------------------------- | ------------------ |
| `ckb`         | Central Kurdish | سۆرانی - Sorani Kurdish     | Standard           |
| `kmr`         | Kurmanji        | کورمانجی - Northern Kurdish | ISO 639-3 standard |

---

### Example

See the `/example` folder for a complete implementation showing both Kurdish dialects in action.

## Links

- [Source code](https://github.com/shadcs/flutter_kurdish_localization)
- [Facebook](https://www.facebook.com/shad.cs)
