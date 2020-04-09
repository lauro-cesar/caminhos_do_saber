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



class ImageContainer extends StatelessWidget {
  final double x;
  final double y;
  final int index;

  const ImageContainer(this.x,this.y,this.index, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ImageContainerDataRepository dataRepository = ImageContainerDataRepository();
    return BlocProvider<ImageContainerBloc>(
      create: (context) => ImageContainerBloc(dataRepository:dataRepository)..add(ImageContainerStartEvent(newX: x,newY: y,newIndex:index)),
      child: ImageContainerHandler(),
    );
  }
}