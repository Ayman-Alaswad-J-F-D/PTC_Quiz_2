import 'package:flutter/material.dart';

import '../../../../core/helper/sizer_media_query.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../models/mock_data_model.dart';
import '../../../../widgets/fake_image_widget.dart';
import '../../../core/widgets/selectable_widget.dart';

class OfferListViewItemWidget extends StatelessWidget {
  const OfferListViewItemWidget({
    Key? key,
    required this.index,
    required this.selectedIndex,
    required this.onChange,
    required this.mockData,
  }) : super(key: key);

  final int index;
  final int selectedIndex;
  final ValueChanged<int> onChange;
  final MockData mockData;

  @override
  Widget build(BuildContext context) {
    return SelectableWidget(
      index: index,
      selectedIndex: selectedIndex,
      selectedColor: ColorManager.secondary,
      onChange: onChange,
      width: sizeWidth(context) / 1.35,
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: FakeImageWidget(
              width: AppSize.s70,
              color: ColorManager.white,
            ),
          ),
          const SizedBox(width: AppSize.s20),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: FittedBox(
                    child: Text(
                      StringsManager.get,
                      style: StylesManager.light(
                        fontSize: FontSize.s20,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: FittedBox(
                    child: Text(
                      "${mockData.title} ${StringsManager.offWithoutMark}",
                      style: StylesManager.bold(fontSize: FontSize.s28),
                    ),
                  ),
                ),
                Flexible(
                  child: FittedBox(
                    child: Text.rich(
                      TextSpan(
                        text: StringsManager.onFirst,
                        style: StylesManager.light(
                          fontSize: FontSize.s13,
                        ),
                        children: [
                          TextSpan(
                            text: mockData.note,
                            style: StylesManager.meduim(),
                          ),
                          const TextSpan(text: StringsManager.order),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
