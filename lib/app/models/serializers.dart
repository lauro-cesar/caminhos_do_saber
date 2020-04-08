// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
