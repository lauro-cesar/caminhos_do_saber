/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:caminhos_do_saber/app/models.dart';



abstract class AccountManagerState extends Equatable {
  const AccountManagerState();
  AccountModel get account => AccountModel();
  @override
  List<Object> get props => [account];
}


class AccountManagerIsGuestState extends AccountManagerState {}
class AccountManagerIsAuthenticatingState extends AccountManagerState {}

class AccountManagerIsLoggedOffState extends AccountManagerState {}

class AccountManagerIsLoggedInState extends AccountManagerState {
  final AccountModel account;
  const AccountManagerIsLoggedInState({@required this.account}) : assert(account != null);
  @override
  List<Object> get props => [account];
}


class AccountManagerIsAuthenticatedState extends AccountManagerState {
  final AccountModel account;
  const AccountManagerIsAuthenticatedState({@required this.account}) : assert(account != null);
  @override
  List<Object> get props => [account];
}


