/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/material.dart';

import 'package:caminhos_do_saber/app/models.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/custom_widgets.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageEditorWidget extends StatelessWidget {

  PageEditorWidget();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PageEditorBloc>(
      create: (context) => PageEditorBloc()..add(PageEditorStartEvent()),
      child: Stack(
        children: <Widget>[
       Positioned(
            left: 10,
            top: 100,
            child: Container(
              width: 500,
                height: 500,
                child: AspectRatio(
                    aspectRatio: 1/1.4,
                    child:Container(color: Colors.red, child: PageContainerWidget())),
          ),
    )


        ],
      )
    );
  }
}