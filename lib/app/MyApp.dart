/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/MainBlocDelegate.dart';
import 'package:caminhos_do_saber/app/AuthManager.dart';


class MyApp extends StatelessWidget {
  MyApp({Key key}):super(key: key ?? AppKeys.myApp);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('pt-BR'), // Brazilian Portuguese
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthManager(),
    );
  }
}

