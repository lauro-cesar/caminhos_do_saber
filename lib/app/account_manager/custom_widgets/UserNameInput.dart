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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class UserNameInput extends StatelessWidget {
  final _usernameController = TextEditingController();
  final onButtonPressCallback;
  final String labelText;

  UserNameInput({Key key,@required this.onButtonPressCallback,@required this.labelText}) : assert(labelText !=null), assert(onButtonPressCallback != null), super(key: key ?? AppKeys.userNameInput);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountManagerBloc, AccountManagerState>(
        condition: (previousState, state) {
      return (previousState != state);
      },

        builder: (context, state) {

      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: '$labelText'),
              controller: _usernameController,
            ),
              FlatButton(
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(10.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                onButtonPressCallback();
              },
              child:
        Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text("Próximo"),
              IconButton(
                icon: Icon(FontAwesomeIcons.arrowAltCircleRight),
                tooltip: 'Continuar',
              )
              ],
            )
              )
          ]);
    });
  }
}
