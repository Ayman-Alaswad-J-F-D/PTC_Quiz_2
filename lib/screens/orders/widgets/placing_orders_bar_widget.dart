import 'package:flutter/material.dart';

import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/values_manager.dart';
import '../../core/widgets/selectable_bar_list_horizontal_widget.dart';

class PlacingOrdersBarWidget extends StatelessWidget {
  const PlacingOrdersBarWidget({
    Key? key,
    required this.placingOrder,
    required this.onChange,
    required this.selectedIndex,
  }) : super(key: key);

  final List<String> placingOrder;
  final ValueChanged<int> onChange;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        placingOrder.length,
        (index) => SelectableBarItemWidget(
          index: index,
          selectedIndex: selectedIndex,
          onChange: onChange,
          mockData: placingOrder,
          width: sizeWidth(context) / 2.3,
          height: AppSize.s35,
        ),
      ),
    );
  }
}
