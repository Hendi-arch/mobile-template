// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked_annotations.dart';

// route name
import 'package:mobile_template/app/route_name.dart';

// services
import 'package:mobile_template/core/api/api.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:xulu_services/xulu_services.dart';
import 'package:mobile_template/core/services/api_service.dart';
import 'package:mobile_template/core/services/utility_service.dart';
import 'package:mobile_template/core/services/localization_service.dart';

// shared
import 'package:mobile_template/shared/asset_path.dart';
import 'package:mobile_template/shared/size_config.dart';

// views
import 'package:mobile_template/ui/views/startup/start_up_view.dart';

@StackedApp(routes: [
  CupertinoRoute(page: StartUpView, initial: true, path: root)
], dependencies: [
  // Singleton Injections
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: SharedPreferencesService),
  LazySingleton(classType: UtilityService),
  LazySingleton(classType: LocalizationService),
  LazySingleton(classType: AssetPath),
  LazySingleton(classType: Api),
  LazySingleton(classType: SizeConfig),

  // Factory Injections
  Factory(classType: ApiService)
])
class AppSetup {}
