import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:observable_ish/value/value.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:xulu_services/xulu_services.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/core/api/api.dart';
import 'package:mobile_template/core/constant/constant.dart';
import 'package:mobile_template/core/model/localization/localization_model.dart';
import 'package:mobile_template/core/services/api_service.dart';
import 'package:mobile_template/core/services/utility_service.dart';
import 'package:mobile_template/shared/asset_path.dart';

class LocalizationService with ReactiveServiceMixin {
  final Api? _api = locator<Api>();
  final UtilityService? _utility = locator<UtilityService>();
  final AssetPath? _assetPath = locator<AssetPath>();
  final ApiService? _apiService = locator<ApiService>();
  final SharedPreferencesService? _sharedPrefsService = locator<SharedPreferencesService>();

  LocalizationService() {
    listenToReactiveValues([_localizationModel, _currentLocaleName]);
  }

  RxValue<String?> _currentLocaleName = RxValue<String?>('');

  RxValue<LocalizationModel> _localizationModel =
  RxValue<LocalizationModel>(LocalizationModel());

  String? get currentLocaleName => _currentLocaleName.value;

  LocalizationModel get localizationModel => _localizationModel.value;

  // create some logic to determine which locale user selected here, and expose to the all view models

  String _whichLocaleIs(String localName) {
    switch (localName.toLowerCase()) {
      case 'indonesia':
        return "$IdLocale.txt";

      default:
        return "$EnLocale.txt";
    }
  }

  String _currentLocaleId(String localName) {
    switch (_whichLocaleIs(localName)) {
      case "$EnLocale.txt":
        return "en";

      default:
        return "id";
    }
  }

  Future updateLocale({bool isStartUp = false, String? localeName}) async {
    try {
      final _savePath = await _utility!.getSystemPath(params: BaseLocalePath);
      if (!isStartUp) {
        await _apiService!
            .dioDownload('${_api!.baseLocaleUrl}/${_whichLocaleIs(localeName!)}',
            _savePath + '/$baseLocaleName')
            .then((value) async {
          if (value.statusCode == HTTP_OK) {
            final _localeFile = File('$_savePath/$baseLocaleName');
            await _localeFile.readAsString().then((value) {
              _localizationModel.value =
                  LocalizationModel.fromJson(jsonDecode(value));
            });
            _currentLocaleName.value = localeName;

            _sharedPrefsService!.saveToDisk(
                currentLocale, _currentLocaleId(localeName));
          }
        });
      }

      if (isStartUp) {
        final _localeFile = File('$_savePath/$baseLocaleName');
        await _localeFile.exists().then((isExist) async {
          if (isExist) {
            await _localeFile.readAsString().then((localeValue) {
              _localizationModel.value =
                  LocalizationModel.fromJson(jsonDecode(localeValue));
              _currentLocaleName.value =
              _sharedPrefsService!.getFromDisk(currentLocale) == 'id'
                  ? 'Indonesia'
                  : 'English';
            });
          } else {
            _localizationModel.value = LocalizationModel.fromJson(jsonDecode(
                await rootBundle
                    .loadString('${_assetPath!.jsonPath}$IdLocale.json')));
            _currentLocaleName.value = 'Indonesia';

            _sharedPrefsService!.saveToDisk(currentLocale, 'id');
          }
        });
      }
    } catch (e) {
      _localizationModel.value = LocalizationModel.fromJson(jsonDecode(
          await rootBundle.loadString('${_assetPath!.jsonPath}$IdLocale.json')));
      _currentLocaleName.value = 'Indonesia';

      _sharedPrefsService!.removeKey(currentLocale);
      await _utility!
          .getSystemPath(params: BaseLocalePath)
          .then((value) => _utility!.deleteSystemPath(value));
    }
  }
}
