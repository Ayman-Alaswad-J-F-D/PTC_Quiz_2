import 'package:flutter/material.dart';

// We will modify it once we have our final design

class ResponsiveHelper extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveHelper({
    Key? key,
    required this.desktop,
    required this.mobile,
    this.mobileLarge,
    this.tablet,
  }) : super(key: key);

  static Size _size(context) => MediaQuery.of(context).size;

  static bool isMobileSmall(BuildContext context) =>
      _size(context).width <= 320;

  static bool isMobile(BuildContext context) => _size(context).width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      _size(context).width <= 700;

  static bool isTablet(BuildContext context) => _size(context).width < 1024;

  static bool isDesktop(BuildContext context) =>
      _size(context).width >= 1200; // Regular size of desktop = 1024

  @override
  Widget build(BuildContext context) {
    final _width = _size(context).width;
    if (_width >= 1024) {
      return desktop;
    } else if (_width >= 700 && tablet != null) {
      return tablet!;
    } else if (_width >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
