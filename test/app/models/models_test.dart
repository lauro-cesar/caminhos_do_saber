/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:test/test.dart';

import 'package:caminhos_do_saber/app/models/models.dart';




void main() {

group('Testing App Models', () {
    test('Test Account Settings Model Serialization', () {
      final accountSettings = AccountSettings((b) => b
      ..userName="olarva"
      );
      expect(accountSettings.firstName, isNull);
      expect(accountSettings.userName, isNotEmpty);
    });
});


}