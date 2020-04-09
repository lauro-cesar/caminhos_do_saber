/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/pages.dart';


class PageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: List<Widget>.generate(3, (int index)
        {
          return ImageContainer(20,100*(index.toDouble()+1),index);
        },
        )
    );

  }
}