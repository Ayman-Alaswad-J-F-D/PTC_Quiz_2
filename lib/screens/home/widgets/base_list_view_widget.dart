import 'package:flutter/material.dart';

import '../../../core/helper/sizer_media_query.dart';
import '../../../core/utils/values_manager.dart';

class BaseListViewWidget extends StatelessWidget {
  const BaseListViewWidget({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.height,
  }) : super(key: key);

  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size.fromHeight(height ?? sizeHeight(context) / 4.5),
      ),
      child: ListView.separated(
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(AppPadding.p20),
        separatorBuilder: (_, __) => const SizedBox(width: AppPadding.p18),
      ),
    );
  }
}
