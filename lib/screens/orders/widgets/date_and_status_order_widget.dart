import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/mock_data_model.dart';

class DateAndStatusOrder extends StatelessWidget {
  const DateAndStatusOrder({
    Key? key,
    required this.mocdata,
    required this.index,
  }) : super(key: key);

  final int index;
  final List<MockData> mocdata;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: AppSize.s62),
        Text(
          mocdata[index].date!,
          style: StylesManager.regular(color: ColorManager.lightGrey),
        ),
        const Spacer(flex: 3),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppSize.s6),
          ),
          padding: const EdgeInsets.all(AppPadding.p5),
          child: Text(
            StringsManager.success,
            style: StylesManager.meduim(
              color: ColorManager.primary,
              fontSize: FontSize.s13,
            ),
          ),
        ),
      ],
    );
  }
}
