import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:ptc_workshop/core/cubit/app_cubit.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/extension_manager.dart';
import '../core/utils/font_manager.dart';
import '../core/utils/styles_manager.dart';
import '../core/utils/values_manager.dart';
import '../screens/shopping_cart/shopping_cart_screen.dart';

class CartIconActionWidget extends StatelessWidget {
  const CartIconActionWidget({
    Key? key,
    this.color = ColorManager.white,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(
          icon: const Icon(IconlyLight.bag_2),
          iconSize: AppSize.s22,
          color: color,
          onPressed: () => context.push(const ShoppingCartScreen()),
        ),
        Positioned(
          top: AppSize.s6,
          right: AppSize.s6,
          child: CircleAvatar(
            radius: AppSize.s10,
            backgroundColor: ColorManager.secondary,
            child: Builder(
              builder: (context) {
                final counter = context.watch<AppCubit>().state;
                return Text(
                  counter.toString(),
                  style: StylesManager.regular(fontSize: FontSize.s14),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
