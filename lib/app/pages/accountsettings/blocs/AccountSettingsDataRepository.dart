/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/pages/accountsettings/blocs/barrel.dart';

class AccountSettingsDataRepository {
  final AccountSettingsLocalStorageDataProvider localStorageDataProvider = AccountSettingsLocalStorageDataProvider();
  final AccountSettingsRestDataProvider restDataProvider  =AccountSettingsRestDataProvider();
}