// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:basic_testing/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';



import 'package:flutter_test/flutter_test.dart';

Future<void> theAppIsRendered(WidgetTester tester) async {
  await loadAppFonts();
  // await tester.pumpWidgetBuilder(MyApp());

  final builder = DeviceBuilder()
    // ..overrideDevicesForAllScenarios(devices: [
    //     Device.phone,
    //   ])
    ..addScenario(widget: MyApp());
  await tester.pumpDeviceBuilder(builder);
 
}
