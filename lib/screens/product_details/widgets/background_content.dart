import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class BackgroundContent extends StatelessWidget {
  const BackgroundContent({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p25).copyWith(
        bottom: AppSize.s0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppMargin.m8,
      ),
      decoration: const BoxDecoration(
        color: ColorManager.light,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSize.s30),
        ),
      ),
      child: child,
    );
  }
}
