// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dashbook/dashbook.dart';
import 'package:dashbook_buildvariants_ex/addscreenstories.dart';
import 'package:flutter/material.dart';

late final Dashbook appDashbook;

void initDashbook() {
  appDashbook = Dashbook.dualTheme(
    light: ThemeData(),
    dark: ThemeData.light(),
    title: "homeScreen",
  );

  addScreenStories(appDashbook);

  runApp(appDashbook);
}
