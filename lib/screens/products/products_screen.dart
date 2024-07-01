import 'package:flutter/material.dart';

import '../../core/utils/color_manager.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../../widgets/search_icon_action_widget.dart';
import 'widgets/products_grid_view_widget.dart';
import 'widgets/types_products_bar_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        context,
        title: title,
        cartAction: true,
        backgroundColor: ColorManager.white,
        actionWidget: const SearchIconActionWidget(
          color: ColorManager.darkBlack,
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TypesProductsBarWidget(),
          Expanded(
            child: ProductsGridViewWidget(),
          ),
        ],
      ),
    );
  }
}
