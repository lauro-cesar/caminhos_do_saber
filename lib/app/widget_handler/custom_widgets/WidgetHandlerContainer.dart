/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetHandlerContainer extends StatelessWidget {
  final Widget child;
  const WidgetHandlerContainer({
    Key key,
    this.child
  }) : assert(child!= null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WidgetHandlerBloc, WidgetHandlerState>(
        condition: (previousState, state) {
          return (previousState != state);
        },
        builder: (context, state) {
          final handlerBloc = BlocProvider.of<WidgetHandlerBloc>(context);
          return
            Positioned(
              left: state.widgetHandlerModel.x,
              top: state.widgetHandlerModel.y,
              child: Container(
                child: Draggable(
                  onDragEnd: (DraggableDetails details) {
                    handlerBloc.add(WidgetHandlerDragEndEvent(newDetails: details));
                  },
                  child: child,
                  feedback: Opacity(
                    opacity: 0.2,
                    child: child,
                  ),
                  childWhenDragging: Opacity(
                    opacity: 0.4,
                    child: child,
                  ),
                ),
              ),
            );
        });
  }
}
