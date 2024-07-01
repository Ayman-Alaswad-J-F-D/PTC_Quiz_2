import 'package:flutter/material.dart';

import '../../../models/mock_data_model.dart';
import 'cart_list_view/cart_actions_row_widget.dart';
import 'cart_list_view/cart_list_vew_item_widget.dart';

class ShrinkedCartItemWidget extends StatelessWidget {
  const ShrinkedCartItemWidget({
    Key? key,
    required this.mockData,
    required this.index,
    required this.expand,
    required this.onExpandItem,
  }) : super(key: key);

  final List<MockData> mockData;
  final int index;
  final bool expand;
  final VoidCallback onExpandItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartListViewItemWidget(mockData: mockData[index]),
        CartActionsRowWidget(
          expand: expand,
          cartLength: mockData.length,
          onExpandItem: onExpandItem,
        ),
      ],
    );
  }
}
