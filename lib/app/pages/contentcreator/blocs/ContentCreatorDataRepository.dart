/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:caminhos_do_saber/app/pages/contentcreator/blocs/barrel.dart';

class ContentCreatorDataRepository {

  final ContentCreatorLocalStorageDataProvider localStorageDataProvider = ContentCreatorLocalStorageDataProvider();
  final ContentCreatorRestDataProvider restDataProvider  =ContentCreatorRestDataProvider();


//  Future<Data> getAllDataThatMeetsRequirements() async {
//    final RawDataA dataSetA = await dataProviderA.readData();
//    final RawDataB dataSetB = await dataProviderB.readData();
//
//    final Data filteredData = _filterData(dataSetA, dataSetB);
//    return filteredData;
//  }
}