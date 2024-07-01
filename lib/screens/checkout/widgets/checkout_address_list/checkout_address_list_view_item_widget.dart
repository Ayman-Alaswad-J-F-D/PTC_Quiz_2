import 'package:flutter/material.dart';
import 'package:ptc_workshop/models/mock_data_model.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../selected_mark_widget.dart';

class CheckoutAddressListViewItemWidget extends StatelessWidget {
  const CheckoutAddressListViewItemWidget({
    Key? key,
    required this.address,
    required this.index,
    required this.selectedItem,
    required this.onTap,
    required this.onTapEdit,
  }) : super(key: key);

  final MockData address;
  final int index;
  final int selectedItem;
  final ValueChanged<int> onTap;
  final Function(BuildContext, int) onTapEdit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p20),
      child: GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          decoration: _getDecoration,
          padding: const EdgeInsets.all(AppPadding.p20)
              .copyWith(right: AppPadding.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      address.title,
                      style: StylesManager.regular(
                        color: ColorManager.darkBlack,
                      ),
                    ),
                  ),
                  if (selectedItem == index) const SelectedMarkWidget(),
                ],
              ),
              const SizedBox(height: AppSize.s16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                      address.place!,
                      style: StylesManager.semiBold(
                        color: ColorManager.darkBlack,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ),
                  Flexible(
                    child: TextButton(
                      child: const Text(StringsManager.edit),
                      onPressed: () => onTapEdit(context, index),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  get _getDecoration =>
      selectedItem == index ? ckeckoutBoxDecoration : defualtBoxDecoration;

  static final defualtBoxDecoration = _boxDecoration();

  static final ckeckoutBoxDecoration = _boxDecoration(
    color: ColorManager.secondary,
    width: AppSize.s2,
  );

  static BoxDecoration _boxDecoration({
    Color color = ColorManager.veryLightGrey,
    double width = AppSize.s1,
  }) =>
      BoxDecoration(
        border: Border.all(color: color, width: width),
        borderRadius: BorderRadius.circular(AppSize.s12),
      );
}
