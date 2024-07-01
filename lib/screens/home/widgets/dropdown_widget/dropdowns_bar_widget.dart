import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import 'dropdown_button_widget.dart';

class DropdownsBarWidget extends StatelessWidget {
  const DropdownsBarWidget({Key? key}) : super(key: key);

  static const List<String> _dropDownDeliveryItem = Const.dropDownDeliveryItem;
  static const List<String> _dropDownWithinItem = Const.dropDownWithinItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p10,
        horizontal: AppPadding.p16,
      ),
      child: DefaultTextStyle(
        style: StylesManager.regular(
          color: ColorManager.whiteOp54,
          fontSize: FontSize.s11,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppPadding.p3),
                  child: Text(StringsManager.deliveryTo.toUpperCase()),
                ),
                DropdownButtonWidget<String>(
                  value: _dropDownDeliveryItem.first,
                  items: _buildMenuDeliveryItems(),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppPadding.p4),
                  child: Text(StringsManager.within.toUpperCase()),
                ),
                DropdownButtonWidget<String>(
                  value: _dropDownWithinItem.first,
                  items: _buildMenuWithinItems(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _buildMenuDeliveryItems() {
    return List.generate(
      _dropDownDeliveryItem.length,
      (index) => DropdownMenuItem(
        child: Text(_dropDownDeliveryItem[index]),
        value: _dropDownDeliveryItem[index],
        onTap: () {},
      ),
    );
  }

  List<DropdownMenuItem<String>> _buildMenuWithinItems() {
    return List.generate(
      _dropDownWithinItem.length,
      (index) => DropdownMenuItem(
        child: Text(_dropDownWithinItem[index]),
        value: _dropDownWithinItem[index],
        onTap: () {},
      ),
    );
  }
}
