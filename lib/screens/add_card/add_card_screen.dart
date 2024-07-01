import 'package:flutter/material.dart';

import '../../core/helper/sizer_media_query.dart';
import '../../core/utils/extension_manager.dart';
import '../../core/utils/strings_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../core/widgets/custom_text_field_widget.dart';
import '../core/widgets/invoice_widget.dart';
import '../orders/orders_screen.dart';
import 'widgets/label_widget.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(context, title: StringsManager.shoppingCart),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p20,
              vertical: AppPadding.p40,
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: sizeHeight(context) / 2.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelWidget(
                    title: StringsManager.cardHolderName.toUpperCase(),
                  ),
                  CustomTextFieldWidget(
                    defaultValue: StringsManager.johnSmith,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: AppSize.s35),
                  LabelWidget(
                    title: StringsManager.cardNumber.toUpperCase(),
                  ),
                  CustomTextFieldWidget(
                    defaultValue: StringsManager.numberPhone,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: AppSize.s35),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelWidget(
                              title: StringsManager.expDate.toUpperCase(),
                            ),
                            CustomTextFieldWidget(
                              defaultValue: StringsManager.cvcValue,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSize.s35),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelWidget(
                              title: StringsManager.cvc.toUpperCase(),
                            ),
                            CustomTextFieldWidget(
                              defaultValue: StringsManager.cvcValue,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: InvoiceWidget(
              titleButton: StringsManager.makePayment,
              onPressed: () => context.push(const OrdersScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
