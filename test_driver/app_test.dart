/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:caminhos_do_saber/app/keys.dart';

void main() {
  group('Oficina Editor', () {

//    final homePage = find.byKey(AppKeys.homePage);



    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

//    test('starts at 0', () async {
//      // Use the `driver.getText` method to verify the counter starts at 0.
//      expect(await driver.tap(finder), "0");
//    });


  });
}