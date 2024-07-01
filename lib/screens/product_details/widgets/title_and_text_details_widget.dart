import 'package:flutter/material.dart';
import 'package:ptc_workshop/core/utils/font_manager.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';

class TitleAndTextDetailsWidget extends StatelessWidget {
  const TitleAndTextDetailsWidget({
    Key? key,
    required this.detialsOfProduct,
  }) : super(key: key);

  final String detialsOfProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsManager.details,
          style: StylesManager.regular(
            color: ColorManager.black,
          ),
        ),
        Text(
          detialsOfProduct,
          style: StylesManager.regular(
            color: ColorManager.lightGrey,
            fontSize: FontSize.s14,
          ),
        ),
      ],
    );
  }
}
