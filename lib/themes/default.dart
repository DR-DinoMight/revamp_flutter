import 'package:flutter/material.dart';

final ThemeData rvThemeData = new ThemeData(
  brightness: Brightness.light,
  primaryColor: RvColors.white,
  accentColor: RvColors.green,
  canvasColor: RvColors.grey[100],
  // This makes the visual density adapt to the platform that you run
  // the app on. For desktop platforms, the controls will be smaller and
  // closer together (more dense) than on mobile platforms.
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class RvColors {
  RvColors._(); // this basically makes it so you can instantiate this class
  static const Color white = Colors.white;
  static const MaterialColor grey = Colors.grey;
  static final Color headingShadow = Colors.black45;

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

class RvEdgeInsets {
  static const EdgeInsets container = EdgeInsets.fromLTRB(20, 20, 20, 10);
  static const EdgeInsets cardListContainer = EdgeInsets.zero;
  static const EdgeInsets cardContent = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const EdgeInsets none = EdgeInsets.zero;
}

class RvOffsets {
  static const headingShadow = Offset(4.0, 4.0);
}

class RvSizingValues {
  // Todo perhaps move all shadows properties into their own class.
  static const headingShadowBlurRadius = 10.0;
  static const largeCardWidthFraction = .85;
  static const mediumCardWidthFraction = largeCardWidthFraction * .75;
  static const smallCardWidthFraction = largeCardWidthFraction * .5;
}

enum RvCardSize { large, medium, small }

class RuntimeCalculatedValues {
  //simple singleton instance.
  static RuntimeCalculatedValues instance = new RuntimeCalculatedValues._();

  // private constructor for internal use only
  RuntimeCalculatedValues._();

  // properties
  double screenWidth;
}
