import 'package:flutter/material.dart';
import 'package:multi/features/products/presentation/screens/bottom_navigation_item.dart';


class NavigatorScreen {
  final BottomNavigationItem bottomNavigationItem;
  final Widget screen;
  final void Function() onTap;

  NavigatorScreen(this.bottomNavigationItem, this.screen, this.onTap);
}
