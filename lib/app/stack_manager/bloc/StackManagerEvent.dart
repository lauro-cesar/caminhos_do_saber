/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:caminhos_do_saber/app/models.dart';


abstract class StackManagerEvent extends Equatable {
  int get newPage => 0;
  int get maxIndex => 1;
  const StackManagerEvent();
  @override
  List<Object> get props => [];
}

class StackManagerSetMaxIndexEvent extends StackManagerEvent {
  final int newMaxIndex;
  const StackManagerSetMaxIndexEvent({
    @required this.newMaxIndex
  }) : assert(newMaxIndex != null);


  @override
  int get maxIndex => newMaxIndex;
}

class StackManagerLoadEvent extends StackManagerEvent {}


class StackManagerNextPageEvent extends StackManagerEvent {
  final int nextPage;
  const StackManagerNextPageEvent({
    @required this.nextPage
}) : assert(nextPage != null);

  @override
  int get newPage => nextPage;
  @override
  List<Object> get props => [nextPage];
}


