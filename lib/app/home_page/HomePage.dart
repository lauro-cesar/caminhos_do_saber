/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/keys.dart';

class HomePage extends StatelessWidget {

  HomePage({Key key}) : super(key: key ?? AppKeys.homePage);

  @override
  Widget build(BuildContext context) {
    final homePageManagerDataRepository = PageManagerDataRepository();
    return MultiBlocProvider(
        providers: [
          BlocProvider<PageManagerBloc>(
            create: (context) => PageManagerBloc(
                pageManagerDataRepository: homePageManagerDataRepository)
              ..add(PageManagerLoadEvent()),
          ),
        ],
        child: Scaffold(
          body: HomePageManager()
        ));
  }
}
