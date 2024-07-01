import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import 'rating_stars_widget.dart';

class RatingStarsReviewsWidget extends StatelessWidget {
  const RatingStarsReviewsWidget({
    Key? key,
    required this.rate,
    required this.countReviews,
  }) : super(key: key);

  final num rate;
  final num countReviews;

  @override
  Widget build(BuildContext context) {
    final count = countReviews.toInt();
    return Row(
      children: [
        RatingStarsWidget(rate: rate),
        const SizedBox(width: AppSize.s5),
        Flexible(
          child: Text(
            '$count ${StringsManager.reviews}',
            style: StylesManager.regular(
              fontSize: FontSize.s14,
              color: ColorManager.lighterGrey,
            ),
          ),
        ),
      ],
    );
  }
}
