import 'package:flutter/material.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../widgets/custom_sliver_app_bar_widget.dart';
import '../../../../widgets/saperator_widget.dart';
import '../../../../widgets/slider_images_widget.dart';
import '../../../core/widgets/price_widget.dart';
import '../../mixin/product_details_screen_mixin.dart';
import '../../widgets/add_to_cart_button_widget.dart';
import '../../widgets/buy_now_button_widget.dart';
import '../../widgets/expansion_tile_widget.dart';
import '../../widgets/offer_ratio_widget.dart';
import '../../widgets/registration_fee_widget.dart';
import '../../widgets/title_and_text_details_widget.dart';
import 'widgets/options_side_widget.dart';
import 'widgets/product_details_secondary_header.dart';

class ProductDetailsSecondaryScreen extends StatelessWidget
    with ProductDetailsScreenMixin {
  const ProductDetailsSecondaryScreen({Key? key}) : super(key: key);

  static const images = [
    AssestsManager.shopping,
    AssestsManager.doneShopping,
    AssestsManager.stripePayme,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        controller: getScrollController,
        slivers: [
          CustomSliverAppBarWidget(
            title: '',
            backButton: true,
            colorsActionIcons: ColorManager.darkBlack,
            backgroundColor: ColorManager.white.withOpacity(.95),
            header: const ProductDetailsSecondaryHeader(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: AppPadding.p20,
                      right: AppPadding.p14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppSize.s180,
                          width: AppSize.s140,
                          child: SliderImagesWidget(
                            svgs: images,
                            alignment: AlignmentDirectional.bottomStart,
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: OptionsSideWidget(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.s20),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: AppPadding.p12),
                    child: Row(
                      children: [
                        PriceWidget(price: StringsManager.priceProduct),
                        SizedBox(width: AppSize.s14),
                        OfferRatioWidget(ratio: StringsManager.ratioProductOFF),
                        SizedBox(width: AppSize.s10),
                        RegistrationFeesWidget(
                          fees: StringsManager.registrationFees,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: AppPadding.p20),
                    child: Row(
                      children: [
                        AddToCartButtonWidget(),
                        SizedBox(width: AppSize.s12),
                        BuyNowButtonWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.s10),
                  const TitleAndTextDetailsWidget(
                    detialsOfProduct: StringsManager.detialsOFProduct,
                  ),
                  const SizedBox(height: AppSize.s25),
                  ExpansionTileWidget(
                    title: StringsManager.nutritionalFacts,
                    children: [
                      Text(
                        StringsManager.detialsOFProduct,
                        key: getKeyFact,
                        textAlign: TextAlign.start,
                        style: StylesManager.regular(
                          color: ColorManager.lighterGrey,
                        ),
                      ),
                    ],
                    onExpansionChanged: onExpansionFacts,
                  ),
                  const SeparatorWdiget(),
                  ExpansionTileWidget(
                    key: getKeyReviews,
                    title: StringsManager.reviews,
                    children: List<Widget>.generate(
                      4,
                      (index) => ListTile(
                        title: Text("${StringsManager.reviews} ${index + 1}"),
                      ),
                    ),
                    onExpansionChanged: onExpansionReviews,
                  ),
                  const SizedBox(height: AppSize.s40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
