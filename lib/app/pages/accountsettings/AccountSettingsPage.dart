/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  AccountSettingsPage({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(Theme().data.textTheme.headline != null );
    assert(MainAxisAlignment.center != null );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Centro',
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
      ),
    );
  }
}
