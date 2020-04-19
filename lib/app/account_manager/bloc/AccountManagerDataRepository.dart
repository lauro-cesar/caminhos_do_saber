/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';


class AccountManagerDataRepository {
  final AccountManagerLocalStorageDataProvider localStorageDataProvider = AccountManagerLocalStorageDataProvider();
  final AccountManagerRestDataProvider restDataProvider  =AccountManagerRestDataProvider();



  Future<AccountModel> getAccount() async {
    return AccountModel();
  }

  Future<AccountModel> getGuestAccount() async {
    return AccountModel();
  }


}