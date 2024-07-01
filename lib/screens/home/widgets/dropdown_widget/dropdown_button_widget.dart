import 'dart:math' show pi;

import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';

// ignore: must_be_immutable
class DropdownButtonWidget<T> extends StatefulWidget {
  DropdownButtonWidget({
    Key? key,
    required this.value,
    required this.items,
  }) : super(key: key);

  T? value;
  final List<DropdownMenuItem<T>> items;

  @override
  State<DropdownButtonWidget<T>> createState() =>
      _DropdownButtonWidgetState<T>();
}

class _DropdownButtonWidgetState<T> extends State<DropdownButtonWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<T>(
        isDense: true,
        alignment: Alignment.centerLeft,
        dropdownColor: ColorManager.darkPrimary,
        style: StylesManager.light(fontSize: FontSize.s14),
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p3),
        borderRadius: BorderRadius.circular(AppSize.s5),
        focusColor: ColorManager.transparent,
        icon: Transform.rotate(
          angle: -pi / 2.0,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s8),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: ColorManager.white,
              size: AppSize.s10,
            ),
          ),
        ),
        value: widget.value,
        items: widget.items,
        onChanged: (newValue) {
          widget.value = newValue!;
          setState(() {});
        },
      ),
    );
  }
}
