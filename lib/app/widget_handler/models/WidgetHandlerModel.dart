/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:caminhos_do_saber/app/serializers.dart';

part 'WidgetHandlerModel.g.dart';

abstract class WidgetHandlerModel implements Built<WidgetHandlerModel, WidgetHandlerModelBuilder> {
  @nullable
  int get id;
  @nullable
  int get z_index;
  @nullable
  double get x;
  @nullable
  double get y;
  @nullable
  double get w;
  @nullable
  double get h;

  String toJson(){
    return json
        .encode(serializers.serializeWith(WidgetHandlerModel.serializer, this));
  }

  static WidgetHandlerModel fromJson(String fromJson){
    return serializers.deserializeWith(WidgetHandlerModel.serializer, json.decode(fromJson));
  }

  static Serializer<WidgetHandlerModel> get serializer => _$widgetHandlerModelSerializer;
  WidgetHandlerModel._();
  factory WidgetHandlerModel([updates(WidgetHandlerModelBuilder b)]) = _$WidgetHandlerModel;

}