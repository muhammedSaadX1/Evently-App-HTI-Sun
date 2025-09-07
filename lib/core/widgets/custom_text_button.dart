import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onTap, this.textAlign = TextAlign.center});

  final String text;
  final VoidCallback onTap;
  final TextAlign textAlign ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.inter(
          fontStyle: FontStyle.italic,
          fontSize: 16.sp,
          color: ColorsManager.blue,
          fontWeight: FontWeight.bold,
          decorationColor: ColorsManager.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
