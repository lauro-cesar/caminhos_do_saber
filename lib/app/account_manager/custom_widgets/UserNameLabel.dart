/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/keys.dart';

class UserNameLabel extends StatelessWidget {

  UserNameLabel({Key key}): super(key: key ?? AppKeys.userNameLabel);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountManagerBloc, AccountManagerState>(
    condition: (previousState, state) {
      return (previousState != state);
    },
        builder: (context, state) {
          print("Rebuild");
          return Text(
            "${state.account.firstName}",
          );
        });
  }
}
