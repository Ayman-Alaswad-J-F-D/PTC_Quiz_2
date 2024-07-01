import 'package:flutter/material.dart';

import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class AddNewAddressButtonWidget extends StatelessWidget {
  const AddNewAddressButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p20,
        top: AppPadding.p10,
      ),
      child: TextButton.icon(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 0,
          foregroundColor: ColorManager.lighterGrey,
          backgroundColor: ColorManager.white,
          surfaceTintColor: ColorManager.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          minimumSize: Size.fromHeight(sizeHeight(context) / 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s5),
          ),
        ),
        label: Text(
          StringsManager.addNewAddress,
          style: StylesManager.meduim(color: ColorManager.darkBlack),
        ),
        icon: const Icon(
          Icons.add_circle_outline_rounded,
          color: ColorManager.secondary,
        ),
      ),
    );
  }
}
