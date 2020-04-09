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

abstract class ImageContainerEvent extends Equatable {
  DraggableDetails get details => DraggableDetails();
  double get x => 10;
  double get y => 40;
  int get index =>0;

  const ImageContainerEvent();
  @override
  List<Object> get props => [details];
}

class ImageContainerDraggingEvent extends ImageContainerEvent {}

class ImageContainerStartEvent extends ImageContainerEvent {
  final double newX;
  final double newY;
  final int  newIndex;
  const ImageContainerStartEvent({
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



class ImageContainerDragEndEvent extends ImageContainerEvent {
  final DraggableDetails newDetails;

  const ImageContainerDragEndEvent({
    @required this.newDetails
}) : assert(newDetails != null);

  @override
  DraggableDetails get details => newDetails;
}