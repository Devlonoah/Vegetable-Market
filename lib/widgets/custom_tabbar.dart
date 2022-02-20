import 'package:flutter/material.dart';
import '../color.dart';

class CustomTabBar extends StatelessWidget {
  final void Function(int)? onTap;
  List<IconData> icons;
  int selectedIndex;
  CustomTabBar({
    Key? key,
    this.onTap,
    required this.selectedIndex,
    required this.icons,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicator: const BoxDecoration(border: Border(top: BorderSide.none)),
        onTap: onTap,
        tabs: icons
            .asMap()
            .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    size: i == selectedIndex ? 30 : 20,
                    color:
                        i == selectedIndex ? AppPallete.green : AppPallete.grey,
                  ),
                )))
            .values
            .toList());
  }
}
