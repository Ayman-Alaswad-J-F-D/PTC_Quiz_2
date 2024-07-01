import 'package:flutter/material.dart';

import '../../../../../core/utils/values_manager.dart';
import '../../../widgets/rating_reviews_widget.dart';
import 'title_widget.dart';

class ProductDetailsSecondaryHeader extends StatelessWidget {
  const ProductDetailsSecondaryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.only(
          top: AppPadding.p50,
          left: AppPadding.p20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(child: TitleWidget()),
            Expanded(
              child: RatingStarsReviewsWidget(
                countReviews: AppSize.s110,
                rate: AppSize.s4_5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
