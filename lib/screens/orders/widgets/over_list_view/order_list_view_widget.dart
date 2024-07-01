import 'package:flutter/material.dart';

import '../../../../core/utils/values_manager.dart';
import '../../../../models/mock_data_model.dart';
import '../../../../widgets/saperator_widget.dart';
import 'order_list_view_item_widget.dart';

class OrderListViewWidget extends StatelessWidget {
  const OrderListViewWidget({
    Key? key,
    required this.orders,
  }) : super(key: key);

  final List<MockData> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p30,
      ),
      itemCount: orders.length,
      separatorBuilder: (_, __) => const SeparatorWdiget(height: AppSize.s40),
      itemBuilder: (context, index) =>
          OrderListViewItemWidget(index: index, mocdata: orders),
    );
  }
}
