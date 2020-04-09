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
part 'Document.g.dart';

abstract class Document implements Built<Document, DocumentBuilder> {
  @nullable
  int get id;
  String get userName;

  String toJson(){
    return json
        .encode(serializers.serializeWith(Document.serializer, this));
  }

  static Document fromJson(String fromJson){
    return serializers.deserializeWith(Document.serializer, json.decode(fromJson));
  }

  static Serializer<Document> get serializer => _$documentSerializer;

  Document._();
  factory Document([updates(DocumentBuilder b)]) = _$Document;

}