import 'package:flutter/material.dart';

import '../../core/helper/sizer_media_query.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/font_manager.dart';
import '../../core/utils/strings_manager.dart';
import '../../core/utils/styles_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/custom_sliver_app_bar_widget.dart';
import '../../widgets/saperator_widget.dart';
import '../core/widgets/price_widget.dart';
import 'mixin/product_details_screen_mixin.dart';
import 'widgets/add_to_cart_button_widget.dart';
import 'widgets/background_content.dart';
import 'widgets/buy_now_button_widget.dart';
import 'widgets/expansion_tile_widget.dart';
import 'widgets/offer_ratio_widget.dart';
import 'widgets/product_detials_header.dart';
import 'widgets/rating_reviews_widget.dart';
import 'widgets/registration_fee_widget.dart';
import 'widgets/title_and_text_details_widget.dart';

class ProductDetailsScreen extends StatelessWidget
    with ProductDetailsScreenMixin {
  const ProductDetailsScreen({
    Key? key,
    this.title = StringsManager.orange,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: sizeHeight(context) * 0.66,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppMargin.m8),
              child: DecoratedBox(
                decoration: BoxDecoration(color: ColorManager.light),
              ),
            ),
          ),
          Positioned.fill(
            child: CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              controller: getScrollController,
              slivers: [
                CustomSliverAppBarWidget(
                  title: title,
                  backButton: true,
                  fontSizeTitle: FontSize.s16,
                  colorsActionIcons: ColorManager.darkBlack,
                  backgroundColor: ColorManager.white.withOpacity(.95),
                  header: const ProductDetailsHeader(),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: BackgroundContent(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringsManager.thinChoiseTopOrange,
                          style: StylesManager.bold(color: ColorManager.black),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: AppPadding.p12),
                          child: Row(
                            children: [
                              PriceWidget(price: StringsManager.priceProduct),
                              SizedBox(width: AppSize.s14),
                              OfferRatioWidget(
                                ratio: StringsManager.ratioProductOFF,
                              ),
                              SizedBox(width: AppSize.s10),
                              RegistrationFeesWidget(
                                fees: StringsManager.registrationFees,
                              ),
                            ],
                          ),
                        ),
                        const RatingStarsReviewsWidget(
                          countReviews: AppSize.s110,
                          rate: AppSize.s4_5,
                        ),
                        const SizedBox(height: AppSize.s22),
                        const TitleAndTextDetailsWidget(
                          detialsOfProduct: StringsManager.detialsOFProduct,
                        ),
                        const SizedBox(height: AppSize.s30),
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
                              title: Text(
                                "${StringsManager.reviews} ${index + 1}",
                              ),
                            ),
                          ),
                          onExpansionChanged: onExpansionReviews,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: AppPadding.p25,
                          ),
                          child: Row(
                            children: [
                              AddToCartButtonWidget(),
                              SizedBox(width: AppSize.s12),
                              BuyNowButtonWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
