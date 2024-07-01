import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';
import '../../../core/utils/extension_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../core/widgets/grid_view_item_widget.dart';
import '../../product_details/product_details_screen.dart';

class ProductsGridViewWidget extends StatelessWidget {
  const ProductsGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppPadding.p20),
      itemCount: Const.products.length,
      itemBuilder: (context, index) => GridViewItemWidget(
        mockData: Const.products[index],
        onTap: () => context.push(
          const ProductDetailsScreen(title: StringsManager.orange),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: AppSize.s1,
        crossAxisCount: AppSize.s2.toInt(),
        crossAxisSpacing: AppPadding.p15,
        mainAxisSpacing: AppPadding.p22,
      ),
    );
  }
}
