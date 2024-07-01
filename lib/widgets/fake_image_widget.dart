import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/assets_manager.dart';
import '../core/utils/color_manager.dart';

class FakeImageWidget extends StatelessWidget {
  const FakeImageWidget({
    Key? key,
    this.width,
    this.color = ColorManager.lightGrey,
  }) : super(key: key);

  final double? width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AssestsManager.fakeImage,
        // ignore: deprecated_member_use
        color: color,
        width: width,
      ),
    );
  }
}
