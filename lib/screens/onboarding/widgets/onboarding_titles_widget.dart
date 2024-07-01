import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helper/responsive_helper.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class OnboardingTitlesWidget extends StatelessWidget {
  const OnboardingTitlesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: sizeWidth(context) * .68,
      width: AppSize.s255,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Text(
                StringsManager.titleOnboarding,
                style: StylesManager.semiBold(fontSize: FontSize.s30),
              ),
              Positioned(
                bottom: 5,
                left: ResponsiveHelper.isMobileSmall(context)
                    ? AppSize.s160
                    : AppSize.s90,
                child: SvgPicture.asset(AssestsManager.onboardingIcon),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s25),
          Text(
            StringsManager.suptitleOnboarding,
            style: StylesManager.light(
              color: ColorManager.white.withOpacity(.8),
            ).copyWith(height: 1.2),
          ),
        ],
      ),
    );
  }
}
