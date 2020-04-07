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
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/MainBlocDelegate.dart';
import 'package:caminhos_do_saber/app/MyApp.dart';


void main() {

    testWidgets('Full App', (WidgetTester tester) async {
      runAppEntry() {
        BlocSupervisor.delegate = MainBlocDelegate();
        final contentCreatorDataRepository = ContentCreatorDataRepository();
        final accountSettingsDataRepository = AccountSettingsDataRepository();
        final pageManagerDataRepository = PageManagerDataRepository();

        return(MultiBlocProvider(
          providers: [
            BlocProvider<PageManagerBloc>(
              create: (context) => PageManagerBloc(pageManagerDataRepository:pageManagerDataRepository)..add(PageManagerLoadEvent()),
            ),
            BlocProvider<ContentCreatorBloc>(
                create: (context) =>ContentCreatorBloc(contentCreatorDataRepository:contentCreatorDataRepository)..add(ContentCreatorStarted())
            ),
            BlocProvider<AccountSettingsBloc>(
                create: (context) =>AccountSettingsBloc(accountSettingsDataRepository:accountSettingsDataRepository)..add(AccountSettingsEventStarted())
            ),
          ],
          child: MyApp(),
        ));
      }

      await tester.pumpWidget(runAppEntry());
      expect(find.byKey(AppKeys.homePage), findsOneWidget);


  });
}
