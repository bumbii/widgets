import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:single_word_clickable_text/single_word_clickable_text.dart'; // Import thư viện của bạn

void main() {
  testWidgets('SingleWordClickableText widget test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleWordClickableText(
            text: 'Hello World',
            onWordPressed: (word) {
              print('Clicked on: $word');
            },
          ),
        ),
      ),
    );

    // Verify that the text widgets appear
    expect(find.text('Hello'), findsOneWidget);
    expect(find.text('World'), findsOneWidget);

    // Simulate a tap on the word "Hello"
    await tester.tap(find.text('Hello'));
    await tester.pump(); // Rebuild the widget after the state change

    // Check for state changes or side effects here
  });
}
