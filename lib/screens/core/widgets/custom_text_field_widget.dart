import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.defaultValue,
    required this.onChanged,
    this.fontStyle,
    this.autofocus = false,
    this.isUnderLineStyleBox = true,
  }) : super(key: key);

  final String defaultValue;
  final ValueChanged<String> onChanged;
  final TextStyle? fontStyle;
  final bool autofocus;
  final bool isUnderLineStyleBox;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      controller: TextEditingController()..text = defaultValue,
      onChanged: onChanged,
      style: fontStyle ?? StylesManager.regular(color: ColorManager.darkBlack),
      decoration: InputDecoration(
        border: _getSyleBox(),
        enabledBorder: _getSyleBox(),
        focusedBorder: _getSyleBox(color: ColorManager.primary),
      ),
    );
  }

  InputBorder _getSyleBox({Color color = ColorManager.veryLightGrey}) =>
      isUnderLineStyleBox ? underlineBorder(color: color) : outlineBorder();

  static outlineBorder() => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s10)),
        borderSide: BorderSide(color: ColorManager.veryLightGrey),
      );

  static underlineBorder({required Color color}) =>
      UnderlineInputBorder(borderSide: BorderSide(color: color));
}
