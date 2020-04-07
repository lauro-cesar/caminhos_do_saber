/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class ContentCreatorEvent extends Equatable {
  const ContentCreatorEvent();
  @override
  List<Object> get props => [];
}


class ContentCreatorStarted extends ContentCreatorEvent {}
