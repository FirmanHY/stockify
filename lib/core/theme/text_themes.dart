import 'package:flutter/material.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'colors.dart';

class AppTextTheme {
  static const TextTheme textTheme = TextTheme(
    // Headlines
    headlineLarge: TextStyle(
      fontSize: kFontSizeXL,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor,
    ),
    headlineMedium: TextStyle(
      fontSize: kFontSizeL,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor,
    ),
    headlineSmall: TextStyle(
      fontSize: kFontSizeML,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor,
    ),

    // Titles
    titleLarge: TextStyle(
      fontSize: kFontSizeM,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
    ),
    titleMedium: TextStyle(
      fontSize: kFontSizeS,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
    ),
    titleSmall: TextStyle(
      fontSize: kFontSizeXS,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: kFontSizeSM,
      fontWeight: FontWeight.w400,
      color: AppColors.bodyTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: kFontSizeXS,
      fontWeight: FontWeight.w400,
      color: AppColors.bodyTextColor,
    ),
    bodySmall: TextStyle(
      fontSize: kFontSizeXXS,
      fontWeight: FontWeight.w400,
      color: AppColors.bodyTextColor,
    ),

    // Buttons
    labelLarge: TextStyle(
      fontSize: kFontSizeSM,
      fontWeight: FontWeight.w600,
      color: AppColors.whiteColor,
    ),
    labelMedium: TextStyle(
      fontSize: kFontSizeXS,
      fontWeight: FontWeight.w600,
      color: AppColors.whiteColor,
    ),
    labelSmall: TextStyle(
      fontSize: kFontSizeXXS,
      fontWeight: FontWeight.w600,
      color: AppColors.whiteColor,
    ),
  );
}
