import 'package:flutter/material.dart';

import '../../../../models/mock_data_model.dart';
import '../date_and_status_order_widget.dart';
import '../delivery_rider_widget.dart';
import '../order_details_widget.dart';
import '../order_tracking_widget.dart';

class OrderListViewItemWidget extends StatelessWidget {
  const OrderListViewItemWidget({
    Key? key,
    required this.index,
    required this.mocdata,
  }) : super(key: key);

  final int index;
  final List<MockData> mocdata;

  @override
  Widget build(BuildContext context) {
    final nameOrder = mocdata[index].title.split(" ").last;
    return Column(
      children: [
        OrderDetailsWidget(
          mocdata: mocdata,
          index: index,
        ),
        if (_isPastOrder())
          DateAndStatusOrder(mocdata: mocdata, index: index)
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DeliveryRiderWidget(nameRider: mocdata[index].nameRider!),
              OrderTrackingInfoWidget(nameOrder: nameOrder),
            ],
          ),
      ],
    );
  }

  bool _isPastOrder() => mocdata[index].isSuccessOrder!;
}
