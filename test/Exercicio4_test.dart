
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exercicios/Exercicio4.dart';


void main() {
  testWidgets('Application smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('My Maximum Bid: 0.0'), findsOneWidget);
    expect(find.text('My Maximum Bid: 1.0'), findsNothing);
  });

  testWidgets('Maximum Bid at 950.0 test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the '+' icon and trigger a frame.
    var button = find.byKey(Key('increaseBidButton'));
    for(int i = 0; i < 19; i++) {
      await tester.tap(button);
    }
    await tester.pump();

    // Verify that Maximum Bid is 950.0.
    expect(find.text('My Maximum Bid: 950.0'), findsOneWidget);
    expect(find.text('My Maximum Bid: 900.0'), findsNothing);
    expect(find.text('My Maximum Bid: 1000.0'), findsNothing);
  });

}
