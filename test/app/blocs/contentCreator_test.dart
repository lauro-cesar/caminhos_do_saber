/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/foundation.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:caminhos_do_saber/app/blocs.dart';

void main() {



  group('Content creator  blocs', () {
    ContentCreatorBloc contentCreatorBloc;
    ContentCreatorDataRepository contentCreatorDataRepository;
    setUp(() {
      contentCreatorDataRepository =  ContentCreatorDataRepository();
      contentCreatorBloc = ContentCreatorBloc(contentCreatorDataRepository:contentCreatorDataRepository);
    });

    test('initial state is ContentCreatorIdle', () {
      expect(contentCreatorBloc.initialState, ContentCreatorIdle());
    });

  });
}