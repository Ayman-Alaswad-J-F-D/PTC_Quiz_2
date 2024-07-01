import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class SelectableWidget extends StatelessWidget {
  const SelectableWidget({
    Key? key,
    required this.index,
    required this.selectedIndex,
    required this.onChange,
    required this.child,
    this.selectedColor,
    this.width,
  }) : super(key: key);

  final int index;
  final int selectedIndex;
  final ValueChanged<int> onChange;
  final Widget child;
  final double? width;
  final Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChange(index),
      borderRadius: BorderRadius.circular(AppSize.s8),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p5),
        decoration: BoxDecoration(
          color: index == selectedIndex
              ? selectedColor ?? ColorManager.lightSecondary
              : ColorManager.grey200,
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        child: child,
      ),
    );
  }
}
