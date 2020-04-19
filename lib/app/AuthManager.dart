/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/blocs.dart';



class AuthManager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountManagerBloc, AccountManagerState>(
      condition: (previousState, state) {
        return (previousState != state);
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case AccountManagerIsLoggedInState:
            return HomePage();
            break;
          default:
            return ContentCreatorWidget();
        }
      },
    );
  }
}