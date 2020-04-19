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

part 'StackManagerModel.g.dart';

abstract class StackManagerModel implements Built<StackManagerModel, StackManagerModelBuilder> {

  @nullable
  int get maxIndex;

  int get activePageIndex;

  @nullable
  int get lastPageIndex;

  String toJson(){
    return json
        .encode(serializers.serializeWith(StackManagerModel.serializer, this));
  }

  static StackManagerModel fromJson(String fromJson){
    return serializers.deserializeWith(StackManagerModel.serializer, json.decode(fromJson));
  }

  static Serializer<StackManagerModel> get serializer => _$stackManagerModelSerializer;

  StackManagerModel._();
  factory StackManagerModel([updates(StackManagerModelBuilder b)]) = _$StackManagerModel;

}