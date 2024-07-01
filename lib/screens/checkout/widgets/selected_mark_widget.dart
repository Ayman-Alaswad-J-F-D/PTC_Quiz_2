import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class SelectedMarkWidget extends StatelessWidget {
  const SelectedMarkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: AppPadding.p15),
      child: CircleAvatar(
        radius: AppSize.s12,
        child: Icon(Icons.done, size: AppSize.s18),
        backgroundColor: ColorManager.secondary,
      ),
    );
  }
}
