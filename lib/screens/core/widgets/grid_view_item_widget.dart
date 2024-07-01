import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/mock_data_model.dart';
import '../../../widgets/fake_image_widget.dart';
import 'circle_add_button_widget.dart';

class GridViewItemWidget extends StatelessWidget {
  const GridViewItemWidget({
    Key? key,
    required this.onTap,
    required this.mockData,
  }) : super(key: key);

  final MockData mockData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSize.s5),
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p10),
        decoration: BoxDecoration(
          color: ColorManager.light,
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Flexible(
              flex: 5,
              child: FakeImageWidget(width: AppSize.s80),
            ),
            const Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: CircleAddButtonWidget(),
              ),
            ),
            Text(
              '\$${mockData.price}',
              style: StylesManager.bold(
                fontSize: FontSize.s14,
                color: ColorManager.darkBlack,
              ),
            ),
            Flexible(
              flex: 4,
              child: Text(
                mockData.title,
                style: StylesManager.regular(
                  fontSize: FontSize.s12,
                  color: ColorManager.lightGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
