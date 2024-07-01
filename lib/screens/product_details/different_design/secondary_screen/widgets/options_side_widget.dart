import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/values_manager.dart';

class OptionsSideWidget extends StatelessWidget {
  const OptionsSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p10),
      decoration: BoxDecoration(
        color: ColorManager.light,
        borderRadius: BorderRadius.circular(AppSize.s20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Builder(
            builder: (context) {
              bool _isFavorite = false;
              return StatefulBuilder(
                builder: (context, setState) {
                  void _addToFavorite() =>
                      setState(() => _isFavorite = !_isFavorite);
                  return IconButton(
                    icon: Icon(
                      _isFavorite ? IconlyBold.heart : IconlyBroken.heart,
                    ),
                    onPressed: _addToFavorite,
                    color: ColorManager.darkBlack,
                  );
                },
              );
            },
          ),
          const SizedBox(height: AppSize.s30),
          IconButton(
            color: ColorManager.darkBlack,
            icon: const Icon(Icons.more_horiz_rounded),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
