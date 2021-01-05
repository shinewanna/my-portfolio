import 'package:flutter/material.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'ui/home.dart';
import 'config/colors.dart';

void main() async {
  await CacheService.streamSharePrefConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get _darkTheme => ThemeData(
        appBarTheme: AppBarTheme(color: Colors.transparent),
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
  get _lightTheme => ThemeData(
        primaryColor: Colors.white,
        accentColor: AppColors.yellow,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(color: Colors.transparent),
        textTheme: TextTheme(),
      );
  @override
  Widget build(BuildContext context) {
    return PreferenceBuilder<bool>(
        preference: CacheService.settings.darkMode,
        builder: (context, darkMode) {
          return MaterialApp(
            title: 'OuahidDev',
            debugShowCheckedModeBanner: false,
            theme: _lightTheme,
            darkTheme: _darkTheme,
            themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
            home: Home(),
          );
        });
  }
}
