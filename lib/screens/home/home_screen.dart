import 'package:flutter/material.dart';

import '../../../../core/utils/extension_manager.dart';
import '../../core/constants/const.dart';
import '../../core/helper/sizer_media_query.dart';
import '../../core/utils/strings_manager.dart';
import '../../widgets/custom_sliver_app_bar_widget.dart';
import '../core/widgets/grid_view_item_widget.dart';
import '../core/widgets/sliver_grid_view_widget.dart';
import '../product_details/different_design/secondary_screen/product_details_secondary_screen.dart';
import 'widgets/banner_list/banner_list_view_widget.dart';
import 'widgets/dropdown_widget/dropdowns_bar_widget.dart';
import 'widgets/home_header_widget.dart';
import 'widgets/offer_list/offer_list_view_widget.dart';
import 'widgets/recommended_list/recomended_list_view_widget.dart';
import 'widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        //? Sliver App Bar
        CustomSliverAppBarWidget(
          expandedHeight: sizeHeight(context) / 4,
          header: const HomeHeader(),
          bottomHeader: const DropdownsBarWidget(),
        ),
        //?  Body Without Grid View
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OfferListViewWidget(),
              TitleWidget(title: StringsManager.recommended),
              RecommededListViewWidget(),
              BannerListViewWidget(),
              TitleWidget(
                title: StringsManager.dealsonFruitsAndTea,
                styleRegular: false,
              ),
            ],
          ),
        ),
        //? Sliver Grid View
        SliverGridViewWidget(
          itemCount: Const.deals.length,
          itemBuilder: (context, index) => GridViewItemWidget(
            mockData: Const.deals[index],
            onTap: () => context.push(const ProductDetailsSecondaryScreen()),
          ),
        ),
      ],
    );
  }
}
