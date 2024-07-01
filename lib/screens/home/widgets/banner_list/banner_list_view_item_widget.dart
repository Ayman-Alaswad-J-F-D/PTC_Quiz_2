import 'package:flutter/material.dart';

import '../../../../core/helper/sizer_media_query.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../core/widgets/selectable_widget.dart';

class BannerListViewItemWidget extends StatelessWidget {
  const BannerListViewItemWidget({
    Key? key,
    required this.index,
    required this.selectedIndex,
    required this.onChange,
    required this.price,
    required this.codePrice,
    required this.subtitle,
  }) : super(key: key);

  final int index;
  final int selectedIndex;
  final ValueChanged<int> onChange;
  final String price;
  final String codePrice;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SelectableWidget(
      index: index,
      selectedIndex: selectedIndex,
      onChange: onChange,
      width: sizeWidth(context) * .43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: FittedBox(
              child: Text.rich(
                TextSpan(
                  text: price,
                  style: StylesManager.bold(
                    color: ColorManager.darkBlack,
                    fontSize: FontSize.s26,
                  ),
                  children: [
                    TextSpan(
                      text: " $codePrice",
                      style: StylesManager.light(
                        color: ColorManager.darkBlack,
                        fontSize: FontSize.s26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: FittedBox(
              child: Text(
                subtitle,
                style: StylesManager.meduim(
                  color: ColorManager.darkBlack,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
