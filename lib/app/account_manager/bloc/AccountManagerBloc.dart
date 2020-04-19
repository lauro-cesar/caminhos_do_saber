/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:bloc/bloc.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';


class AccountManagerBloc extends Bloc<AccountManagerEvent, AccountManagerState> {

  AccountManagerDataRepository _dataRepository;
  AccountManagerDataRepository get dataRepository => _dataRepository;

  AccountManagerBloc(){
    _dataRepository = AccountManagerDataRepository();
  }


  @override
  AccountManagerState get initialState => AccountManagerIsGuestState();


  @override
  Stream<AccountManagerState> mapEventToState(
      AccountManagerEvent event,
      ) async* {

    final bool hasToken = false;

    switch (event.runtimeType) {
      case AccountManagerLogInEvent:
        yield AccountManagerIsAuthenticatingState();
        break;
      case AccountManagerIsLoggedInState:
        final AccountModel account = await  _dataRepository.getAccount();
        yield AccountManagerIsLoggedInState(account:account);
        break;
      default:
        yield AccountManagerIsGuestState();
    }
  }
}