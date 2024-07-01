import 'package:flutter/material.dart';

import '../core/helper/sizer_media_query.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/font_manager.dart';
import '../core/utils/styles_manager.dart';
import '../core/utils/values_manager.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.buttonColor,
    this.child,
    this.height,
    this.width,
    this.fontSize = FontSize.s14,
    this.fontColor = ColorManager.white,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color fontColor;
  final double fontSize;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child ??
          Text(
            title,
            style: StylesManager.semiBold(
              fontSize: fontSize,
              color: fontColor,
            ),
          ),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? ColorManager.primary,
        surfaceTintColor: buttonColor ?? ColorManager.primary,
        padding: EdgeInsets.zero,
        fixedSize: Size(
          width ?? sizeWidth(context),
          height ?? sizeHeight(context) / 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
          side: buttonColor == ColorManager.white
              ? BorderSide(color: fontColor)
              : BorderSide.none,
        ),
      ),
    );
  }
}
