import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:evently_hti_sun/core/widgets/custom_tab_item.dart' ;
import 'package:flutter/material.dart';

import '../../models/category_model.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.categories,
  required this.selectedBgColor, required this.selectedFgColor,
    required this.unSelectedBgColor, required this.unSelectedFgColor
  });
  final List<CategoryModel> categories;
  final Color selectedBgColor;
  final Color selectedFgColor;
  final Color unSelectedBgColor;
  final Color unSelectedFgColor;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {

 int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return    DefaultTabController(
      length:  widget.categories.length,
      child: TabBar(
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        isScrollable: true,
        indicatorColor: Colors.transparent,
        tabs:
        widget.categories
            .map((category) => CustomTabItem(category: category,
          isSelected: selectedIndex ==widget.categories.indexOf(category),
          selectedBgColor: widget.selectedBgColor, selectedFgColor:widget.selectedFgColor, unSelectedBgColor: widget.unSelectedBgColor, unSelectedFgColor: widget.unSelectedFgColor,))
            .toList(),
      ),
    );
  }
}
