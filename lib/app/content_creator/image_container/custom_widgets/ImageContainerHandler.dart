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

class ImageContainerHandler extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageContainerBloc, ImageContainerState>(
        condition: (previousState, state) {
          return (previousState != state);
        },
        builder: (context, state) {
          final imageBloc = BlocProvider.of<ImageContainerBloc>(context);
          return
            Positioned(
                left: state.imageContainerModel.x,
                top: state.imageContainerModel.y,
              child: Container(
                width: 120,
                height: 120,
                child: Draggable(
                  onDragEnd: (DraggableDetails details) {
                    imageBloc.add(ImageContainerDragEndEvent(newDetails: details));
                  },
                  child: Container(
                    width: 96,
                    height: 96,
                    child: CachedNetworkImage(
                        width: 96,
                        height: 96,
                      placeholder: (context, url) => CircularProgressIndicator(),
                      imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                   ),
                  ),
                  feedback: Container(
                    width: 96,
                    height: 96,
                    child:CachedNetworkImage(
                      width: 96,
                      height: 96,
                      placeholder: (context, url) => CircularProgressIndicator(),
                      imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    ),
                  ),
                  childWhenDragging: Container(),
                ),
              ),
            );
        });
  }
}
