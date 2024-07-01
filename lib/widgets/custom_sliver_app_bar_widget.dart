import 'package:flutter/material.dart';

import '../../../../core/utils/extension_manager.dart';
import '../core/helper/sizer_media_query.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/font_manager.dart';
import '../core/utils/strings_manager.dart';
import '../core/utils/styles_manager.dart';
import '../core/utils/values_manager.dart';
import 'cart_icon_action_widget.dart';
import 'icon_button_widget.dart';

class CustomSliverAppBarWidget extends StatelessWidget {
  const CustomSliverAppBarWidget({
    Key? key,
    required this.header,
    this.title = StringsManager.titleLayoutScreen,
    this.action,
    this.pinned = true,
    this.bottomHeader,
    this.expandedHeight,
    this.backButton = false,
    this.backgroundColor,
    this.fontSizeTitle = FontSize.s22,
    this.colorsActionIcons = ColorManager.white,
  }) : super(key: key);

  final Widget header;
  final String title;
  final Widget? action;
  final bool pinned;
  final Widget? bottomHeader;
  final double fontSizeTitle;
  final bool backButton;
  final double? expandedHeight;
  final Color? backgroundColor;
  final Color colorsActionIcons;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      stretch: true,
      collapsedHeight: sizeHeight(context) * 0.08,
      expandedHeight: expandedHeight ?? sizeHeight(context) * 0.32,
      backgroundColor: backgroundColor ?? ColorManager.primary,
      surfaceTintColor: backgroundColor ?? ColorManager.primary,
      leadingWidth: backButton ? AppSize.s80 : null,
      leading: _getBackIcon(context),
      actions: [
        action ?? const SizedBox(),
        const SizedBox(width: AppSize.s15),
        CartIconActionWidget(color: colorsActionIcons),
        const SizedBox(width: AppSize.s12),
      ],
      title: _TitleWidget(
        title: title,
        fontSizeTitle: fontSizeTitle,
        colorsActionIcons: colorsActionIcons,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Center(child: header),
      ),
      bottom: _getPreferredSize(context),
    );
  }

  IconButtonWidget? _getBackIcon(BuildContext context) => backButton
      ? IconButtonWidget(
          icon: Icons.arrow_back_ios_new_rounded,
          backgroundColor: ColorManager.light,
          onPressed: context.back,
        )
      : null;

  PreferredSize? _getPreferredSize(BuildContext context) => bottomHeader == null
      ? null
      : PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: bottomHeader!,
        );
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
    required this.fontSizeTitle,
    required this.colorsActionIcons,
  }) : super(key: key);

  final String title;
  final double fontSizeTitle;
  final Color colorsActionIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p5),
      child: Text(
        title,
        style: StylesManager.regular(
          fontSize: fontSizeTitle,
          color: colorsActionIcons,
        ),
      ),
    );
  }
}
