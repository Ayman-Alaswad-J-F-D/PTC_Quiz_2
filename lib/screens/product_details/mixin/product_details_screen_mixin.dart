import 'package:flutter/material.dart';

mixin ProductDetailsScreenMixin {
  static final _scrollController = ScrollController();
  static final _keyFact = GlobalKey();
  static final _keyReviews = GlobalKey();

  ScrollController get getScrollController => _scrollController;

  GlobalKey get getKeyFact => _keyFact;
  GlobalKey get getKeyReviews => _keyReviews;

  void onExpansionFacts(bool expanded) =>
      _onExpansionChanged(expanded, _keyFact);

  void onExpansionReviews(bool expanded) =>
      _onExpansionChanged(expanded, _keyReviews);

  static void _onExpansionChanged(bool expanded, GlobalKey key) {
    if (expanded) return _scrollToWidget(key);
    _animateScrollTo(key);
  }

  static void _scrollToWidget(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final render = key.currentContext!;
      await Scrollable.ensureVisible(
        render,
        alignment: _alignment(key),
        duration: Durations.long1,
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  static Future<void> _animateScrollTo(GlobalKey key) async {
    final heightWidget = (key.currentContext?.size?.height ?? 0);
    return await _scrollController.animateTo(
      (_scrollController.offset - heightWidget) + 30,
      duration: Durations.medium2,
      curve: Curves.linear,
    );
  }

  static double _alignment(GlobalKey<State<StatefulWidget>> key) =>
      identical(key, _keyReviews) ? 0.7 : 0.8;
}
