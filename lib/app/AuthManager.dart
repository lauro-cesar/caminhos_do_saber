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

class AuthManager extends StatefulWidget {
  @override
  State<AuthManager> createState() => _AuthManager();
}


class _AuthManager extends State<AuthManager> {

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountSettingsBloc, AccountSettingsState>(
        listener: (context, state) {
        },
        child: BlocBuilder<AccountSettingsBloc, AccountSettingsState>(
          condition: (previousState, state) {
            return (previousState != state);
          },
          builder: (context, state) {
            switch (state.runtimeType) {
              case AccountSettingsStateIsGuest:
                return ContentCreatorPage();
                break;
              case AccountSettingsStateIsAuthenticated:
                return HomePage();
                break;
              case AccountSettingsStateIsAuthenticating:
                return HomePage();
                break;
              default:
                return HomePage();
            }
          },
        )
    );
  }
}