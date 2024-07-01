import 'package:flutter/material.dart';

import '../../core/constants/const.dart';
import '../../core/helper/sizer_media_query.dart';
import '../../widgets/custom_sliver_app_bar_widget.dart';
import '../../widgets/search_icon_action_widget.dart';
import 'widgets/categories_header_widget.dart';
import 'widgets/categories_sliver_grid_view/categories_sliver_gride_view_widget.dart';
import 'widgets/categories_sliver_list_view/categories_sliver_list_view_widget.dart';
import 'widgets/types_categories_bar_widget.dart';
import 'widgets/view_type_toggel.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  bool isGridView = false;
  int selecetedIndex = 0;

  void onChangeViewType() => setState(() => isGridView = !isGridView);

  void onChangeTypeCategories(int index) =>
      setState(() => selecetedIndex = index);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBarWidget(
          expandedHeight: sizeHeight(context) / 4,
          header: const CategoriesHeader(),
          action: const SearchIconActionWidget(),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: TypesCategoriesBarWidget(
            types: Const.typesCategories,
            selecetedIndex: selecetedIndex,
            onChange: onChangeTypeCategories,
          ),
        ),
        //? Toggle between List view and Gride view
        SliverToBoxAdapter(
          child: ViewTypeToggel(
            isGridView: isGridView,
            onChangeViewType: onChangeViewType,
          ),
        ),
        if (!isGridView) const CategoriesSliverListViewWidget(),
        if (isGridView) const CategoriesSliverGridViewWidget(),
      ],
    );
  }
}
