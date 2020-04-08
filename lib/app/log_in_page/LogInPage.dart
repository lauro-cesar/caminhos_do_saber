/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:caminhos_do_saber/app/custom_widgets.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key key:AppKeys.loginPage}): super(key:key);

//
//  @override
//  Widget build(BuildContext context) {
//    return BlocBuilder<AccountSettingsBloc, AccountSettingsState>(
//        condition: (previousState, state) {
//          return (previousState != state);
//        },
//        builder: (context, state) {
//          return Text(
//            "${state.account.firstName}",
//          );
//        });
//  }
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UserNameLabel(),
            Text(
              'Log In Page',
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
      ),
    );
  }
}