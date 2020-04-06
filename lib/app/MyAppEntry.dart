/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/pages/pages.dart';
import 'package:caminhos_do_saber/app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:caminhos_do_saber/app/AppKeys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/pages/contentcreator/blocs/barrel.dart';
import 'package:caminhos_do_saber/app/MainBlocDelegate.dart';

class MyApp extends StatelessWidget {
  MyApp({Key key});

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
        const Locale('pt-BR'), // Hebrew
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class MyAppEntry extends StatelessWidget {
  MyAppEntry(
      {Key key:AppKeys.myApp}
      ): super(key:key);

  @override
  Widget build(BuildContext context) {
    BlocSupervisor.delegate = MainBlocDelegate();
    final contentCreatorDataRepository = ContentCreatorDataRepository();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContentCreatorBloc>(
            create: (context) =>ContentCreatorBloc(contentCreatorDataRepository:contentCreatorDataRepository)..add(ContentCreatorStarted())
        ),
      ],
      child: MyApp(),
    );
  }
}
