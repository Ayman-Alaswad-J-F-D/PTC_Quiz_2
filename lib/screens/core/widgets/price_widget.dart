import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "\$$price",
        style: StylesManager.bold(
          fontSize: FontSize.s16,
          color: ColorManager.primary,
        ),
        children: [
          TextSpan(
            text: StringsManager.kg,
            style: StylesManager.light(color: ColorManager.primary),
          ),
        ],
      ),
    );
  }
}
