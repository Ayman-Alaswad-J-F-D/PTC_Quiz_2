import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cubit/app_cubit.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/extension_manager.dart';
import '../../core/utils/strings_manager.dart';
import '../../core/utils/styles_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../add_card/add_card_screen.dart';
import 'widgets/checkout_address_list/checkout_address_list_view_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  String _titleWithCounterCartItem(BuildContext context) =>
      context.read<AppCubit>().getCartTitleAndCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        context,
        title: _titleWithCounterCartItem(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsManager.deliveryAddress,
              style: StylesManager.meduim(color: ColorManager.darkBlack),
            ),
            const SizedBox(height: AppPadding.p30),
            const Flexible(
              child: CheckoutAddressListViewWidget(),
            ),
            ButtonWidget(
              title: StringsManager.addCard,
              onPressed: () => context.push(const AddCardScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
