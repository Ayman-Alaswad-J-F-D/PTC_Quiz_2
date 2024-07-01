import 'package:flutter/material.dart';

import '../core/utils/color_manager.dart';

class SeparatorWdiget extends StatelessWidget {
  const SeparatorWdiget({
    Key? key,
    this.indentStartAndEnd,
    this.height,
    this.thickness,
  }) : super(key: key);

  final double? indentStartAndEnd;
  final double? height;
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      indent: indentStartAndEnd,
      endIndent: indentStartAndEnd,
      thickness: thickness,
      color: ColorManager.veryLightGrey,
    );
  }
}
