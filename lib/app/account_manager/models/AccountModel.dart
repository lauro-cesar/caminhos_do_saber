/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:caminhos_do_saber/app/serializers.dart';

part 'AccountModel.g.dart';

abstract class AccountModel implements Built<AccountModel, AccountModelBuilder> {

  @nullable
  int get id;
  String get firstName => "Convidado";
  @nullable
  String get middleName;
  @nullable
  String get lastName;
  @nullable
  String get accessToken;
  bool  get rememberMe => false;
  String get userName  => "guest_user";

  String toJson(){
    return json.encode(serializers.serializeWith(AccountModel.serializer, this));
  }

  static AccountModel fromJson(String fromJson){
    return serializers.deserializeWith(AccountModel.serializer, json.decode(fromJson));
  }
  static Serializer<AccountModel> get serializer => _$accountModelSerializer;
  AccountModel._();
  factory AccountModel([updates(AccountModelBuilder b)]) = _$AccountModel;

}