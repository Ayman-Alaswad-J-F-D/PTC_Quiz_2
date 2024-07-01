import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../core/widgets/sliver_grid_view_widget.dart';
import 'categories_grid_view_item_widget.dart';

class CategoriesSliverGridViewWidget extends StatelessWidget {
  const CategoriesSliverGridViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGridViewWidget(
      itemCount: Const.categories.length,
      childAspectRatio: AppSize.s1,
      mainAxisSpacing: AppMargin.m20,
      crossAxisSpacing: AppMargin.m20,
      itemBuilder: (context, index) => CategoriesGridViewItemWidget(
        mockData: Const.categories[index],
      ),
    );
  }
}
