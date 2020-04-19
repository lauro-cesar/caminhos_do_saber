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

class ImageContainerBloc extends Bloc<ImageContainerEvent, ImageContainerState> {
  final ImageContainerDataRepository dataRepository;
  ImageContainerBloc({@required this.dataRepository}): assert(dataRepository != null);

  @override
  ImageContainerState get initialState => ImageContainerIdleState();

  @override
  Stream<ImageContainerState> mapEventToState(
      ImageContainerEvent event,
      ) async* {


    switch (event.runtimeType) {
      case ImageContainerStartEvent:
        print(event.y);
        print(event.x);
        ImageContainerModel imageContainerModel = await dataRepository.moveTo(event.x,event.y);
        yield ImageContainerMovedState(imageContainerModel:imageContainerModel);
        break;
      case ImageContainerDragEndEvent:
        ImageContainerModel imageContainerModel = await dataRepository.moveTo(event.details.offset.dx-100,event.details.offset.dy);
        yield ImageContainerMovedState(imageContainerModel:imageContainerModel);
        break;

      default:
        yield ImageContainerIdleState();
    }

  }

}