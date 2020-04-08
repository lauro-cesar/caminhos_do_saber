/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';


class AccountSettingsDataRepository {
  final AccountSettingsLocalStorageDataProvider localStorageDataProvider = AccountSettingsLocalStorageDataProvider();
  final AccountSettingsRestDataProvider restDataProvider  =AccountSettingsRestDataProvider();



  Future<AccountSettings> getAccount() async {
    return AccountSettings();
  }

  Future<AccountSettings> getGuestAccount() async {
    return AccountSettings();
  }


}