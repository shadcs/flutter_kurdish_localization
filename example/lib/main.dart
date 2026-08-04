import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kurdish_localization_plus/flutter_kurdish_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _currentLocale = const Locale('ckb');

  void _changeLocale(Locale locale) {
    setState(() {
      _currentLocale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurdish Localization Example',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        KurdishCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ckb'), // Central Kurdish (Sorani)
        Locale('kmr'), // Kurmanji (standard ISO 639-3 code)
      ],
      locale: _currentLocale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Kurdish Localization Demo',
        onLocaleChange: _changeLocale,
        currentLocale: _currentLocale,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.onLocaleChange,
    required this.currentLocale,
  });

  final String title;
  final Function(Locale) onLocaleChange;
  final Locale currentLocale;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String currentDialect =
        widget.currentLocale.languageCode == 'ckb' ? 'Sorani' : 'Kurmanji';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          PopupMenuButton<Locale>(
            icon: const Icon(Icons.language),
            onSelected: widget.onLocaleChange,
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<Locale>(
                value: Locale('ckb'),
                child: Text('Central Kurdish (Sorani)'),
              ),
              const PopupMenuItem<Locale>(
                value: Locale('kmr'),
                child: Text('Kurmanji'),
              ),
              const PopupMenuItem<Locale>(
                value: Locale('en', 'US'),
                child: Text('English'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Dialect: $currentDialect',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text(
              MaterialLocalizations.of(context)
                  .aboutListTileTitle('Kurdish Localization'),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                        MaterialLocalizations.of(context).alertDialogLabel),
                    content: const Text(
                        'This is an example of Kurdish localization in action!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                            MaterialLocalizations.of(context).okButtonLabel),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        MaterialLocalizations.of(context).closeButtonTooltip),
                    action: SnackBarAction(
                      label: MaterialLocalizations.of(context).closeButtonLabel,
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
