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


abstract class ImageContainerState extends Equatable {
  const ImageContainerState();
  ImageContainerModel get imageContainerModel => ImageContainerModel((b) => b..w=100
  ..x=100
  ..y=100
  ..h=100
  ..index=0
  ..pageId=0);
  @override
  List<Object> get props => [imageContainerModel];
}

class ImageContainerIdleState extends ImageContainerState {}

class ImageContainerMovedState extends ImageContainerState {
  final ImageContainerModel imageContainerModel;
  const ImageContainerMovedState({@required this.imageContainerModel}) : assert(imageContainerModel != null);
  @override
  List<Object> get props => [imageContainerModel];
}