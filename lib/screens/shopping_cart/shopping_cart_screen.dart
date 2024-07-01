import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cubit/app_cubit.dart';
import '../../core/utils/extension_manager.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../checkout/checkout_screen.dart';
import '../core/widgets/invoice_widget.dart';
import 'widgets/banner_offer_widget.dart';
import 'widgets/cart_list_view/cart_list_view_widget.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  late final AppCubit cubit;
  late final String titleWithCounterCartItem;
  late final bool _isFoundOffer;

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarWidget(context, title: titleWithCounterCartItem),
      body: Stack(
        children: [
          Column(
            children: [
              if (_isFoundOffer) const BannerOfferWidget(),
              Expanded(
                child: SafeArea(
                  top: !_isFoundOffer,
                  child: CartListViewWidget(isFoundOffer: _isFoundOffer),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InvoiceWidget(
              onPressed: () => context.push(const CheckoutScreen()),
            ),
          ),
        ],
      ),
    );
  }

  void _init() {
    cubit = context.read<AppCubit>();
    titleWithCounterCartItem = cubit.getCartTitleAndCounter;
    _isFoundOffer = cubit.isFoundOffer();
  }
}
