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


//Just to check for a general run...
void main() {

    testWidgets('Full App', (WidgetTester tester) async {
      runAppEntry() {
        BlocSupervisor.delegate = MainBlocDelegate();
        return(MultiBlocProvider(
          providers: [
            BlocProvider<AccountManagerBloc>(
                create: (context) =>AccountManagerBloc()..add(AccountManagerStartEvent())
            ),
          ],
          child: MyApp(),
        ));
      }

      await tester.pumpWidget(runAppEntry());
      var keys = AppKeys();

      expect(find.byKey(AppKeys.myApp), findsOneWidget);





  });
}
