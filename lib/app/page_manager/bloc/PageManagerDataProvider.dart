/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/models.dart';




class PageManagerLocalStorageDataProvider {
  PageManagerModel get pageManagerModel => PageManagerModel((b) => b..activePageIndex=0);



  Future<PageManagerModel> readData() async {
    return pageManagerModel;
  }
}


class PageManagerRestDataProvider {
  PageManagerModel get pageManagerModel => PageManagerModel((b) => b..activePageIndex=0);


  Future<PageManagerModel> readData() async {
    return pageManagerModel;
  }
}