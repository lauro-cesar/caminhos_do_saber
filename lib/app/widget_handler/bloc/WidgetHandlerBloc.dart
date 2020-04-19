/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:bloc/bloc.dart';
import 'package:caminhos_do_saber/app/models.dart';
import 'package:meta/meta.dart';
import 'package:caminhos_do_saber/app/blocs.dart';


class WidgetHandlerBloc extends Bloc<WidgetHandlerEvent, WidgetHandlerState> {
  WidgetHandlerDataRepository dataRepository = WidgetHandlerDataRepository();

  @override
  WidgetHandlerState get initialState => WidgetHandlerIdleState();

  @override
  Stream<WidgetHandlerState> mapEventToState(
      WidgetHandlerEvent event,
      ) async* {
    switch (event.runtimeType) {
      case WidgetHandlerDragEndEvent:
        WidgetHandlerModel widgetHandlerModel = await dataRepository.moveTo(event.details.offset.dx,event.details.offset.dy-100);
        yield WidgetHandlerMovedState(widgetHandlerModel:widgetHandlerModel);
        break;
      default:
        yield WidgetHandlerIdleState();
    }
  }

}