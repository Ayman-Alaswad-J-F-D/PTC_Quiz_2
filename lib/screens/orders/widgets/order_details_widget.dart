import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/mock_data_model.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    Key? key,
    required this.mocdata,
    required this.index,
  }) : super(key: key);

  final int index;
  final List<MockData> mocdata;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        AssestsManager.fakeImage,
        // ignore: deprecated_member_use
        color: ColorManager.grey,
        fit: BoxFit.contain,
        width: AppSize.s50,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: AppPadding.p8),
        child: Text(mocdata[index].title),
      ),
      subtitle: Text("\$${mocdata[index].price}"),
      trailing: Text.rich(
        TextSpan(
          text: StringsManager.id,
          style: StylesManager.regular(
            color: ColorManager.lighterGrey,
          ),
          children: [
            TextSpan(
              text: "#${mocdata[index].id}",
              style: StylesManager.regular(
                color: ColorManager.darkBlack,
              ),
            ),
          ],
        ),
      ),
      titleTextStyle: StylesManager.regular(
        color: ColorManager.lightGrey,
      ),
      subtitleTextStyle: StylesManager.bold(
        color: ColorManager.darkBlack,
        fontSize: FontSize.s14,
      ),
    );
  }
}
