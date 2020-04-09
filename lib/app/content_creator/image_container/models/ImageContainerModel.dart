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

part 'ImageContainerModel.g.dart';

abstract class ImageContainerModel implements Built<ImageContainerModel, ImageContainerModelBuilder> {
  @nullable
  int get id;

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
        .encode(serializers.serializeWith(ImageContainerModel.serializer, this));
  }

  static ImageContainerModel fromJson(String fromJson){
    return serializers.deserializeWith(ImageContainerModel.serializer, json.decode(fromJson));
  }

  static Serializer<ImageContainerModel> get serializer => _$imageContainerModelSerializer;
  ImageContainerModel._();
  factory ImageContainerModel([updates(ImageContainerModelBuilder b)]) = _$ImageContainerModel;

}