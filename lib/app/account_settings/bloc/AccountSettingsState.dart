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
  const AccountSettingsState();
  AccountSettings get account => AccountSettings();
  @override
  List<Object> get props => [account];
}

class AccountSettingsStateIsGuest extends AccountSettingsState {}
class AccountSettingsStateIsAuthenticating extends AccountSettingsState {}


class AccountSettingsStateIsAuthenticated extends AccountSettingsState {
  final AccountSettings account;
  const AccountSettingsStateIsAuthenticated({@required this.account}) : assert(account != null);
  @override
  List<Object> get props => [account];
}


