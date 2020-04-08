/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';
import 'package:flutter/cupertino.dart';


class PageManagerDataRepository {
  final PageManagerLocalStorageDataProvider localStorageDataProvider = PageManagerLocalStorageDataProvider();
  final PageManagerRestDataProvider restDataProvider  = PageManagerRestDataProvider();
  PageManagerModel get pageManagerModel => PageManagerModel((b) => b..activePageIndex=0);

  
  Future<PageManagerModel> getNextPage(int nextPage) async {
    var m = await pageManagerModel.rebuild((b) => b..activePageIndex=nextPage);
    return m;
  }

  Future<PageManagerModel> getPageManager() async {
    return pageManagerModel;
  }





}