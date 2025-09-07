import 'package:evently_hti_sun/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  String id;
  String name;
  IconData iconData;
  String imagePath;
  CategoryModel({required this.id, required this.name, required this.iconData, required this.imagePath});
  //
  // static List<CategoryModel> categoriesWithAll = [
  //   CategoryModel(id: "0", name: "All", iconData: Icons.all_inclusive_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "1", name: "Sports", iconData: Icons.sports_football_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "2", name: "birthday", iconData: Icons.cake_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "3", name: "Meeting", iconData: Icons.laptop_mac_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "4", name: "Gaming", iconData: Icons.gamepad_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "5", name: "Eating", iconData: Icons.local_pizza_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "6", name: "Holiday", iconData: Icons.holiday_village_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "7", name: "Exhibition", iconData: Icons.water_drop_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "8", name: "Workshop", iconData: Icons.workspaces_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "9", name: "BookClub", iconData: Icons.book_rounded, imagePath: "imagePath"),
  // ];
  static List<CategoryModel> getCategoriesWithAll(BuildContext context){

    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return  [
      CategoryModel(id: "0", name: appLocalizations.all, iconData: Icons.all_inclusive_rounded, imagePath: "imagePath"),
      CategoryModel(id: "1", name: appLocalizations.sports, iconData: Icons.sports_football_rounded, imagePath: "imagePath"),
      CategoryModel(id: "2", name:appLocalizations.birthday ,iconData: Icons.cake_rounded, imagePath: "imagePath"),
      CategoryModel(id: "3", name: appLocalizations.meeting, iconData: Icons.laptop_mac_rounded, imagePath: "imagePath"),
      CategoryModel(id: "4", name:appLocalizations.gaming, iconData: Icons.gamepad_rounded, imagePath: "imagePath"),
      CategoryModel(id: "5", name: appLocalizations.eating, iconData: Icons.local_pizza_rounded, imagePath: "imagePath"),
      CategoryModel(id: "6", name: appLocalizations.holiday, iconData: Icons.holiday_village_rounded, imagePath: "imagePath"),
      CategoryModel(id: "7", name: appLocalizations.exhibition, iconData: Icons.water_drop_rounded, imagePath: "imagePath"),
      CategoryModel(id: "8", name: appLocalizations.workshop, iconData: Icons.workspaces_rounded, imagePath: "imagePath"),
      CategoryModel(id: "9", name: appLocalizations.bookclub, iconData: Icons.book_rounded, imagePath: "imagePath"),
    ];
  }
  static List<CategoryModel> getCategories(BuildContext context){

    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return  [
      CategoryModel(id: "1", name: appLocalizations.sports, iconData: Icons.sports_football_rounded, imagePath: "imagePath"),
      CategoryModel(id: "2", name:appLocalizations.birthday ,iconData: Icons.cake_rounded, imagePath: "imagePath"),
      CategoryModel(id: "3", name: appLocalizations.meeting, iconData: Icons.laptop_mac_rounded, imagePath: "imagePath"),
      CategoryModel(id: "4", name:appLocalizations.gaming, iconData: Icons.gamepad_rounded, imagePath: "imagePath"),
      CategoryModel(id: "5", name: appLocalizations.eating, iconData: Icons.local_pizza_rounded, imagePath: "imagePath"),
      CategoryModel(id: "6", name: appLocalizations.holiday, iconData: Icons.holiday_village_rounded, imagePath: "imagePath"),
      CategoryModel(id: "7", name: appLocalizations.exhibition, iconData: Icons.water_drop_rounded, imagePath: "imagePath"),
      CategoryModel(id: "8", name: appLocalizations.workshop, iconData: Icons.workspaces_rounded, imagePath: "imagePath"),
      CategoryModel(id: "9", name: appLocalizations.bookclub, iconData: Icons.book_rounded, imagePath: "imagePath"),
    ];
  }
  //
  // static List<CategoryModel> categories = [
  //   CategoryModel(id: "1", name: "Sports", iconData: Icons.sports_football_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "2", name: "birthday", iconData: Icons.cake_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "3", name: "Meeting", iconData: Icons.laptop_mac_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "4", name: "Gaming", iconData: Icons.gamepad_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "5", name: "Eating", iconData: Icons.local_pizza_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "6", name: "Holiday", iconData: Icons.holiday_village_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "7", name: "Exhibition", iconData: Icons.water_drop_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "8", name: "Workshop", iconData: Icons.workspaces_rounded, imagePath: "imagePath"),
  //   CategoryModel(id: "9", name: "BookClub", iconData: Icons.book_rounded, imagePath: "imagePath"),
  // ];
}