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


abstract class WidgetHandlerState extends Equatable {
  const WidgetHandlerState();

  WidgetHandlerModel get widgetHandlerModel => WidgetHandlerModel();

//  (b) => b..w=100
//    ..x=100
//    ..y=100
//    ..h=100
//    ..index=0);
  @override
  List<Object> get props => [widgetHandlerModel];
}

class WidgetHandlerIdleState extends WidgetHandlerState {}

class WidgetHandlerMovedState extends WidgetHandlerState {
  final WidgetHandlerModel widgetHandlerModel;
  const WidgetHandlerMovedState({@required this.widgetHandlerModel}) : assert(widgetHandlerModel != null);
  @override
  List<Object> get props => [widgetHandlerModel];
}