// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/core/services/localization_service.dart';

class StartUpViewModel extends FutureViewModel {
  final LocalizationService? _localizationService = locator<LocalizationService>();

  Future _handleStartUpLogic() async {
    await _localizationService!.updateLocale(isStartUp: true);

    // do logic here, something like user authentication or anything
  }

  @override
  Future futureToRun() => _handleStartUpLogic();
}
