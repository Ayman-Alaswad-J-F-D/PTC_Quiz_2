import 'package:flutter/material.dart';

import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/button_widget.dart';

class OrderTrackingInfoWidget extends StatelessWidget {
  const OrderTrackingInfoWidget({
    Key? key,
    required this.nameOrder,
  }) : super(key: key);

  final String nameOrder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: "${StringsManager.your + nameOrder}\n",
              style: StylesManager.regular(
                fontSize: FontSize.s20,
                color: ColorManager.darkBlack,
              ),
              children: [
                TextSpan(
                  text: StringsManager.areOnTheWay,
                  style: StylesManager.bold(color: ColorManager.darkBlack),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s15),
          ButtonWidget(
            title: StringsManager.trackOrder,
            width: sizeWidth(context) / 3.3,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
