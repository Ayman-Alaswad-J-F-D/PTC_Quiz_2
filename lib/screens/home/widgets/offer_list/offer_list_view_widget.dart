import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../base_list_view_widget.dart';
import 'offer_list_view_item_widget.dart';

class OfferListViewWidget extends StatefulWidget {
  const OfferListViewWidget({Key? key}) : super(key: key);

  @override
  State<OfferListViewWidget> createState() => _OfferListViewWidgetState();
}

class _OfferListViewWidgetState extends State<OfferListViewWidget> {
  int selectedIndex = 0;
  void onChange(int index) => setState(() => selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return BaseListViewWidget(
      itemCount: Const.offers.length,
      itemBuilder: (context, index) => OfferListViewItemWidget(
        index: index,
        selectedIndex: selectedIndex,
        onChange: onChange,
        mockData: Const.offers[index],
      ),
    );
  }
}
