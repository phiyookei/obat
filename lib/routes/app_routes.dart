import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/antar_obat_container_screen/antar_obat_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/obat_screen/obat_screen.dart';

class AppRoutes {
  static const String antarObatContainerScreen = '/antar_obat_container_screen';

  static const String antarObatPage = '/antar_obat_page';

  static const String obatScreen = '/obat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        antarObatContainerScreen: AntarObatContainerScreen.builder,
        obatScreen: ObatScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AntarObatContainerScreen.builder
      };
}
