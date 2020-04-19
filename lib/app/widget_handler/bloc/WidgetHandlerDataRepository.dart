/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';


class WidgetHandlerDataRepository {
  final WidgetHandlerLocalStorageDataProvider localStorageDataProvider = WidgetHandlerLocalStorageDataProvider();
  final WidgetHandlerRestDataProvider restDataProvider  = WidgetHandlerRestDataProvider();

  WidgetHandlerModel get widgetHandlerModel => WidgetHandlerModel((b) => b..x=50
    ..y=50);

  Future<WidgetHandlerModel> moveTo(double  x, double y) async {
    var m = await widgetHandlerModel.rebuild((b) => b..x=x
      ..y=y);
    return m;
  }
}