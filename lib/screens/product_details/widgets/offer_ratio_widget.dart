import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class OfferRatioWidget extends StatelessWidget {
  const OfferRatioWidget({
    Key? key,
    required this.ratio,
  }) : super(key: key);

  final String ratio;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p3,
        horizontal: AppPadding.p12,
      ),
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(AppSize.s30),
      ),
      child: Text(
        '\$$ratio',
        style: StylesManager.regular(fontSize: FontSize.s12),
      ),
    );
  }
}
