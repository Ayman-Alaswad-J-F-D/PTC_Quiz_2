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
import '../../../../widgets/saperator_widget.dart';
import '../../../core/widgets/circle_add_button_widget.dart';
import '../../../product_details/different_design/triple_screen/product_details_triple_screen.dart';

class RecomendedListViewItemWidget extends StatelessWidget {
  const RecomendedListViewItemWidget({
    Key? key,
    required this.mockData,
  }) : super(key: key);

  final MockData mockData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(const ProductDetailsTripleScreen()),
      borderRadius: BorderRadius.circular(AppSize.s5),
      child: Container(
        width: sizeWidth(context) / 2.9,
        padding: const EdgeInsets.only(top: AppPadding.p20),
        decoration: BoxDecoration(
          color: ColorManager.light,
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        child: DefaultTextStyle(
          style: StylesManager.meduim(color: ColorManager.darkBlack),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: FakeImageWidget(),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: AppPadding.p10,
                    left: AppPadding.p16,
                    right: AppPadding.p16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        child: SeparatorWdiget(),
                      ),
                      FittedBox(
                        child: Text(
                          mockData.title,
                          overflow: TextOverflow.ellipsis,
                          style: StylesManager.semiBold(
                            color: ColorManager.darkBlack,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: FittedBox(
                          child: Text(
                            mockData.subtitle!,
                            style: StylesManager.regular(
                              color: ColorManager.grey,
                              fontSize: FontSize.s12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: AppPadding.p10),
                  margin: const EdgeInsets.only(
                    top: AppMargin.m12,
                    bottom: AppMargin.m20,
                    left: AppMargin.m8,
                    right: AppMargin.m8,
                  ),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSize.s20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: AppSize.s1,
                        spreadRadius: AppSize.s0_3,
                        offset: Offset(0, 1),
                        color: ColorManager.veryLightGrey,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        child: Text(
                          StringsManager.unit,
                          style: StylesManager.regular(
                            color: ColorManager.lighterGrey,
                            fontSize: FontSize.s13,
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSize.s3),
                      FittedBox(
                        child: Text(
                          '\$${mockData.price}',
                          style: StylesManager.semiBold(
                            fontSize: FontSize.s12,
                            color: ColorManager.dark,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Flexible(
                        child: CircleAddButtonWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
