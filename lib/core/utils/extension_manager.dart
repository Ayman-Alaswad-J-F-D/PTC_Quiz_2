import 'package:flutter/material.dart';

extension NavigatorScreenExtension on BuildContext {
  void push(Widget screen) => Navigator.push(
        this,
        MaterialPageRoute(builder: (context) => screen),
      );

  void pushReplacement(Widget screen) => Navigator.pushReplacement(
        this,
        MaterialPageRoute(builder: (context) => screen),
      );

  void pushAndRemoveUntil(Widget screen) => Navigator.pushAndRemoveUntil(
        this,
        MaterialPageRoute(builder: (context) => screen),
        (_) => false,
      );

  void back<T>({T? result}) => Navigator.of(this).pop(result);
}

extension MovingScrollToWidgetExtension on ScrollController {
  Future<void> moveToTop() async {
    return await animateTo(
      position.minScrollExtent,
      duration: Durations.medium2,
      curve: Curves.linear,
    );
  }

  Future<void> moveToDown(double offset) async {
    return await animateTo(
      (position.maxScrollExtent + offset) * 25,
      duration: Durations.long1,
      curve: Curves.linear,
    );
  }
}

extension StringExtension on String? {
  bool get isNullOrEmpty {
    if (this == '' || this == null) return true;
    return false;
  }
}

extension ColorExtension on Color {
  MaterialColor toMaterialColor() {
    const _primaryValue = 0xFF2A4BA0;
    const primary = MaterialColor(
      _primaryValue,
      <int, Color>{
        50: Color(0xFFE5E9F4),
        100: Color(0xFFBFC9E3),
        200: Color(0xFF95A5D0),
        300: Color(0xFF6A81BD),
        400: Color(0xFF4A66AE),
        500: Color(_primaryValue),
        600: Color(0xFF254498),
        700: Color(0xFF1F3B8E),
        800: Color(0xFF193384),
        900: Color(0xFF0F2373),
      },
    );
    return primary;
  }
}
