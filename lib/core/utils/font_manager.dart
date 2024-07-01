import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//? Can use Google Fonts Package

class FontFamilyManager {
  // static const manrope = "Manrope"; // Name font family
  static final manrope = GoogleFonts.manrope().fontFamily;
}

class FontWeightManager {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
}

class FontSize {
  static const double s11 = 11.0;
  static const double s12 = 12.0;
  static const double s13 = 13.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
  static const double s25 = 25.0;
  static const double s26 = 26.0;
  static const double s28 = 28.0;
  static const double s30 = 30.0;
  static const double s48 = 48.0;
  static const double s50 = 50.0;
  static const double s55 = 55.0;
  static const double s90 = 90.0;
  static const double s110 = 110.0;
}
