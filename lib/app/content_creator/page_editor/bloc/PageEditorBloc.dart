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

class PageEditorBloc extends Bloc<PageEditorEvent, PageEditorState> {
  PageEditorBloc();
  @override
  PageEditorState get initialState => PageEditorLoadedState();

  @override
  Stream<PageEditorState> mapEventToState(
      PageEditorEvent event,
      ) async* {

    switch (event.runtimeType) {
      case PageEditorSavePageEvent:
        yield PageEditorSavedState();
        break;
      default:
        yield PageEditorIdleState();
    }
  }

}