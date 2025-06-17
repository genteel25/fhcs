import 'dart:math';

import 'package:flutter/material.dart';

class GlobalVariables {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final homeNavigatorKey = GlobalKey<NavigatorState>();
  static final marketNavigatorKey = GlobalKey<NavigatorState>();
  static final learnNavigatorKey = GlobalKey<NavigatorState>();
  static final assetsNavigatorKey = GlobalKey<NavigatorState>();
  static final moreNavigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  static String nairaCurrencySymbol = "₦";

  static Color generateColorFromText(String text) {
    // Use the string's hash code for a consistent seed.
    // Using an absolute value ensures positive seed.
    final Random random = Random(text.hashCode.abs());

    // Generate a color using the random numbers derived from the seed.
    // We avoid very dark colors by ensuring a minimum value for R, G, B
    // and avoid very light colors by ensuring a maximum value.
    // Also, avoiding pure white/black might be desirable.

    // A common approach is to pick a hue and then adjust saturation/lightness
    // or just generate distinct RGB components.

    // Option A: Generate distinct RGB components
    // Ensuring enough variation to make colors distinct but not too extreme.
    // Shift hue slightly to avoid clusters, make sure it's not too dull.
    final int r = 50 + random.nextInt(200); // 50-249
    final int g = 50 + random.nextInt(200); // 50-249
    final int b = 50 + random.nextInt(200); // 50-249

    // Option B: Generate using HSL (more control over brightness/saturation)
    // This is often preferred for more aesthetically pleasing "random" colors.
    // The `flutter_color_models` package (or similar) can help with HSL,
    // but we can approximate it with basic math.
    // For simplicity, let's stick to RGB.

    // Ensure alpha is fully opaque
    return Color.fromARGB(255, r, g, b);
  }
}
