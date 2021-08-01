
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exercicios/Exercicio3.dart';


void main() {
  testWidgets('Application smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    Text textCounter1 = tester.firstWidget(find.byKey(Key('counter1')));
    Text textCounter2 = tester.firstWidget(find.byKey(Key('counter2')));

    // Verify that both counters starts at 0.
    expect(textCounter1.data, '0');
    expect(textCounter2.data, '0');
  });

  testWidgets('Counter 1 increment test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byKey(Key('button1')));
    await tester.pump();

    // Verify that counter1 has incremented.
    Text textCounter1 = tester.firstWidget(find.byKey(Key('counter1')));

    // Verify that counter1 text is 1.
    expect(textCounter1.data, '1');
  });

  testWidgets('Counter 2 increment test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.tap(find.byKey(Key('button2')));
    await tester.pump();

    // Verify that counter1 has incremented.
    Text textCounter2 = tester.firstWidget(find.byKey(Key('counter2')));

    // Verify that counter1 text is 1.
    expect(textCounter2.data, '1');
  });

}
