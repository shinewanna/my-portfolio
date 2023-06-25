import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';
import 'ui/home.dart';
import 'config/colors.dart';

void main() async {
  await CacheService.streamSharePrefConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _darkTheme() => ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme.apply(
                  bodyColor: Vx.white,
                ),
          ),
          primaryColor: AppColors.primary,
          appBarTheme: AppBarTheme(color: Colors.transparent),
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        );
    _lightTheme() => ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme.apply(
                  bodyColor: Vx.gray900,
                ),
          ),
          primaryColor: AppColors.primary,
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(color: Colors.transparent),
        );
    return PreferenceBuilder<bool>(
        preference: CacheService.settings.darkMode,
        builder: (context, darkMode) {
          return MaterialApp(
            title: 'Shine Wanna',
            debugShowCheckedModeBanner: false,
            theme: _lightTheme(),
            darkTheme: _darkTheme(),
            themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
            home: Home(),
          );
        });
  }
}
