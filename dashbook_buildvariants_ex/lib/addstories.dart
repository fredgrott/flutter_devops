// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void addStories(Dashbook dashbook) {
  dashbook.storiesOf('ElevatedButton').decorator(CenterDecorator()).add(
        'add',
        (ctx) => ElevatedButton(
          child: const Icon(Icons.add),
          // ignore: no-empty-block
          onPressed: () {},
        ),
      );
}