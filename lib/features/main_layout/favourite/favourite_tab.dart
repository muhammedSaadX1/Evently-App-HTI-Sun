import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:evently_hti_sun/core/widgets/custom_text_form_field.dart';
import 'package:evently_hti_sun/core/widgets/event_item.dart';
import 'package:evently_hti_sun/l10n/app_localizations.dart';
import 'package:evently_hti_sun/l10n/app_localizations_ar.dart';
import 'package:evently_hti_sun/models/category_model.dart';
import 'package:evently_hti_sun/models/event_model.dart' show EventModel;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextField(

              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.search_for_event,
                hintStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold, color: ColorsManager.blue)
              ,prefixIcon: Icon(Icons.search),
                prefixIconColor: ColorsManager.blue
              ),
            ),
          ),
          Expanded(child: ListView.separated(
            padding: EdgeInsets.zero,
              itemBuilder: (context, index)=>
                  EventItem(event: EventModel(category: CategoryModel.getCategories(context)[3], title: "Meeting for Updating The Development Method ", description: "Meeting for Updating The Development Method ", dateTime: DateTime.now(), timeOfDay: TimeOfDay.now()),),
              separatorBuilder: (context,index)=> SizedBox(height: 16,), itemCount: 20))
        ],
      ),
    );
  }
}
