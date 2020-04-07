/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/pages/accountsettings/blocs/barrel.dart';
import 'package:caminhos_do_saber/app/models/models.dart';


class AccountSettingsDataRepository {
  final AccountSettingsLocalStorageDataProvider localStorageDataProvider = AccountSettingsLocalStorageDataProvider();
  final AccountSettingsRestDataProvider restDataProvider  =AccountSettingsRestDataProvider();



  Future<AccountSettings> getAccount() async {

    return AccountSettings((b) => b
      ..userName="guest"
        ..firstName="Convidado"
    );

  }


  Future<AccountSettings> getGuestAccount() async {
    return AccountSettings((b) => b
      ..userName="guest"
      ..firstName="Convidado"
    );
  }


}