/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class AccountSettingsEvent extends Equatable {
  const AccountSettingsEvent();
  @override
  List<Object> get props => [];
}


class AccountSettingsEventLogIn extends AccountSettingsEvent {}
class AccountSettingsEventSignIn extends AccountSettingsEvent {}
class AccountSettingsEventLogOut extends AccountSettingsEvent {}
class AccountSettingsEventAccountRecover extends AccountSettingsEvent {}
class AccountSettingsEventSaveSettings extends AccountSettingsEvent {}