import 'package:flutter/material.dart';

class CurvedNavigationBarItem {
  /// Slected Icon of [CurvedNavigationBarItem].
  final IconData selectedIcon;

  /// unselected icon of [CurvedNavigationBarItem].
  final IconData unSelectedIcon;

  /// Text of [CurvedNavigationBarItem].
  final String? label;

  /// TextStyle for [label].
  final TextStyle? labelStyle;

  /// Color for [selected Icon].
  final Color selcetedIconColor;

  /// Color for [unSelceted Icon].
  final Color unSelcetedIconColor;

  const CurvedNavigationBarItem({
    required this.selectedIcon,
    required this.unSelectedIcon,
    this.label,
    this.labelStyle,
    this.selcetedIconColor = Colors.black,
    this.unSelcetedIconColor = Colors.grey,
  });
}
