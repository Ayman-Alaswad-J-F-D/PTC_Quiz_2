import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubit/app_cubit.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../widgets/button_widget.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonWidget(
        title: StringsManager.addToCart,
        onPressed: context.read<AppCubit>().addToCart,
        buttonColor: ColorManager.white,
        fontColor: ColorManager.primary,
      ),
    );
  }
}
