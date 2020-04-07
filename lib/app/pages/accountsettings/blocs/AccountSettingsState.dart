/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:caminhos_do_saber/app/models/models.dart';



abstract class AccountSettingsState extends Equatable {
  final AccountSettings account;
  const AccountSettingsState({@required this.account});
  @override
  List<Object> get props => [];
}

class AccountSettingsStateIsGuest extends AccountSettingsState {
  final AccountSettings account;
  const AccountSettingsStateIsGuest({@required this.account}) : assert(account != null);
  @override
  List<Object> get props => [account];
}

class AccountSettingsStateIsAuthenticated extends AccountSettingsState {
  final AccountSettings account;
  const AccountSettingsStateIsAuthenticated({@required this.account}) : assert(account != null);
  @override
  List<Object> get props => [account];
}

class AccountSettingsStateIsAuthenticating extends AccountSettingsState {
  final AccountSettings account;
  const AccountSettingsStateIsAuthenticating({@required this.account}) : assert(account != null);
  @override
  List<Object> get props => [account];

}

