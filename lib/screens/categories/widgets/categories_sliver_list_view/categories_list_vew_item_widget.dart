import 'package:flutter/material.dart';

import '../../../../core/helper/sizer_media_query.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/extension_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../models/mock_data_model.dart';
import '../../../../widgets/fake_image_widget.dart';
import '../../../core/widgets/price_widget.dart';
import '../../../products/products_screen.dart';

class CategoriesListViewItemWidget extends StatelessWidget {
  const CategoriesListViewItemWidget({
    Key? key,
    required this.mockData,
  }) : super(key: key);

  final MockData mockData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeHeight(context) / 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSize.s14),
          onTap: () => context.push(
            ProductsScreen(title: mockData.title),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: mockData.color,
                    borderRadius: BorderRadius.circular(AppSize.s14),
                  ),
                  child: const FakeImageWidget(
                    color: ColorManager.black,
                    width: AppSize.s80,
                  ),
                ),
              ),
              const SizedBox(width: AppSize.s16),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        mockData.title,
                        style: StylesManager.bold(
                          fontSize: FontSize.s18,
                          color: ColorManager.darkBlack,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        mockData.subtitle!,
                        style: StylesManager.meduim(
                          color: ColorManager.grey,
                          fontSize: FontSize.s16,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.s20),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          StringsManager.startingFrom,
                          style: StylesManager.light(
                            color: ColorManager.lightGrey,
                            fontSize: FontSize.s14,
                          ),
                        ),
                      ),
                    ),
                    // /kg
                    Flexible(
                      child: PriceWidget(price: "${mockData.price}"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
