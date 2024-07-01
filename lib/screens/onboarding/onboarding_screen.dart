import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/assets_manager.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/slider_images_widget.dart';
import 'widgets/get_started_button_widget.dart';
import 'widgets/onboarding_titles_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static const images = [
    AssestsManager.welcome,
    AssestsManager.smallTow,
    AssestsManager.doneShopping,
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    return const Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.p33,
            horizontal: AppPadding.p42,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OnboardingTitlesWidget(),
              SizedBox(height: AppSize.s25),
              Expanded(
                child: SliderImagesWidget(
                  svgs: images,
                  dotWidth: AppSize.s20,
                  dotColor: ColorManager.white,
                  activeDotColor: ColorManager.white,
                ),
              ),
              GetStartedButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
