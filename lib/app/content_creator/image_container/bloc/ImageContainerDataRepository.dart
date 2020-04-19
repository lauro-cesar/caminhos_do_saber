/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';

class ImageContainerDataRepository {
  final ImageContainerLocalStorageDataProvider localStorageDataProvider = ImageContainerLocalStorageDataProvider();
  final ImageContainerRestDataProvider restDataProvider  = ImageContainerRestDataProvider();

  ImageContainerModel get imageContainerModel => ImageContainerModel((b) => b..x=50
  ..y=50);

  Future<ImageContainerModel> moveTo(double  x, double y) async {
    var m = await imageContainerModel.rebuild((b) => b..x=x
      ..y=y);
    return m;
  }
}