import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.locator.dart';
import 'app/my_app.dart';

void main() {
  // ensure flutter is initialize
  WidgetsFlutterBinding.ensureInitialized();

  // register all dependencies
  setupLocator();

  // lock app to vertical
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(MyApp()));
}