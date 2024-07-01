import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../../../../core/helper/sizer_media_query.dart';
import '../../../../core/utils/extension_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../models/mock_data_model.dart';
import '../../../../widgets/saperator_widget.dart';
import '../expanded_cart_item_widget.dart';
import '../shrinked_cart_item_widget.dart';

class CartListViewWidget extends StatefulWidget {
  const CartListViewWidget({
    Key? key,
    required this.isFoundOffer,
  }) : super(key: key);

  final bool isFoundOffer;

  @override
  State<CartListViewWidget> createState() => _CartListViewWidgetState();
}

class _CartListViewWidgetState extends State<CartListViewWidget> {
  bool expand = false;
  late final ScrollController controller;
  late final List<MockData> mockDataList;

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: controller,
      padding: EdgeInsets.only(bottom: sizeHeight(context) / 3.2),
      itemCount: _getItemCount,
      separatorBuilder: (_, __) => const SeparatorWdiget(
        indentStartAndEnd: AppSize.s20,
        thickness: AppSize.s0_5,
      ),
      itemBuilder: (context, index) {
        if (_shouldShowShrinkCartWidget(index)) {
          return ShrinkedCartItemWidget(
            index: index,
            expand: expand,
            mockData: mockDataList,
            onExpandItem: onExpandItem,
          );
        } else {
          return ExpandedCartItemWidget(
            index: index,
            expand: expand,
            mockData: mockDataList,
            onExpandItem: onExpandItem,
          );
        }
      },
    );
  }

  void _init() {
    controller = ScrollController();
    mockDataList = Const.cartItems;
  }

  int get _getItemCount =>
      expand || !widget.isFoundOffer ? mockDataList.length : AppSize.s3.toInt();

  bool _shouldShowShrinkCartWidget(int index) =>
      index == 2 && !expand && widget.isFoundOffer;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onExpandItem() {
    setState(() => expand = !expand);
    _animateScroll();
  }

  void _animateScroll() async {
    if (!expand) return await controller.moveToTop();
    controller.moveToDown(AppSize.s8);
  }
}
