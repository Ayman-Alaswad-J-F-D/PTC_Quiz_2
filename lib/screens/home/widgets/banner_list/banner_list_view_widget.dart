import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../base_list_view_widget.dart';
import 'banner_list_view_item_widget.dart';

class BannerListViewWidget extends StatefulWidget {
  const BannerListViewWidget({Key? key}) : super(key: key);

  @override
  State<BannerListViewWidget> createState() => _BannerListViewWidgetState();
}

class _BannerListViewWidgetState extends State<BannerListViewWidget> {
  int selectedIndex = 0;

  void onChange(int index) => setState(() => selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return BaseListViewWidget(
      itemCount: Const.banners.length,
      itemBuilder: (context, index) {
        final mockData = Const.banners[index];
        final title = mockData.title.split(" ");
        final price = title.first;
        final codePrice = title.last;
        return BannerListViewItemWidget(
          index: index,
          selectedIndex: selectedIndex,
          onChange: onChange,
          price: price,
          codePrice: codePrice,
          subtitle: mockData.subtitle!,
        );
      },
    );
  }
}
