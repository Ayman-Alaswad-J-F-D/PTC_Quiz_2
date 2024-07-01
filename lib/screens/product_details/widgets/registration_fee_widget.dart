import 'package:flutter/material.dart';
import 'package:ptc_workshop/core/utils/font_manager.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';

class RegistrationFeesWidget extends StatelessWidget {
  const RegistrationFeesWidget({
    Key? key,
    required this.fees,
  }) : super(key: key);

  final String fees;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          fees,
          style: StylesManager.regular(
            color: ColorManager.lighterGrey,
            fontSize: FontSize.s14,
          ),
        ),
      ),
    );
  }
}
