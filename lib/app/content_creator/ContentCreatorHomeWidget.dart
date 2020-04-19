/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/blocs.dart';


class ContentCreatorHomeWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageEditorWidget()
    );
  }
}