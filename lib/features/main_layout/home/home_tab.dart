import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:evently_hti_sun/core/widgets/custom_tab_bar.dart';
import 'package:evently_hti_sun/core/widgets/custom_tab_item.dart';
import 'package:evently_hti_sun/core/widgets/event_item.dart';
import 'package:evently_hti_sun/l10n/app_localizations.dart';
import 'package:evently_hti_sun/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/event_mode.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .primaryColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${AppLocalizations.of(context)!.welcome_message} ✨",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineSmall,
                    ),
                    Text(
                      "Muhammed Saad ✨",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 4.w),
                        Text(
                          "Cairo, Egypt",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineSmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.light_mode),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "En",
                      style: Theme
                          .of(context)
                          .textTheme
                          .labelSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomTabBar(categories: CategoryModel.getCategoriesWithAll(context),
            selectedBgColor: ColorsManager.whiteBlue,
            selectedFgColor: ColorsManager.blue,
            unSelectedBgColor: Colors.transparent,
            unSelectedFgColor: ColorsManager.white,)
        ],
      ),
    ),
    Expanded(child: ListView.separated(

    padding: REdgeInsets.symmetric(vertical: 16),
    separatorBuilder: (context, index)=> SizedBox(height: 16.h,),
    itemBuilder: (context, index)=>EventItem(event: EventModel(category: CategoryModel.getCategories(context)[3], title: "Meeting for Updating The Development Method ", description: "Meeting for Updating The Development Method ", dateTime: DateTime.now(), timeOfDay: TimeOfDay.now(),)), itemCount: 20,))
    ],
    );
  }
}
