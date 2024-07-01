import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/values_manager.dart';
import '../../../../../widgets/slider_images_widget.dart';

class ProductDetailsTripleHeader extends StatelessWidget {
  const ProductDetailsTripleHeader({Key? key}) : super(key: key);

  static const images = [
    AssestsManager.addToCart,
    AssestsManager.locationTracking,
    AssestsManager.dedeliveryTruck,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: ColorManager.light,
          shape: BoxShape.circle,
        ),
        child: const SliderImagesWidget(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p35),
          alignment: AlignmentDirectional.bottomCenter,
          bottomPositioned: AppSize.s20,
          svgs: images,
        ),
      ),
    );
  }
}
