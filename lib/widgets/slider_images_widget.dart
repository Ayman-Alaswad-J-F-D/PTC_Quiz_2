import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/values_manager.dart';

class SliderImagesWidget extends StatefulWidget {
  const SliderImagesWidget({
    Key? key,
    required this.svgs,
    this.bottomPositioned,
    this.leftPositioned,
    this.dotWidth = AppSize.s15,
    this.dotColor = ColorManager.lightGrey,
    this.activeDotColor = ColorManager.secondary,
    this.padding = EdgeInsets.zero,
    this.alignment = AlignmentDirectional.topStart,
  }) : super(key: key);

  final List<String> svgs;
  final double dotWidth;
  final Color dotColor;
  final Color activeDotColor;
  final double? bottomPositioned;
  final double? leftPositioned;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;

  @override
  State<SliderImagesWidget> createState() => _SliderImagesWidgetState();
}

class _SliderImagesWidgetState extends State<SliderImagesWidget> {
  late final PageController _pageController;
  int _activeIndex = 0;

  @override
  void initState() {
    _setupController();
    super.initState();
  }

  @override
  void dispose() {
    _disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: widget.alignment,
      clipBehavior: Clip.none,
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.svgs.length,
          onPageChanged: _onPageChanged,
          itemBuilder: (context, index) => Padding(
            padding: widget.padding,
            child: SvgPicture.asset(widget.svgs[index]),
          ),
        ),
        Positioned(
          bottom: widget.bottomPositioned,
          left: widget.leftPositioned,
          child: AnimatedSmoothIndicator(
            activeIndex: _activeIndex,
            count: widget.svgs.length,
            onDotClicked: _animateToPage,
            effect: ExpandingDotsEffect(
              activeDotColor: widget.activeDotColor,
              dotColor: widget.dotColor.withOpacity(.2),
              expansionFactor: AppSize.s1_6,
              dotWidth: widget.dotWidth,
              dotHeight: AppSize.s6,
            ),
          ),
        ),
      ],
    );
  }

  void _setupController() => _pageController = PageController();

  void _disposeController() => _pageController.dispose();

  void _onPageChanged(int index) => setState(() => _activeIndex = index);

  void _animateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: Durations.long4,
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }
}
