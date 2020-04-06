/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'dart:io';

import 'package:caminhos_do_saber/app/MyApp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    if (kReleaseMode) {
      exit(1);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  };
  runApp(MyApp());
}




