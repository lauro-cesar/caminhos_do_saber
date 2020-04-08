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




abstract class PageManagerState extends Equatable {
  const PageManagerState();
  PageManagerModel get pageManager => PageManagerModel((b) => b..activePageIndex=0);
  @override
  List<Object> get props => [pageManager];
}

class PageManagerNextPageLoadedState extends PageManagerState  {
  final PageManagerModel pageManager;
  const PageManagerNextPageLoadedState({@required this.pageManager}) : assert(pageManager != null);
  @override
  List<Object> get props => [pageManager];
}


class PageManagerLoadedState extends PageManagerState {}

class PageManagerShowingPageState extends PageManagerState {
  final PageManagerModel pageManager;
  const PageManagerShowingPageState({@required this.pageManager}) : assert(pageManager != null);
  @override
  List<Object> get props => [pageManager];
}
