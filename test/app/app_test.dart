/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:caminhos_do_saber/app/MyApp.dart';
import 'package:caminhos_do_saber/app/pages/pages.dart';
import 'package:caminhos_do_saber/app/AppKeys.dart';

void main() {

  group('Testing My App', () {
    testWidgets('Check for HomePage', (WidgetTester tester) async {
      var myApp = MyApp();
      await tester.pumpWidget(myApp);
      expect(find.byKey(AppKeys.myApp), findsOneWidget);
      expect(myApp.key, equals(AppKeys.myApp));
      expect(find.byKey(AppKeys.homePage), findsOneWidget);
    });

  });
}
