// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dashbook/dashbook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void addTextStories(Dashbook dashbook) {
  dashbook
      .storiesOf('You pressed this many times Text')
      .decorator(CenterDecorator())
      .add("default", (context) => Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: const <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '1',
                    
                  ),
                ],
      ));
}
