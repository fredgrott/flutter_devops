// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:basic_testing/app_vars.dart';
import 'package:basic_testing/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// I use eBays golden_toolkit
/// https://pub.dev/packages/golden_toolkit
///
/// This gets configured in the flutter-test_config file and only for widget tests.
/// As screens and complexities increase one will  mock or fake an app scenario
/// so one can test how screen should appear to than act as matcher to
/// test results.
///
///
/// @author Fredrick Allan Grott
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group('Basic Golden Tests ', () {
    testWidgets('Golden test', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await expectLater(find.byType(MyApp), matchesGoldenFile('main.png'));
    });
    testGoldens('DeviceBuilder ', (tester) async {
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
          
        ])
        ..addScenario(
          widget: MyHomePage(
            title: myAppTitle,
            message: myHomePageMessage,
          ),
          name: 'default page',
        );
      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, "demo page multiple screens");
    });
  });
}
