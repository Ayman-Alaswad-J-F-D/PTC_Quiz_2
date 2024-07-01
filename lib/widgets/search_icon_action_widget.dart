import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/values_manager.dart';

class SearchIconActionWidget extends StatelessWidget {
  const SearchIconActionWidget({
    Key? key,
    this.color = ColorManager.white,
    // required this.onPressed,
  }) : super(key: key);

  final Color color;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(IconlyBroken.search),
      color: color,
      iconSize: AppSize.s22,
      onPressed: () {},
    );
  }
}
