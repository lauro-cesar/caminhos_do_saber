/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/pages.dart';

class PageContainerWidget extends StatelessWidget {

  Widget _myImage(){
    return Container(
      width: 100,
      height: 100,
      color:Colors.white,

      child: Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded) {
            return child;
          }
          return AnimatedOpacity(
            child: child,
            opacity: frame == null ? 0 : 1,
            duration: const Duration(seconds: 1),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Stack(
        children: List<Widget>.generate(3, (int index)
        {
          return WidgetHandlerWidget(child:_myImage() );
        }
        )
    );

  }
}