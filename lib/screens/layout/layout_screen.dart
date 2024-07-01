import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/color_manager.dart';
import 'cubit/layout_cubit.dart';
import 'mixin/layout_screen_mixin.dart';

// Use the Container/ClipRect/SafeArea to Fix the Display of the Botton Navigation Bar in IOS

class LayoutScreen extends StatelessWidget with LayoutScreenMixin {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: Container(
        color: ColorManager.white,
        child: ClipRect(
          child: SafeArea(
            top: false,
            child: Builder(
              builder: (context) {
                final cubit = context.read<LayoutCubit>();
                final currentScreen = context.watch<LayoutCubit>().state;
                return Scaffold(
                  extendBody: true,
                  body: screens.elementAt(currentScreen),
                  bottomNavigationBar: CurvedNavigationBar(
                    index: currentScreen,
                    onTap: cubit.onChangeScreen,
                    color: ColorManager.white,
                    animationDuration: Durations.long2,
                    buttonBackgroundColor: ColorManager.darkBlack,
                    backgroundColor: ColorManager.transparent,
                    items: curvedNaviagtionBarItems,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
