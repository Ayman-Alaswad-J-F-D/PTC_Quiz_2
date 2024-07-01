import 'package:flutter/material.dart';
import 'package:ptc_workshop/widgets/saperator_widget.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/extension_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../models/mock_data_model.dart';
import '../../../../widgets/fake_image_widget.dart';
import '../../../products/products_screen.dart';

class CategoriesGridViewItemWidget extends StatelessWidget {
  const CategoriesGridViewItemWidget({
    Key? key,
    required this.mockData,
  }) : super(key: key);

  final MockData mockData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s10),
      onTap: () => context.push(
        ProductsScreen(title: mockData.title),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p28,
          vertical: AppPadding.p20,
        ),
        decoration: BoxDecoration(
          color: ColorManager.light,
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 3,
              child: FakeImageWidget(),
            ),
            const SeparatorWdiget(),
            Expanded(
              child: FittedBox(
                child: Text(
                  mockData.title,
                  style: StylesManager.semiBold(
                    fontSize: FontSize.s13,
                    color: ColorManager.darkBlack,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FittedBox(
                child: Text(
                  mockData.subtitle!,
                  style: StylesManager.regular(
                    fontSize: FontSize.s12,
                    color: ColorManager.lightGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
