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

class ContentCreatorBloc extends Bloc<ContentCreatorEvent, ContentCreatorState> {
  final ContentCreatorDataRepository contentCreatorDataRepository;
  ContentCreatorBloc({@required this.contentCreatorDataRepository}): assert(contentCreatorDataRepository != null);

  @override
  ContentCreatorState get initialState => ContentCreatorIdle();

  @override
  Stream<ContentCreatorState> mapEventToState(
      ContentCreatorEvent event,
      ) async* {
        yield ContentCreatorIdle();
  }

}