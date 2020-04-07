/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';


class AccountSettingsBloc extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  final AccountSettingsDataRepository accountSettingsDataRepository;
  AccountSettingsBloc({@required this.accountSettingsDataRepository}): assert(accountSettingsDataRepository != null);

  @override
  AccountSettingsState get initialState => AccountSettingsStateIsGuest();


  @override
  Stream<AccountSettingsState> mapEventToState(
      AccountSettingsEvent event,
      ) async* {


    final bool hasToken = false;

    switch (event.runtimeType) {
      case AccountSettingsEventLogIn:
        yield AccountSettingsStateIsAuthenticating();
        break;
      case AccountSettingsEventLogIn:
        yield AccountSettingsStateIsAuthenticating();
        break;
      case AccountSettingsStateIsAuthenticated:
        final AccountSettings account = await  accountSettingsDataRepository.getAccount();
        print(account.firstName);
        yield AccountSettingsStateIsAuthenticated(account:account);
        break;
      default:
        yield AccountSettingsStateIsGuest();
    }
  }
}