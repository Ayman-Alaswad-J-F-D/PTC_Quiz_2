import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class ViewTypeToggel extends StatelessWidget {
  const ViewTypeToggel({
    Key? key,
    required this.isGridView,
    required this.onChangeViewType,
  }) : super(key: key);

  final bool isGridView;
  final VoidCallback onChangeViewType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p12),
      child: Row(
        children: [
          const Spacer(),
          Text(
            isGridView ? "Grid View" : "List View",
            style: StylesManager.bold(
              color: ColorManager.darkBlack,
              fontSize: FontSize.s18,
            ),
          ),
          const Spacer(flex: 8),
          IconButton(
            icon: Icon(isGridView ? Icons.list : Icons.grid_on_rounded),
            onPressed: onChangeViewType,
            color: ColorManager.primary,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
