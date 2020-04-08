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

import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:caminhos_do_saber/app/blocs.dart';



void main() {

    testWidgets('Full App', (WidgetTester tester) async {
      runAppEntry() {
        BlocSupervisor.delegate = MainBlocDelegate();
        final accountSettingsDataRepository = AccountSettingsDataRepository();

        return(MultiBlocProvider(
          providers: [
            BlocProvider<AccountSettingsBloc>(
                create: (context) =>AccountSettingsBloc(accountSettingsDataRepository:accountSettingsDataRepository)..add(AccountSettingsEventStarted())
            ),
          ],
          child: MyApp(),
        ));
      }

      await tester.pumpWidget(runAppEntry());
      var keys = AppKeys();



      expect(find.byKey(AppKeys.myApp), findsOneWidget);
      expect(find.byKey(AppKeys.homePage), findsOneWidget);



  });
}
