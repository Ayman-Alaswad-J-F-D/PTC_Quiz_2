import 'package:flutter/material.dart';

import '../../../../core/utils/extension_manager.dart';
import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/button_widget.dart';
import '../../layout/layout_screen.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p19),
      child: ButtonWidget(
        onPressed: () => context.pushReplacement(const LayoutScreen()),
        title: StringsManager.getStarted,
        buttonColor: ColorManager.white,
        fontColor: ColorManager.darkBlack,
        height: sizeHeight(context) / 11,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              StringsManager.getStarted,
              style: StylesManager.semiBold(
                fontSize: FontSize.s16,
                color: ColorManager.darkBlack,
              ),
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              color: ColorManager.dark,
            ),
          ],
        ),
      ),
    );
  }
}
