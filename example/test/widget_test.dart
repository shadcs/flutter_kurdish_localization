import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kurdish_localization_example/main.dart';

void main() {
  testWidgets('Kurdish localization smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('Current Dialect: Sorani'), findsOneWidget);
    expect(
      find.text('دەربارەی Kurdish Localization'),
      findsOneWidget,
    );
  });

  testWidgets('switching to Kurmanji updates the dialect', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    await tester.tap(find.byIcon(Icons.language));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Kurmanji'));
    await tester.pumpAndSettle();

    expect(find.text('Current Dialect: Kurmanji'), findsOneWidget);
  });

  testWidgets('counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}
