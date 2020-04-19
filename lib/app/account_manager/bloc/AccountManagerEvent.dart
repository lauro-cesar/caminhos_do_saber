/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class AccountManagerEvent extends Equatable {
  const AccountManagerEvent();
  @override
  List<Object> get props => [];
}

class AccountManagerShowLogInPageEvent extends AccountManagerEvent {}
class AccountManagerShowSignInPageEvent extends AccountManagerEvent {}
class AccountManagerStartEvent extends AccountManagerEvent {}

class AccountManagerLogInEvent extends AccountManagerEvent {

}

class AccountManagerSignInEvent extends AccountManagerEvent {

}

class AccountManagerLogOutEvent extends AccountManagerEvent {}
class AccountManagerAccountRecoverEvent extends AccountManagerEvent {}
class AccountManagerSaveSettingsEvent extends AccountManagerEvent {}