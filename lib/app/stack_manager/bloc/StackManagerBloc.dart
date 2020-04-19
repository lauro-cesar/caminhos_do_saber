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


class StackManagerBloc extends Bloc<StackManagerEvent, StackManagerState> {
  StackManagerDataRepository _dataRepository = StackManagerDataRepository();

  StackManagerBloc();

  @override
  StackManagerState get initialState => StackManagerLoadedState();


  @override
  Stream<StackManagerState> mapEventToState(
      StackManagerEvent event,
      ) async* {

    switch (event.runtimeType) {
      case StackManagerSetMaxIndexEvent:

        print("New Max Index ${event.maxIndex}");

        final StackManagerModel stackManagerModel = await  _dataRepository.setMaxIndex(event.maxIndex);
        yield StackManagerNextPageLoadedState(newstackManagerModel:stackManagerModel);
        break;

      case  StackManagerNextPageEvent:
        final StackManagerModel stackManagerModel = await  _dataRepository.getNextPage(event.newPage);
        yield StackManagerNextPageLoadedState(newstackManagerModel:stackManagerModel);
        break;

      default:
        yield StackManagerNextPageLoadedState(newstackManagerModel:_dataRepository.stackManagerModel);

    }
  }
}