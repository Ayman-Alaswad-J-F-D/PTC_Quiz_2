import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    this.styleRegular = true,
  }) : super(key: key);

  final String title;
  final bool styleRegular;
  // final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppMargin.m10,
        left: AppPadding.p20,
        bottom: AppPadding.p10,
      ),
      child: Text(
        title,
        style: styleRegular
            ? StylesManager.regular(
                fontSize: FontSize.s30,
                color: ColorManager.darkBlack,
              )
            : StylesManager.bold(color: ColorManager.darkBlack),
      ),
    );
  }
}
