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
  static const EdgeInsets cardListContainer = EdgeInsets.only(bottom: 20);
  static const EdgeInsets heading = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const EdgeInsets none = EdgeInsets.zero;
}

class RvOffsets {
  static const headingShadow = Offset(4.0, 4.0);
}

class RvSizes {
  static const headingShadowBlurRadius = 10.0;
  static const largeCardWidthPercent = .85;
}

// !TODO Delete
// class RvCardWidths {
//   final BuildContext context;

//   double large;
//   double medium;
//   double small;

//   RvCardWidths.fromContext(
//     this.context,
//   ) {
//     large = MediaQuery.of(context).size.width * 1;
//     medium = MediaQuery.of(context).size.width * .5;
//     small = MediaQuery.of(context).size.width * .25;
//   }
// }
