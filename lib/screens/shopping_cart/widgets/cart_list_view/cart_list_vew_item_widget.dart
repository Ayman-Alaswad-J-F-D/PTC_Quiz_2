import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_workshop/core/utils/font_manager.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../models/mock_data_model.dart';
import '../../../../widgets/icon_button_widget.dart';

class CartListViewItemWidget extends StatefulWidget {
  const CartListViewItemWidget({
    Key? key,
    required this.mockData,
  }) : super(key: key);

  final MockData mockData;

  @override
  State<CartListViewItemWidget> createState() => _CartListViewItemWidgetState();
}

class _CartListViewItemWidgetState extends State<CartListViewItemWidget> {
  late int quantity = widget.mockData.quantity!;

  void increaseQuantity() => setState(() => quantity++);

  void decreaseQuantity() {
    if (quantity <= 1) return;
    setState(() => quantity--);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: .8,
        child: SvgPicture.asset(
          AssestsManager.fakeImage,
          // ignore: deprecated_member_use
          color: ColorManager.darkBlack,
        ),
      ),
      minLeadingWidth: AppSize.s50,
      title: Text(widget.mockData.title),
      subtitle: Text("\$${widget.mockData.price}"),
      titleTextStyle: _styleSemibold,
      subtitleTextStyle: StylesManager.regular(
        color: ColorManager.darkBlack,
        fontSize: FontSize.s14,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: IconButtonWidget(
              icon: CupertinoIcons.minus,
              padding: AppPadding.p5,
              backgroundColor: ColorManager.light,
              onPressed: () => decreaseQuantity(),
            ),
          ),
          const SizedBox(width: AppSize.s5),
          Flexible(
            flex: 2,
            child: Text(quantity.toString(), style: _styleSemibold),
          ),
          const SizedBox(width: AppSize.s5),
          Flexible(
            child: IconButtonWidget(
              icon: Icons.add,
              padding: AppPadding.p5,
              backgroundColor: ColorManager.light,
              onPressed: () => increaseQuantity(),
            ),
          ),
        ],
      ),
    );
  }

  final _styleSemibold = StylesManager.semiBold(color: ColorManager.darkBlack);
}
