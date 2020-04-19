/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:cached_network_image/cached_network_image.dart';
class PageContainerWidget extends StatelessWidget {

  Widget _myImage(){
    return Container(
      width: 100,
      height: 100,
      color:Colors.white,

      child: CachedNetworkImage(
        width: 96,
        height: 96,
        placeholder: (context, url) => CircularProgressIndicator(),
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      )
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