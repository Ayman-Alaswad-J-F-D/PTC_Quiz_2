import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/styles_manager.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: StylesManager.meduim(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s12,
      ),
    );
  }
}
