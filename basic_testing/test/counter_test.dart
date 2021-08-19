// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:golden_toolkit/golden_toolkit.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_icon.dart';
import './step/the_app_is_rendered.dart';
import './step/screenshot_verified.dart';

void main() {

  setUpAll(() async {
    // ignore: unused_local_variable

    TestWidgetsFlutterBinding.ensureInitialized();
  });


  
  group('Counter', () {
    testWidgets('Initial counter value is 0', (tester) async {
      await theAppIsRunning(tester);
      await iSeeText(tester, '0');
    });
    testWidgets('Tap the Plus icon increments the counter', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, '1');
    });
    testGoldens('Primary swatch color is blue', (tester) async {
      await theAppIsRendered(tester);
      await screenshotVerified(tester, 'counter');
    });
  });
}
