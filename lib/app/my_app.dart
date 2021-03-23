import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:xulu_services/xulu_services.dart';
import 'package:mobile_template/app/app.router.dart';
import 'package:mobile_template/core/constant/constant.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: APP_TITLE,
        debugShowCheckedModeBanner: false,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: (RouteSettings settings) =>
            StackedRouter().onGenerateRoute(settings),
        theme: ThemeData(
            primarySwatch: Colors.teal,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        builder: (context, child) => MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0)));
  }
}
