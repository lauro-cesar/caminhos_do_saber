/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/models/accountsettings/AccountSettings.dart';
import 'package:flutter/foundation.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:caminhos_do_saber/app/blocs.dart';

void main() {

  group('Account Settings blocs', () {
    AccountSettingsBloc accountSettingsBloc;
    AccountSettingsDataRepository  accountSettingsDataRepository;
    setUp(() {
      accountSettingsDataRepository =  AccountSettingsDataRepository();
      accountSettingsBloc = AccountSettingsBloc(accountSettingsDataRepository:accountSettingsDataRepository);
    });



  });
}