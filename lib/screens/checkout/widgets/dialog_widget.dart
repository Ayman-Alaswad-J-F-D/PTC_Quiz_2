import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_workshop/models/mock_data_model.dart';

import '../../../../core/utils/extension_manager.dart';
import '../../../core/cubit/app_cubit.dart';
import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../core/widgets/custom_text_field_widget.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  late final MockData address;
  late String title;
  late String place;

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: sizeWidth(context) / 1.2,
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p15,
            vertical: AppPadding.p20,
          ),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
          child: Material(
            color: ColorManager.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Place Address",
                  style: StylesManager.meduim(
                    color: ColorManager.dark,
                    fontSize: FontSize.s20,
                  ),
                ),
                const SizedBox(height: AppSize.s15),
                CustomTextFieldWidget(
                  isUnderLineStyleBox: false,
                  defaultValue: title,
                  onChanged: (text) {
                    if (text.isNullOrEmpty) return;
                    title = text.trim();
                  },
                ),
                const SizedBox(height: AppSize.s15),
                CustomTextFieldWidget(
                  isUnderLineStyleBox: false,
                  defaultValue: place,
                  onChanged: (text) {
                    if (text.isNullOrEmpty) return;
                    place = text.trim();
                  },
                  fontStyle: StylesManager.bold(
                    color: ColorManager.darkBlack,
                    fontSize: FontSize.s16,
                  ),
                ),
                const SizedBox(height: AppSize.s10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (!(widget.index == 0))
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: ColorManager.error,
                          backgroundColor: ColorManager.error.withOpacity(.2),
                        ),
                        child: Text(
                          StringsManager.delete,
                          style: StylesManager.meduim(
                            color: ColorManager.error,
                          ),
                        ),
                        onPressed: _delete,
                      ),
                    const SizedBox(width: AppSize.s10),
                    TextButton(
                      child: const Text(StringsManager.confirm),
                      onPressed: _confirm,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _delete() {
    context.read<AppCubit>().deleteAddress(widget.index);
    context.back();
  }

  void _init() {
    address = context.read<AppCubit>().getAddress[widget.index];
    title = address.title;
    place = address.place!;
  }

  void _confirm() {
    final newAddress = MockData(
      title: title,
      place: place,
    );
    context.back(result: newAddress);
  }
}
