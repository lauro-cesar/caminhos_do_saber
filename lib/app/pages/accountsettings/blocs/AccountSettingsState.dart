/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AccountSettingsState extends Equatable {
  const AccountSettingsState();
  @override
  List<Object> get props => [];
}

class AccountSettingsStateIsGuest extends AccountSettingsState {}
class AccountSettingsStateIsAuthenticated extends AccountSettingsState {}


