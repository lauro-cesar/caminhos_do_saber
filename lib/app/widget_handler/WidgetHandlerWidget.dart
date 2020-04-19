/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/custom_widgets.dart';



class WidgetHandlerWidget extends StatelessWidget {
  final Widget child;
  const WidgetHandlerWidget({
    Key key,
    this.child
    }) : assert(child!= null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WidgetHandlerBloc>(
      create: (context) => WidgetHandlerBloc()..add(WidgetHandlerDraggingEvent()),
      child: WidgetHandlerContainer(child:child)
    );
  }
}