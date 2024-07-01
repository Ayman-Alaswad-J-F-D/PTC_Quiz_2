import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';

class SelectableBarListHorizontalWidget extends StatelessWidget {
  const SelectableBarListHorizontalWidget({
    Key? key,
    required this.selecetedIndex,
    required this.onChange,
    required this.mockData,
    this.maxHeightList,
    this.itemWidth,
  }) : super(key: key);

  final int selecetedIndex;
  final ValueChanged<int> onChange;
  final List<String> mockData;
  final double? itemWidth;
  final double? maxHeightList;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.loose(
        Size.fromHeight(maxHeightList ?? AppSize.s56),
      ),
      color: ColorManager.white.withOpacity(.85),
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.m20),
        scrollDirection: Axis.horizontal,
        itemCount: mockData.length,
        separatorBuilder: (_, __) => const SizedBox(width: AppMargin.m8),
        itemBuilder: (context, index) => SelectableBarItemWidget(
          index: index,
          selectedIndex: selecetedIndex,
          onChange: onChange,
          mockData: mockData,
          width: itemWidth,
        ),
      ),
    );
  }
}

class SelectableBarItemWidget extends StatelessWidget {
  const SelectableBarItemWidget({
    Key? key,
    required this.index,
    required this.selectedIndex,
    required this.onChange,
    required this.mockData,
    this.width,
    this.height,
  }) : super(key: key);

  final int index;
  final int selectedIndex;
  final ValueChanged<int> onChange;
  final List<String> mockData;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s16),
      onTap: () => onChange(index),
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.all(AppMargin.m1),
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        decoration: _styleBox(index == selectedIndex),
        child: Center(
          child: Text(
            mockData[index],
            style: StylesManager.semiBold(color: getColorText),
          ),
        ),
      ),
    );
  }

  Color get getColorText =>
      index == selectedIndex ? ColorManager.white : ColorManager.grey;

  BoxDecoration _styleBox(bool isSelectedIndex) {
    if (isSelectedIndex) {
      return BoxDecoration(
        color: ColorManager.secondary,
        borderRadius: BorderRadius.circular(AppSize.s20),
      );
    }
    return BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadius.circular(AppSize.s20),
      border: Border.all(color: ColorManager.lighterGrey),
    );
  }
}
