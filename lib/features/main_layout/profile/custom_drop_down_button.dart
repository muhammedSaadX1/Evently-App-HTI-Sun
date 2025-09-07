import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/colors_manager.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({super.key, required this.label, required this.selectedItem, required this.menuItems});
 final  String label;
 final String selectedItem;
 final List<String> menuItems;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.labelMedium,)
          ,SizedBox(height: 12.h,),
          Container(

            padding: REdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: ColorsManager.blue, width: 2)
            ),
            child: Row(
              children: [
                Text(selectedItem, style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue),),

                Spacer(),
                DropdownButton<String>(

                  underline: Container(),
                  items: menuItems.map((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (selectedItem) {
                    print(selectedItem);
                  },
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
