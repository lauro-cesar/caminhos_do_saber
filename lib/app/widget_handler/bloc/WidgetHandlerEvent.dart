/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class WidgetHandlerEvent extends Equatable {
  DraggableDetails get details => DraggableDetails();
  double get x => 10;
  double get y => 40;
  int get index =>0;

  const WidgetHandlerEvent();
  @override
  List<Object> get props => [details];
}

class WidgetHandlerDraggingEvent extends WidgetHandlerEvent {}

class WidgetHandlerStartEvent extends WidgetHandlerEvent {
  final double newX;
  final double newY;
  final int  newIndex;
  const WidgetHandlerStartEvent({
    @required this.newX,
    @required this.newY,
    @required this.newIndex,
  }): assert(newX != null || newY != null || newIndex !=  null);

  @override
  double get x =>  newX;
  @override
  double get y =>  newY;
  @override
  int get index => newIndex;
}



class WidgetHandlerDragEndEvent extends WidgetHandlerEvent {
  final DraggableDetails newDetails;

  const WidgetHandlerDragEndEvent({
    @required this.newDetails
  }) : assert(newDetails != null);

  @override
  DraggableDetails get details => newDetails;
}