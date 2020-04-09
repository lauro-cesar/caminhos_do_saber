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

part 'PageManagerModel.g.dart';

abstract class PageManagerModel implements Built<PageManagerModel, PageManagerModelBuilder> {

  int get activePageIndex;
  @nullable
  int get lastPageIndex;

  String toJson(){
    return json
        .encode(serializers.serializeWith(PageManagerModel.serializer, this));
  }

  static PageManagerModel fromJson(String fromJson){
    return serializers.deserializeWith(PageManagerModel.serializer, json.decode(fromJson));
  }

  static Serializer<PageManagerModel> get serializer => _$pageManagerModelSerializer;

  PageManagerModel._();
  factory PageManagerModel([updates(PageManagerModelBuilder b)]) = _$PageManagerModel;

}