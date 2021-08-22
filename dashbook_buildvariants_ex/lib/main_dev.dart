// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:dashbook_buildvariants_ex/app_vars.dart';
import 'package:dashbook_buildvariants_ex/main.dart';

void main() {
  Constants().setEnvironment(Environment.dev);
  mainDelegate();
}
