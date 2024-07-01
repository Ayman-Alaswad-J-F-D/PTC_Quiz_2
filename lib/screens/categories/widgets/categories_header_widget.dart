import 'package:flutter/material.dart';

import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class CategoriesHeader extends StatelessWidget {
  const CategoriesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: sizeHeight(context) / 11,
        left: AppPadding.p20,
        bottom: AppPadding.p10,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          child: Text.rich(
            TextSpan(
              text: StringsManager.shop,
              children: [
                TextSpan(
                  text: StringsManager.byCategory,
                  style: StylesManager.bold(
                    fontSize: FontSize.s50,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.start,
            style: StylesManager.light(fontSize: FontSize.s55),
          ),
        ),
      ),
    );
  }
}
