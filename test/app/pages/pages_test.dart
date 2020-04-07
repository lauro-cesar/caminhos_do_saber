/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:caminhos_do_saber/app/pages/pages.dart';
import 'package:caminhos_do_saber/app/AppKeys.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/MainBlocDelegate.dart';
import 'package:caminhos_do_saber/app/MyApp.dart';

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

      BlocSupervisor.delegate = MainBlocDelegate();
      final contentCreatorDataRepository = ContentCreatorDataRepository();
      final accountSettingsDataRepository = AccountSettingsDataRepository();


      var pageHome= MultiBlocProvider(
        providers: [
          BlocProvider<ContentCreatorBloc>(
              create: (context) =>ContentCreatorBloc(contentCreatorDataRepository:contentCreatorDataRepository)..add(ContentCreatorStarted())
          ),
          BlocProvider<AccountSettingsBloc>(
              create: (context) =>AccountSettingsBloc(accountSettingsDataRepository:accountSettingsDataRepository)..add(AccountSettingsEventStarted())
          ),
        ],
        child: MyApp(),
      );

      await tester.pumpWidget(pageHome);
      expect(find.byKey(AppKeys.homePage), findsOneWidget);
    });




  });
}