import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/utils/values_manager.dart';
import '../../../../../widgets/button_widget.dart';
import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/styles_manager.dart';

class InvoiceWidget extends StatelessWidget {
  const InvoiceWidget({
    Key? key,
    required this.onPressed,
    this.titleButton = StringsManager.proceedToCheckout,
  }) : super(key: key);

  final String titleButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth(context),
      margin: const EdgeInsets.symmetric(horizontal: AppMargin.m8),
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p30,
        vertical: AppPadding.p18,
      ),
      decoration: const BoxDecoration(
        color: ColorManager.veryLightGrey,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _InvoiceDetailsWidget(
            title: StringsManager.subtotal,
            price: "\$35.96",
          ),
          const _InvoiceDetailsWidget(
            title: StringsManager.delivery,
            price: "\$2.00",
          ),
          const _InvoiceDetailsWidget(
            title: StringsManager.total,
            price: "\$38.98",
          ),
          const SizedBox(height: AppSize.s20),
          ButtonWidget(
            title: titleButton,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class _InvoiceDetailsWidget extends StatelessWidget {
  const _InvoiceDetailsWidget({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: StylesManager.regular(
                color: ColorManager.lightGrey,
              ),
            ),
          ),
          Flexible(
            child: Text(
              price,
              style: StylesManager.semiBold(color: ColorManager.black),
            ),
          ),
        ],
      ),
    );
  }
}
