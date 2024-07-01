import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ptc_workshop/core/utils/strings_manager.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/styles_manager.dart';
import '../../categories/categories_screen.dart';
import '../../home/home_screen.dart';

/// Do not forget when adding a new screen in the list [_screens]
/// you must also add an icon to it in the list [_navigationBarItem].
mixin LayoutScreenMixin {
  List<Widget> get screens => _screens;

  static const List<Widget> _screens = [
    HomeScreen(),
    CategoriesScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  List<CurvedNavigationBarItem> get curvedNaviagtionBarItems =>
      _navigationBarItem.map((item) => _fillData(item)).toList();

  CurvedNavigationBarItem _fillData(NavigationBarItem item) =>
      CurvedNavigationBarItem(
        label: item.label,
        selectedIcon: item.selectedIcon,
        unSelectedIcon: item.unSelectedIcon,
        selcetedIconColor: ColorManager.gold,
        unSelcetedIconColor: ColorManager.darkBlack,
        labelStyle: StylesManager.regular(color: ColorManager.lightGrey),
      );

  static const List<NavigationBarItem> _navigationBarItem = [
    NavigationBarItem(
      label: StringsManager.home,
      selectedIcon: IconlyBold.home,
      unSelectedIcon: IconlyLight.home,
    ),
    NavigationBarItem(
      label: StringsManager.categories,
      selectedIcon: IconlyBold.category,
      unSelectedIcon: IconlyLight.category,
    ),
    NavigationBarItem(
      label: StringsManager.favourite,
      selectedIcon: IconlyBold.heart,
      unSelectedIcon: IconlyLight.heart,
    ),
    NavigationBarItem(
      label: StringsManager.more,
      selectedIcon: Icons.more_vert_outlined,
      unSelectedIcon: Icons.more_vert,
    ),
  ];
}

class NavigationBarItem {
  final IconData selectedIcon;
  final IconData unSelectedIcon;
  final String label;

  const NavigationBarItem({
    required this.unSelectedIcon,
    required this.selectedIcon,
    required this.label,
  });
}
