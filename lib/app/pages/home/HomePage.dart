/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/AppKeys.dart';

class HomePage extends StatelessWidget {

  HomePage({Key key:AppKeys.homePage}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'HomePage',
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
      ),
    );
  }
}
