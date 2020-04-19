/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/models.dart';




class StackManagerLocalStorageDataProvider {
  StackManagerModel get pageManagerModel => StackManagerModel((b) => b..activePageIndex=0
  ..maxIndex=1);


  Future<StackManagerModel> readData() async {
    return pageManagerModel;
  }
}


class StackManagerRestDataProvider {
  StackManagerModel get pageManagerModel => StackManagerModel((b) => b..activePageIndex=0
  ..maxIndex=1);


  Future<StackManagerModel> readData() async {
    return pageManagerModel;
  }
}