/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

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


abstract class PageEditorState extends Equatable {
  const PageEditorState();
  @override
  List<Object> get props => [];
}


class PageEditorStartedState extends PageEditorState {}
class PageEditorLoadedState extends PageEditorState {}
class PageEditorIdleState extends PageEditorState {}
class PageEditorSavedState extends PageEditorState {}

