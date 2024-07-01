import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';
import 'extension_manager.dart';

class ThemeManager {
  static ThemeMode mode({bool isDark = false}) =>
      isDark ? ThemeMode.dark : ThemeMode.light;

  static final light = ThemeData(
    // useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
    primaryColor: ColorManager.primary,
    primarySwatch: Color(ColorManager.primary.value).toMaterialColor(),

    scaffoldBackgroundColor: ColorManager.white,

    iconTheme: const IconThemeData(color: ColorManager.white),
    primaryIconTheme: const IconThemeData(color: ColorManager.white),

    fontFamily: GoogleFonts.manrope().fontFamily,
  );
}
