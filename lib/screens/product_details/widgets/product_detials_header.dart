import 'package:flutter/material.dart';
import 'package:ptc_workshop/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../widgets/slider_images_widget.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({Key? key}) : super(key: key);

  static const images = [
    AssestsManager.creditCard,
    AssestsManager.locationTracking,
    AssestsManager.dedeliveryTruck,
  ];

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: SliderImagesWidget(
        padding: EdgeInsets.symmetric(vertical: AppPadding.p35),
        alignment: AlignmentDirectional.bottomCenter,
        bottomPositioned: AppSize.s15,
        svgs: images,
      ),
    );
  }
}
