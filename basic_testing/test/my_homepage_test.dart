// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:basic_testing/app_vars.dart';
import 'package:basic_testing/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mypage_objects.dart';

void main() {
  setUpAll(() async {
    // ignore: unused_local_variable

    TestWidgetsFlutterBinding.ensureInitialized();
  });

  group("MyHomePage has a title and message", () {
    testWidgets(
      'My home widget has a title and message, NOT using PageObject',
      (WidgetTester tester) async {
        await tester.pumpWidget(MyMockMyApp(
          MyHomePage(title: myAppTitle, message: myHomePageMessage),
        ));
        //final titleFinder = find.descendant(
        //of: find.descendant(
        // of: find.byType(MyApp),
        //  matching: find.byType(MyHomePage),
        // ),
        // matching: find.byKey(MyHomePage.titleKey),
        //);
        //final messageFinder = find.descendant(
        // of: find.descendant(
        //   of: find.byType(MyApp),
        //  matching: find.byType(MyHomePage),
        //),
        //matching: find.byKey(MyHomePage.messageKey),
        // );
        final titleFinder = find.text(myAppTitle);
        final messageFinder = find.text(myHomePageMessage);
        expect(titleFinder, allOf(findsOneWidget, HasText(myAppTitle)));
        expect(
          messageFinder,
          allOf(findsOneWidget, HasText(myHomePageMessage)),
        );
      },
    );
  });
}

// Note: Due to me using the Flutter Platform Widgets cross platform pattern there
//       will be times when  I need to run a pretend MyApp to mock things. Also
//       at times will want a pattern of testing to use to fast prototype screens
//       so I use this pattern.
class MyMockMyApp extends StatelessWidget {
  const MyMockMyApp(
    this.home, {
    Key? key,
  }) : super(key: key);

  final MyHomePage home;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myAppTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: home,
    );
  }
}
