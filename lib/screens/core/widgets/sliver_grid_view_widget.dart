import 'package:flutter/material.dart';

import '../../../core/utils/values_manager.dart';

class SliverGridViewWidget extends StatelessWidget {
  const SliverGridViewWidget({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.childAspectRatio = AppSize.s0_8,
    this.crossAxisSpacing = AppSize.s12,
    this.mainAxisSpacing = AppSize.s18,
  }) : super(key: key);

  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final double childAspectRatio;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      top: false,
      sliver: SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20)
            .copyWith(top: AppPadding.p16, bottom: AppPadding.p40),
        sliver: SliverGrid.builder(
          itemCount: itemCount,
          itemBuilder: itemBuilder,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisCount: AppSize.s2.toInt(),
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing,
          ),
        ),
      ),
    );
  }
}
