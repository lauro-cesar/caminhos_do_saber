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
import 'package:caminhos_do_saber/app/models/models.dart';


class AccountSettingsBloc extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  final AccountSettingsDataRepository accountSettingsDataRepository;
  AccountSettingsBloc({@required this.accountSettingsDataRepository}): assert(accountSettingsDataRepository != null);
  var quest  = AccountSettings((b) => b
    ..userName="guest"
    ..firstName="Convidado"
  );
  @override
  AccountSettingsState get initialState => AccountSettingsStateIsGuest(account:quest);


  @override
  Stream<AccountSettingsState> mapEventToState(
      AccountSettingsEvent event,
      ) async* {


    final bool hasToken = false;

    switch (event.runtimeType) {
      case AccountSettingsEventLogIn:
        final AccountSettings account = await  accountSettingsDataRepository.getAccount();
        yield AccountSettingsStateIsAuthenticating(account:account);
        break;
      case AccountSettingsEventLogIn:
        final AccountSettings account = await  accountSettingsDataRepository.getAccount();
        print(account.firstName);
        yield AccountSettingsStateIsAuthenticating(account:account);
        break;
      case AccountSettingsStateIsAuthenticated:
        final AccountSettings account = await  accountSettingsDataRepository.getAccount();
        print(account.firstName);
        yield AccountSettingsStateIsAuthenticated(account:account);
        break;
      default:
        final AccountSettings account = await accountSettingsDataRepository.getGuestAccount();
        print(account.firstName);
        yield AccountSettingsStateIsGuest(account:account);
    }
  }
}