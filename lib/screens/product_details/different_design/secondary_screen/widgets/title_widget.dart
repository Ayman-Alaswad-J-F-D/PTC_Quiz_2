import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/font_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/utils/styles_manager.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: StringsManager.thinChoise,
        style: StylesManager.light(
          fontSize: FontSize.s48,
          color: ColorManager.black,
        ).copyWith(fontWeight: FontWeight.w100),
        children: [
          TextSpan(
            text: StringsManager.topOrange,
            style: StylesManager.bold(
              fontSize: FontSize.s50,
              color: ColorManager.black,
            ),
          )
        ],
      ),
    );
  }
}
