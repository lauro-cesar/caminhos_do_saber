/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

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

part 'PageEditorModel.g.dart';

abstract class PageEditorModel implements Built<PageEditorModel, PageEditorModelBuilder> {
  @nullable
  int get id;

  @nullable
  int get pageId;

  @nullable
  int get index;

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
        .encode(serializers.serializeWith(PageEditorModel.serializer, this));
  }

  static PageEditorModel fromJson(String fromJson){
    return serializers.deserializeWith(PageEditorModel.serializer, json.decode(fromJson));
  }

  static Serializer<PageEditorModel> get serializer => _$pageEditorModelSerializer;
  PageEditorModel._();
  factory PageEditorModel([updates(PageEditorModelBuilder b)]) = _$PageEditorModel;

}