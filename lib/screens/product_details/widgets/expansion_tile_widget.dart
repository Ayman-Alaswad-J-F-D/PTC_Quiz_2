import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({
    Key? key,
    required this.title,
    required this.children,
    required this.onExpansionChanged,
  }) : super(key: key);

  final String title;
  final List<Widget> children;
  final ValueChanged<bool> onExpansionChanged;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: StylesManager.regular(color: ColorManager.darkBlack),
      ),
      tilePadding: EdgeInsets.zero,
      iconColor: ColorManager.lightGrey,
      collapsedIconColor: ColorManager.lighterGrey,
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment.centerLeft,
      onExpansionChanged: onExpansionChanged,
      children: children,
    );
  }
}
