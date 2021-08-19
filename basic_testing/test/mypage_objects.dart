// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:basic_testing/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:page_object/page_object.dart';

class MyAppPageObject extends PageObject {
  MyAppPageObject() : super(find.byType(MyApp));

  MyWidgetPageObject get home => MyWidgetPageObject(this);
}

/// This is an example of a PageObject. Here [MyWidgetPageObject] can be used as
/// a [Finder] and it can include child finders or other PageObjects.
class MyWidgetPageObject extends PageObject {
  MyWidgetPageObject(Finder finder)
      : super(find.descendant(of: finder, matching: find.byType(MyHomePage)));

  Finder get title =>
      find.descendant(of: this, matching: find.byKey(MyHomePage.titleKey));

  Finder get message =>
      find.descendant(of: this, matching: find.byKey(MyHomePage.messageKey));
}

/// This example was include to make the test feel more like a real scenario.
class HasText extends CustomMatcher {
  HasText(dynamic matcher) : super('Text data', 'data', matcher);

  @override
  Object featureValueOf(dynamic actual) {
    if (actual is Finder) {
      final element = actual.evaluate().single.widget;
      //final widget = element.widget;
      if (element is Text) {
        // ignore: cast_nullable_to_non_nullable
        return element.data as Object;
      } else {
        // ignore: avoid_escaping_inner_quotes
        throw Exception('HasText matcher can\'t be applied to $element');
      }
    } else {
      throw Exception(
          'HasText matcher can only be applied to a Finder object',);
    }
  }
}
