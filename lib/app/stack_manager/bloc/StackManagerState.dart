/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:caminhos_do_saber/app/models.dart';




abstract class StackManagerState extends Equatable {
  StackManagerModel get stackManagerModel => StackManagerModel();
  const StackManagerState();
  @override
  List<Object> get props => [stackManagerModel];
}


class StackManagerNextPageLoadedState extends StackManagerState  {
  final StackManagerModel newstackManagerModel;
  const StackManagerNextPageLoadedState({@required this.newstackManagerModel}) : assert(newstackManagerModel != null);
  @override
  StackManagerModel get stackManagerModel => newstackManagerModel;
  @override
  List<Object> get props => [stackManagerModel];
}

class StackManagerLoadedState extends StackManagerState {}


class StackManagerShowingPageState extends StackManagerState {
  final StackManagerModel newstackManagerModel;
  const StackManagerShowingPageState({@required this.newstackManagerModel}) : assert(newstackManagerModel != null);
  @override
  StackManagerModel get stackManagerModel => newstackManagerModel;
  @override
  List<Object> get props => [stackManagerModel];
}
