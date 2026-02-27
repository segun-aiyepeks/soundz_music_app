import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soundz_music_app/core/configs/themes/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 20.r
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30)
        )
      )
    )
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 20.r,
          color: Colors.white
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30.r)
        )
      )
    )
  );
  static final largeTitleText = GoogleFonts.montserrat(
    fontSize: 32.r,
    fontWeight: FontWeight.bold,
    letterSpacing: 3.2.r,
    color: Colors.white

  );
  static final mediumTitleText = GoogleFonts.montserrat(
    fontSize: 24.r,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.6.r,
    color: Colors.white
  );
  static final smallTitleText = GoogleFonts.montserrat(
    fontSize: 20.r,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );
  static final bodyTextlight = GoogleFonts.poppins(
    fontSize: 14.r,
    fontWeight: FontWeight.w300,
    color: Colors.white70
  );
  static final bodyTextdark = GoogleFonts.poppins(
    fontSize: 14.r,
  );
  static final captionLight = GoogleFonts.poppins(
    fontSize: 12.r,
    fontWeight: FontWeight.w300,
    color: Colors.white70
  );
  static final captionDark = GoogleFonts.poppins(
    fontSize: 12.r,
    fontWeight: FontWeight.w200,
  );
  static const kPadding = EdgeInsets.symmetric(horizontal: 24, vertical: 8);
  static const double SpaceHeightSmall = 8.0;
  static const double SpaceHeightMedium = 16.0;
  static const double SpaceHeightLarge = 32.0;
}