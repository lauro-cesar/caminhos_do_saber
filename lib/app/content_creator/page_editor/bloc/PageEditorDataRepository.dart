/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/models.dart';


class PageEditorDataRepository {
  final PageEditorLocalStorageDataProvider localStorageDataProvider = PageEditorLocalStorageDataProvider();
  final PageEditorRestDataProvider restDataProvider  = PageEditorRestDataProvider();

}