import 'package:flutter/material.dart';

import '../../../core/utils/extension_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../widgets/button_widget.dart';
import '../../shopping_cart/shopping_cart_screen.dart';

class BuyNowButtonWidget extends StatelessWidget {
  const BuyNowButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonWidget(
        title: StringsManager.buyNow,
        onPressed: () => context.push(const ShoppingCartScreen()),
      ),
    );
  }
}
