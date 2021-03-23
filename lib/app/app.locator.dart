// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:xulu_services/xulu_services.dart';

import '../core/api/api.dart';
import '../core/services/api_service.dart';
import '../core/services/localization_service.dart';
import '../core/services/utility_service.dart';
import '../shared/asset_path.dart';
import '../shared/size_config.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => SharedPreferencesService());
  locator.registerLazySingleton(() => UtilityService());
  locator.registerLazySingleton(() => LocalizationService());
  locator.registerLazySingleton(() => AssetPath());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => SizeConfig());
  locator.registerFactory(() => ApiService());
}
