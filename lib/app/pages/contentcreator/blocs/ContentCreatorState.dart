/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class ContentCreatorState extends Equatable {
  const ContentCreatorState();
  @override
  List<Object> get props => [];
}


class ContentCreatorIdle extends ContentCreatorState {}


