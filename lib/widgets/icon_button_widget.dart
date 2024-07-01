import 'package:flutter/material.dart';

import '../core/utils/values_manager.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.size = AppSize.s12,
    this.padding = AppPadding.p10,
    this.backgroundColor,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final double padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: IconButton(
        iconSize: size,
        icon: Icon(icon),
        onPressed: onPressed,
        style: IconButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
