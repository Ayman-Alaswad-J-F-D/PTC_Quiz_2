import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/extension_manager.dart';
import '../core/utils/styles_manager.dart';
import '../core/utils/values_manager.dart';
import 'cart_icon_action_widget.dart';
import 'icon_button_widget.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Widget actionWidget;
  final Color backgroundColor;
  final bool cartAction;
  final Color colorBackIcon;

  const CustomAppBarWidget(
    BuildContext context, {
    Key? key,
    this.title = "",
    this.actionWidget = const SizedBox(),
    this.backgroundColor = ColorManager.transparent,
    this.cartAction = false,
    this.colorBackIcon = ColorManager.light,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      elevation: 0,
      backgroundColor: backgroundColor,
      surfaceTintColor: backgroundColor,
      title: _TitleWidget(title: title),
      leading: _BackIcon(color: colorBackIcon),
      leadingWidth: AppSize.s80,
      actions: [
        actionWidget,
        const SizedBox(width: AppSize.s20),
        if (cartAction)
          const CartIconActionWidget(color: ColorManager.darkBlack),
        const SizedBox(width: AppSize.s15),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class _BackIcon extends StatelessWidget {
  const _BackIcon({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      onPressed: context.back,
      icon: Icons.arrow_back_ios_new_rounded,
      backgroundColor: color,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p5),
      child: Text(
        title,
        style: StylesManager.regular(color: ColorManager.darkBlack),
      ),
    );
  }
}
