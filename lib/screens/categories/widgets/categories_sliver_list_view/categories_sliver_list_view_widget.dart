import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../../../../core/utils/values_manager.dart';
import 'categories_list_vew_item_widget.dart';

class CategoriesSliverListViewWidget extends StatelessWidget {
  const CategoriesSliverListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      top: false,
      sliver: SliverPadding(
        padding: const EdgeInsets.only(bottom: AppPadding.p40),
        sliver: SliverList.separated(
          itemCount: Const.categoriesItems.length,
          separatorBuilder: (_, __) => const SizedBox(height: AppSize.s20),
          itemBuilder: (_, index) => CategoriesListViewItemWidget(
            mockData: Const.categoriesItems[index],
          ),
        ),
      ),
    );
  }
}
