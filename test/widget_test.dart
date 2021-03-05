import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:starterkit/app.dart';

void main() {
  testWidgets('Hello World Screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(App());
    expect(find.text('Hello World'), findsOneWidget);
  });

  testWidgets('Counter page screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(App());

    await tester.tap(find.byKey(Key("bottom")));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byKey(Key("increment")));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byKey(Key("decrement")));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
}
