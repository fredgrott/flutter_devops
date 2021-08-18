// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:basic_coverage/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    // ignore: unused_local_variable

    TestWidgetsFlutterBinding.ensureInitialized();
  });

  group('Counter increments by one', () {
    testWidgets('increment counter by one', (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(const MyApp());
      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      await widgetTester.tap(find.byIcon(Icons.add));
      await widgetTester.pump();

      // Verify that our counter has incremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}
