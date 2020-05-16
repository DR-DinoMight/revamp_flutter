import 'package:flutter/material.dart';

final ThemeData companyThemeData = new ThemeData(
  brightness: Brightness.light,
  primaryColor: CompanyColors.white,
  accentColor: CompanyColors.green,
  canvasColor: CompanyColors.grey[100],

  // This makes the visual density adapt to the platform that you run
  // the app on. For desktop platforms, the controls will be smaller and
  // closer together (more dense) than on mobile platforms.
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class

  static const Color white = Colors.white;
  static const MaterialColor grey = Colors.grey;
  static const MaterialColor green = const MaterialColor(
    0xFF4AC988,
    const <int, Color>{
      50: const Color(0xFF4AC988),
      100: const Color(0xFF0AA163),
      200: const Color(0xFF007A40),
      300: const Color(0xFF00541F),
      400: const Color(0xFF003200),
    },
  );
}
