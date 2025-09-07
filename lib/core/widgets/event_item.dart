import 'package:evently_hti_sun/core/resources/assets_manager.dart';
import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:evently_hti_sun/models/event_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.event});
final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal:16),
      width: double.infinity,
      height: 204.h,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.blue, width: 1),
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(ImageAssets.meeting),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "21",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 20)
                  ),
                  Text(
                    "Nov",
                    style: Theme.of(context).textTheme.labelSmall
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                    event.title,
                      style: Theme.of(context).textTheme.titleSmall
                    ),
                  ),
                  IconButton(onPressed: (){}, icon:                   Icon(Icons.favorite_border, color: ColorsManager.blue,)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
