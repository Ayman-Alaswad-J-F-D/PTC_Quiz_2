import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:iconly/iconly.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class RatingStarsWidget extends StatelessWidget {
  const RatingStarsWidget({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final num rate;

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: double.parse(rate.toString()),
      maxValueVisibility: false,
      valueLabelColor: ColorManager.secondary,
      valueLabelVisibility: false,
      valueLabelRadius: AppSize.s5,
      valueLabelPadding: const EdgeInsets.symmetric(
        vertical: AppPadding.p2,
        horizontal: AppPadding.p6,
      ),
      starColor: ColorManager.secondary,
      starSize: AppSize.s22,
      starSpacing: AppSize.s1,
      starCount: AppSize.s5.toInt(),
      starOffColor: ColorManager.darkBlack,
      starBuilder: (index, color) => Icon(
        IconlyBold.star,
        color: color,
        size: AppSize.s18,
      ),
      // onValueChanged: (value) => setState(() => widget.rate = value),
    );
  }
}
