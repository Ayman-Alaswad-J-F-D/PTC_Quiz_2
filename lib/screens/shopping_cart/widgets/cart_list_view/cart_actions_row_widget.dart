import 'package:flutter/material.dart';

import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/values_manager.dart';

class CartActionsRowWidget extends StatelessWidget {
  const CartActionsRowWidget({
    Key? key,
    required this.cartLength,
    required this.expand,
    required this.onExpandItem,
  }) : super(key: key);

  final int cartLength;
  final bool expand;
  final VoidCallback onExpandItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (expand)
            TextButton(
              child: const Text(StringsManager.less),
              onPressed: onExpandItem,
            )
          else
            TextButton(
              child: Text("+ ${cartLength - 3} ${StringsManager.more}"),
              onPressed: onExpandItem,
            ),
          TextButton(
            child: const Text(StringsManager.edit),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
