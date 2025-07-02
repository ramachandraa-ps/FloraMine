import 'package:flutter/material.dart';
import '../presentation/home_screen/home_screen.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: (context) => HomeScreen(),
        appNavigationScreen: (context) => AppNavigationScreen(),
        initialRoute: (context) => HomeScreen()
      };
}
