import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
      this.labelText,
      this.hintText,
    required this.validator,
    required this.controller,
     this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.isSecure = false,
    this.maxLines = 1
  });

  final String? labelText;
  final String? hintText;
  final IconData?prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool isSecure;
  final String? Function(String?) validator;
  final TextEditingController controller;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      obscureText: isSecure,
      keyboardType: keyboardType,
      style: GoogleFonts.inter(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon
      ),
    );
  }
}
