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


abstract class PageEditorEvent extends Equatable {
  const PageEditorEvent();
  @override
  List<Object> get props => [];
}



class PageEditorStartEvent extends PageEditorEvent {}
class PageEditorLoadEvent extends PageEditorEvent {}
class PageEditorSavePageEvent extends PageEditorEvent {}
class PageEditorLoadPageEvent extends PageEditorEvent {}



