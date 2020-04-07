/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:caminhos_do_saber/app/pages/pages.dart';
import 'package:caminhos_do_saber/app/widgets/widgets.dart';
import 'package:caminhos_do_saber/app/blocs.dart';

class AuthRouter extends StatefulWidget {
  @override
  State<AuthRouter> createState() => _AuthRouter();
}


class _AuthRouter extends State<AuthRouter> {

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
                return HomePage();
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