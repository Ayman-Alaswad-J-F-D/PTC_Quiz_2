import 'package:flutter/material.dart';

import '../../../core/utils/values_manager.dart';
import '../../core/widgets/selectable_bar_list_horizontal_widget.dart';

class TypesCategoriesBarWidget extends SliverPersistentHeaderDelegate {
  final List<String> types;
  final ValueChanged<int> onChange;
  final int selecetedIndex;

  TypesCategoriesBarWidget({
    required this.types,
    required this.onChange,
    required this.selecetedIndex,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) =>
      SelectableBarListHorizontalWidget(
        mockData: types,
        onChange: onChange,
        selecetedIndex: selecetedIndex,
        maxHeightList: maxExtent,
      );

  @override
  double get maxExtent => AppSize.s62;

  @override
  double get minExtent => AppSize.s60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
