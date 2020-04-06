/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */


import 'package:caminhos_do_saber/app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing App Pages', () {
    testWidgets('Testing Home Page Title', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage()));
      final titleFinder = find.text('T');
      expect(titleFinder, findsNothing);
    });
  });
}
