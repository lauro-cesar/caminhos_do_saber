/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

library serializers;
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:caminhos_do_saber/app/models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AccountSettings,
  PageManagerModel
  ])

Serializers serializers = _$serializers;
Serializers standardSerializers = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
