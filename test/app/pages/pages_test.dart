/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:caminhos_do_saber/app/pages/pages.dart';
import 'package:caminhos_do_saber/app/AppKeys.dart';


void main() {
  group('Testing App Pages', () {

    testWidgets('Check for Login Page', (WidgetTester tester) async {

      var page = LogInPage();
      await tester.pumpWidget(MaterialApp(
          title: 'Login Page',
          home:page));
      expect(find.byKey(AppKeys.loginPage), findsOneWidget);
      expect(page.key, equals(AppKeys.loginPage));
    });


    testWidgets('Check for AccountSettings Page', (WidgetTester tester) async {
      var page = AccountSettingsPage();
      await tester.pumpWidget(MaterialApp(
          title: 'Account Page',
          home:page));
      expect(find.byKey(AppKeys.accountSettingsPage), findsOneWidget);
      expect(page.key, equals(AppKeys.accountSettingsPage));
    });

    testWidgets('Check for HomePage', (WidgetTester tester) async {
      var page = HomePage();
      await tester.pumpWidget(MaterialApp(
          title: 'Home Page',
          home:page));
      expect(find.byKey(AppKeys.homePage), findsOneWidget);
      expect(page.key, equals(AppKeys.homePage));
    });


    testWidgets('Check for ContentCreator HomePage', (WidgetTester tester) async {
      var contentCreatorPage = ContentCreatorPage();
      await tester.pumpWidget(MaterialApp(
          title: 'ContentCreator',
          home:contentCreatorPage));
      expect(find.byKey(AppKeys.contentCreatorPage), findsOneWidget);
      expect(contentCreatorPage.key, equals(AppKeys.contentCreatorPage));
    });

  });
}