/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

library caminhos_do_saber;

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/keys.dart';



void runAppEntry() {
  BlocSupervisor.delegate = MainBlocDelegate();
  final contentCreatorDataRepository = ContentCreatorDataRepository();
  final accountSettingsDataRepository = AccountSettingsDataRepository();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AccountSettingsBloc>(
          create: (context) =>AccountSettingsBloc(accountSettingsDataRepository:accountSettingsDataRepository)..add(AccountSettingsEventStarted())
      ),
    ],
    child: MyApp(),
  ));
}




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    if (kReleaseMode) {
      exit(1);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  };
  runAppEntry();
}




