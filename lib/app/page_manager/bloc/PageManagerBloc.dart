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


class PageManagerBloc extends Bloc<PageManagerEvent, PageManagerState> {
  final PageManagerDataRepository pageManagerDataRepository;
  PageManagerBloc({@required this.pageManagerDataRepository}): assert(pageManagerDataRepository != null);

  @override
  PageManagerState get initialState => PageManagerLoadedState();


  @override
  Stream<PageManagerState> mapEventToState(
      PageManagerEvent event,
      ) async* {

    switch (event.runtimeType) {
      case  PageManagerNextPageEvent:
        final PageManagerModel pageManagerModel = await  pageManagerDataRepository.getNextPage(event.newPage);
        print(pageManagerModel.activePageIndex);
        print(event.newPage);
        yield PageManagerNextPageLoadedState(pageManager:pageManagerModel);
        break;
      case PageManagerShowPageEvent:
        final PageManagerModel pageManagerModel = await  pageManagerDataRepository.getPageManager();
        yield PageManagerLoadedState();
        break;
      default:
        yield PageManagerLoadedState();
    }
  }
}