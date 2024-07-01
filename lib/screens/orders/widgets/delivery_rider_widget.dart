import 'package:flutter/material.dart';

import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/fake_image_widget.dart';

class DeliveryRiderWidget extends StatelessWidget {
  const DeliveryRiderWidget({
    Key? key,
    required this.nameRider,
  }) : super(key: key);

  final String nameRider;

  static const carRiderImage = AssestsManager.deliveryCarRider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: sizeWidth(context) / 2,
              height: AppSize.s130,
              child: Image.asset(
                carRiderImage,
                fit: BoxFit.contain,
              ),
            ),
            const Positioned(
              bottom: -AppSize.s3,
              right: AppSize.s12,
              left: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: AppSize.s20,
                      spreadRadius: -AppSize.s4,
                      offset: Offset(0, AppSize.s2),
                      color: ColorManager.lighterGrey,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: ColorManager.white,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorManager.light,
                    child: FakeImageWidget(width: AppSize.s25),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.s10),
        Text.rich(
          TextSpan(
            text: StringsManager.meetOurRider,
            style: StylesManager.regular(
              color: ColorManager.lightGrey,
            ),
            children: [
              TextSpan(
                text: nameRider,
                style: StylesManager.regular(
                  color: ColorManager.darkBlack,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.s10),
      ],
    );
  }
}
