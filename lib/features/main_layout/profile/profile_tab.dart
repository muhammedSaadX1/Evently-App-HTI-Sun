import 'package:evently_hti_sun/core/resources/assets_manager.dart';
import 'package:evently_hti_sun/core/resources/colors_manager.dart';
import 'package:evently_hti_sun/features/main_layout/profile/custom_drop_down_button.dart';
import 'package:evently_hti_sun/l10n/app_localizations.dart';
import 'package:evently_hti_sun/providers/language_provider.dart';
import 'package:evently_hti_sun/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations? appLocalizations = AppLocalizations.of(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          padding: REdgeInsets.symmetric(vertical: 46),
          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(ImageAssets.profileImage),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Muhammed Saad",
                    style: GoogleFonts.inter(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.white,
                    ),
                  ),
                  Text(
                    "moosaad@gmail.com",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorsManager.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        CustomDropDownButton(
          label: appLocalizations!.theme,
          selectedItem:
          themeProvider.isDarkEnabled
              ? appLocalizations.dark
              : appLocalizations.light,
          menuItems: [appLocalizations.light, appLocalizations.dark],
          onChange: (newTheme) {
            print(newTheme);
            themeProvider.changeAppTheme(
              newTheme == appLocalizations.light? ThemeMode.light : ThemeMode.dark,
            );
          },
        ),
        SizedBox(height: 16.h),

        CustomDropDownButton(label: appLocalizations.language,
          selectedItem: languageProvider.isEnglishEnabled ?"English" :"Arabic",
          menuItems: ["English", "Arabic"],

        onChange: (newLang){
          print(newLang);
          languageProvider.changeAppLang(newLang == "English"? "en" : "ar");
        },
        ),
        Spacer(flex: 7),
        Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.red,
              foregroundColor: ColorsManager.white,
              padding: REdgeInsets.all(16),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.logout, color: ColorsManager.white),
                SizedBox(width: 8),
                Text(appLocalizations.logout),
              ],
            ),
          ),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
