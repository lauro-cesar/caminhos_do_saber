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


class StackManagerDataRepository {
  final StackManagerLocalStorageDataProvider localStorageDataProvider = StackManagerLocalStorageDataProvider();
  final StackManagerRestDataProvider restDataProvider  = StackManagerRestDataProvider();

  StackManagerModel stackManagerModel = StackManagerModel((b) => b..activePageIndex=0
  ..maxIndex=0);


  StackManagerModel setMaxIndex(int maxIndex) {
    print("Max Indeex: $maxIndex");
    stackManagerModel = stackManagerModel.rebuild((b) => b..maxIndex=maxIndex);
    return stackManagerModel;
  }



  Future<StackManagerModel> getNextPage(int nextPage) async {
    print("Max Index:  ${stackManagerModel.maxIndex}");
    print("Next Page $nextPage");

    if(nextPage <= stackManagerModel.maxIndex){
      stackManagerModel = stackManagerModel.rebuild((b) => b..activePageIndex=nextPage);
    } else {
      stackManagerModel = stackManagerModel.rebuild((b) => b..activePageIndex=0);
    }
    return stackManagerModel;
  }

  StackManagerModel getPageManager()  {
    return stackManagerModel;
  }





}