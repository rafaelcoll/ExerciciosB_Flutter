
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exercicios/Exercicio2.dart';


void main() {
  testWidgets('Application smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });

  testWidgets('Counter increment test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add_circle));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter decrement test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.remove_circle));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('-1'), findsOneWidget);
  });
}
