/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:bloc/bloc.dart';
import 'package:caminhos_do_saber/app/pages/accountsettings/blocs/barrel.dart';
import 'package:meta/meta.dart';


class AccountSettingsBloc extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  final AccountSettingsDataRepository accountSettingsDataRepository;
  AccountSettingsBloc({@required this.accountSettingsDataRepository}): assert(accountSettingsDataRepository != null);

  @override
  AccountSettingsState get initialState => AccountSettingsStateIsGuest();

  @override
  Stream<AccountSettingsState> mapEventToState(
      AccountSettingsEvent event,
      ) async* {



    yield AccountSettingsStateIsGuest();
  }

}