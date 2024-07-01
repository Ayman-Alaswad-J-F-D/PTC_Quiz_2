import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_workshop/core/helper/sizer_media_query.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class BannerOfferWidget extends StatelessWidget {
  const BannerOfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight(context) / 3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.lightSecondary.withOpacity(.9),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: -AppSize.s20,
                  child: SvgPicture.asset(
                    AssestsManager.backgroundShoppingCartOffer,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: AppSize.s30,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Text(
                        StringsManager.off,
                        style: StylesManager.bold(fontSize: FontSize.s14),
                      ),
                      Text(
                        StringsManager.ratio25,
                        style: StylesManager.bold(fontSize: FontSize.s110),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: AppSize.s40,
              color: ColorManager.secondary,
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  text: StringsManager.useCode,
                  style: StylesManager.meduim(color: ColorManager.darkBlack),
                  children: [
                    TextSpan(
                      text: StringsManager.halalFood,
                      style: StylesManager.bold(
                        color: ColorManager.darkBlack,
                        fontSize: FontSize.s14,
                      ),
                    ),
                    TextSpan(
                      text: StringsManager.atCheckout,
                      style: StylesManager.meduim(
                        color: ColorManager.darkBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
