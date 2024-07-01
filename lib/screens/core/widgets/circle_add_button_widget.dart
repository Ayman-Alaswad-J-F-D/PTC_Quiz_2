import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_workshop/core/cubit/app_cubit.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class CircleAddButtonWidget extends StatelessWidget {
  const CircleAddButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: context.read<AppCubit>().addToCart,
      icon: const Icon(Icons.add),
      iconSize: AppSize.s15,
      padding: EdgeInsets.zero,
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
        backgroundColor: ColorManager.primary,
      ),
    );
  }
}
