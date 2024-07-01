import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20)
          .copyWith(top: AppPadding.p50),
      child: TextField(
        cursorColor: ColorManager.white,
        cursorRadius: const Radius.circular(AppSize.s10),
        style: StylesManager.meduim(),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
          filled: true,
          fillColor: ColorManager.darkPrimary,
          hintText: StringsManager.hintSearch,
          hintStyle: StylesManager.meduim(color: ColorManager.whiteOp38),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(
              left: AppPadding.p28,
              right: AppPadding.p14,
            ),
            child: Icon(IconlyBroken.search, size: AppSize.s20),
          ),
          prefixIconColor: ColorManager.white,
          enabledBorder: _defaultOutlineBorder,
          focusedBorder: _defaultOutlineBorder,
          border: _defaultOutlineBorder,
        ),
      ),
    );
  }

  final _defaultOutlineBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppSize.s30)),
    borderSide: BorderSide.none,
  );
}
