import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubit/app_cubit.dart';
import '../../../models/mock_data_model.dart';
import 'cart_list_view/cart_actions_row_widget.dart';
import 'cart_list_view/cart_list_vew_item_widget.dart';

class ExpandedCartItemWidget extends StatelessWidget {
  const ExpandedCartItemWidget({
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
    final _isFoundOffer = context.read<AppCubit>().isFoundOffer();
    return Column(
      children: [
        CartListViewItemWidget(mockData: mockData[index]),
        if (index == mockData.length - 1 && _isFoundOffer)
          CartActionsRowWidget(
            expand: expand,
            cartLength: mockData.length,
            onExpandItem: onExpandItem,
          ),
      ],
    );
  }
}
