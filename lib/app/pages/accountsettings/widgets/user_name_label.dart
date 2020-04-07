/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountSettingsBloc, AccountSettingsState>(
    condition: (previousState, state) {
      return (previousState != state);
    },
        builder: (context, state) {
          return Text(
            "${state.account.firstName}",
          );
        });
  }
}
