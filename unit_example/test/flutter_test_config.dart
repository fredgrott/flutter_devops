// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:async';

/// Inserted in test subfolder to each named_test dart file will be
/// automatically executed as a test. The test scanner upon finding this
/// file will assume that it should pass the signature of:
/// ```
/// Future<void> testExecutable(FutureOr<void> Function() testMain);
/// ```
/// execute it and pass to the main function of each named_test 
/// dart test file.
/// 
/// In Goldens we would return the GoldenToolkit config with some 
/// settings to configure GoldenToolkit.
/// 
/// @author Fredrick Allan Grott
Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  
  // you would turn this on, true if you have implemented custom intrinsics
  // ignore: unused_local_variable
  const bool debugCheckIntrinsicSizes = false;
}
