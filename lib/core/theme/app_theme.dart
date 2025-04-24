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
    inputDecorationTheme: _inputDecorationTheme,
    textSelectionTheme: _textSelectionTheme,
    filledButtonTheme: _filledButtonTheme,
    popupMenuTheme: _popupMenuTheme,
    dividerTheme: _dividerTheme,
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
    foregroundColor: AppColors.primaryColor,
    titleTextStyle: TextStyle(
      fontSize: kFontSizeMS,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor,
    ),
  );

  static const BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.bodyTextColor,
        selectedLabelStyle: TextStyle(
          fontSize: kFontSizeXS,
          fontWeight: FontWeight.w600,
          height: 1.2,
          letterSpacing: 0.2,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: kFontSizeXXS,
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSmall),
          ),
        ),
      );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kSmall),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kSmall),
          borderSide: BorderSide(color: AppColors.borderColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kSmall),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kSmall),
          borderSide: BorderSide(color: AppColors.dangerColor, width: 2.0),
        ),
        hintStyle: AppTextTheme.textTheme.bodySmall,
        labelStyle: AppTextTheme.textTheme.bodySmall,
        contentPadding: EdgeInsets.symmetric(
          vertical: kSmall,
          horizontal: kMedium,
        ),
      );

  static const TextSelectionThemeData _textSelectionTheme =
      TextSelectionThemeData(
        cursorColor: AppColors.primaryColor,
        selectionColor: AppColors.primaryColor30,
        selectionHandleColor: AppColors.primaryColor,
      );

  static final FilledButtonThemeData _filledButtonTheme = FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
      foregroundColor: WidgetStateProperty.all(AppColors.whiteColor),
      textStyle: WidgetStateProperty.all(AppTextTheme.textTheme.labelLarge),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: kMediumSmall, horizontal: kLarge),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(kSmall)),
      ),
    ),
  );

  static final PopupMenuThemeData _popupMenuTheme = PopupMenuThemeData(
    color: AppColors.whiteColor,
    textStyle: AppTextTheme.textTheme.bodyMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    elevation: 8.0,
  );

  static const DividerThemeData _dividerTheme = DividerThemeData(
    color: AppColors.borderColor,
    thickness: 1,
    space: kExtraLarge,
    indent: 0,
    endIndent: 0,
  );
}
