/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/blocs.dart';

class AccountManagerWidget extends StatelessWidget {

  AccountManagerWidget({Key key}): super(key: key ?? AppKeys.accountManager);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<StackManagerBloc>(
            create: (context) => StackManagerBloc()..add(StackManagerLoadEvent()),
          ),
        ],
        child:SignInManagerWidget()
    );
  }
}
