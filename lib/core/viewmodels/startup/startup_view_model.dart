import 'package:mobile_template/shared/size_config.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/core/services/localization_service.dart';

class StartUpViewModel extends BaseViewModel {
  final SizeConfig? _sizeConfig = locator<SizeConfig>();
  final LocalizationService? _localizationService = locator<LocalizationService>();

  Future handleStartUpLogic(context) async {
    _sizeConfig!.initSizeDeviceInfo(context);
    await _localizationService!.updateLocale(isStartUp: true);

    // do logic here, something like user authentication or anything
  }
}
