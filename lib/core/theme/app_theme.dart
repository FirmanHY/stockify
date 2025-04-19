import 'package:flutter/material.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'colors.dart';
import 'text_themes.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: AppColors.whiteColor,
    textTheme: AppTextTheme.textTheme,
    colorScheme: _colorScheme,
    appBarTheme: _appBarTheme,
    bottomNavigationBarTheme: _bottomNavigationBarTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
  );

  static const ColorScheme _colorScheme = ColorScheme(
    primary: AppColors.primaryColor,
    onPrimary: AppColors.whiteColor,
    secondary: AppColors.secondaryColor,
    onSecondary: AppColors.whiteColor,
    error: AppColors.dangerColor,
    onError: AppColors.whiteColor,
    surface: AppColors.whiteColor,
    onSurface: AppColors.bodyTextColor,
    brightness: Brightness.light,
  );

  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.whiteColor,
    foregroundColor: AppColors.blackColor,
    titleTextStyle: TextStyle(
      fontSize: kFontSizeMS,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
    ),
  );

  static const BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.bodyTextColor,
        selectedLabelStyle: TextStyle(
          fontSize: kFontSizeXS, // 14.0
          fontWeight: FontWeight.w600,
          height: 1.2,
          letterSpacing: 0.2,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: kFontSizeXXS, // 12.0
          fontWeight: FontWeight.w500,
          height: 1.2,
          letterSpacing: 0.2,
        ),
        showUnselectedLabels: true,
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(size: 24),
        unselectedIconTheme: IconThemeData(size: 22),
      );

  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          textStyle: AppTextTheme.textTheme.labelLarge,
          padding: const EdgeInsets.symmetric(
            vertical: kMediumSmall,
            horizontal: kLarge,
          ),
        ),
      );
}
