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


abstract class PageManagerEvent extends Equatable {
  int get newPage => 10;
  const PageManagerEvent();
  @override
  List<Object> get props => [];
}

class PageManagerLoadEvent extends PageManagerEvent {}

class PageManagerNextPageEvent extends PageManagerEvent {
  final int nextPage;
  const PageManagerNextPageEvent({
    @required this.nextPage
}) : assert(nextPage != null);

  @override
  int get newPage => nextPage;
  @override
  List<Object> get props => [nextPage];
}

class PageManagerShowPageEvent extends PageManagerEvent {
  final PageManagerModel pageManager;
  const PageManagerShowPageEvent({@required this.pageManager}) : assert(pageManager != null);
  @override
  List<Object> get props => [pageManager];
}
