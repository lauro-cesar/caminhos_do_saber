/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/blocs.dart';

class CustomIndexedStack extends Stack  {

  CustomIndexedStack({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection textDirection,
    StackFit sizing = StackFit.loose,
    this.index = 0,
    List<Widget> children = const <Widget>[],
  }) : super(key: key, alignment: alignment, textDirection: textDirection, fit: sizing, children: children);

  final int index;

  @override
  void updateRenderObject(BuildContext context, RenderIndexedStack renderObject) {
    renderObject
      ..index = index
      ..alignment = alignment
      ..textDirection = textDirection ?? Directionality.of(context);
  }

//FIX-IT: This break S.O.L.I.D principles...

  @override
  RenderIndexedStack createRenderObject(BuildContext context) {
    final blocManager = BlocProvider.of<StackManagerBloc>(context);
    blocManager.add(StackManagerSetMaxIndexEvent(newMaxIndex: children.length-1));
    return RenderIndexedStack(
      index: index,
      alignment: alignment,
      textDirection: textDirection ?? Directionality.of(context),
    );
  }

}
