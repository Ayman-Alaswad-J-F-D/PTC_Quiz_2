import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class StylesManager {
  static final fontFamily = FontFamilyManager.manrope;

  ///* Light text style
  static TextStyle light({
    double fontSize = FontSize.s16,
    Color color = ColorManager.white,
  }) =>
      TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeightManager.light,
        fontSize: fontSize,
        color: color,
      );

  ///* Regular text style
  static TextStyle regular({
    double fontSize = FontSize.s16,
    Color color = ColorManager.white,
  }) =>
      TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeightManager.regular,
        fontSize: fontSize,
        color: color,
      );

  ///* Meduim text style
  static TextStyle meduim({
    double fontSize = FontSize.s14,
    Color color = ColorManager.white,
  }) =>
      TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeightManager.medium,
        fontSize: fontSize,
        color: color,
      );

  ///* Bold text style
  static TextStyle bold({
    double fontSize = FontSize.s20,
    Color color = ColorManager.white,
  }) =>
      TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeightManager.bold,
        fontSize: fontSize,
        color: color,
      );

  ///* Semi Bold text style
  static TextStyle semiBold({
    double fontSize = FontSize.s14,
    Color color = ColorManager.white,
  }) =>
      TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeightManager.semiBold,
        fontSize: fontSize,
        color: color,
      );
}
