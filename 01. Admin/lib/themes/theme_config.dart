import 'package:gg_admin/constants.dart';
import 'package:gg_admin/models/theme_model.dart';
import 'package:gg_admin/themes/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_twotone.dart';

enum ThemeName {
  forestCanopy,
  oceanDepths,
  royalVelvet,
}

Map<ThemeName, AppThemeItem> appThemes = {
  ThemeName.forestCanopy: AppThemeItem(
    identifier: 'Forest Canopy',
    colorScheme: AppColorScheme.forestCanopy,
    themeIcon: Ic.twotone_forest,
  ),
  ThemeName.oceanDepths: AppThemeItem(
    identifier: 'Ocean Depths',
    colorScheme: AppColorScheme.oceanDepths,
    themeIcon: Ic.twotone_water_drop,
  ),
  ThemeName.royalVelvet: AppThemeItem(
    identifier: 'Royal Velvet',
    colorScheme: AppColorScheme.royalVelvet,
    themeIcon: IconParkTwotone.crown_three,
  ),
};

abstract class AppTheme {
  static lightTheme(ColorScheme colorScheme) {
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        titleTextStyle: GoogleFonts.josefinSans(
          color: colorScheme.onPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.onPrimary,
        ),
        actionsIconTheme: IconThemeData(
          color: colorScheme.surface,
        ),
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      iconTheme: IconThemeData(
        color: colorScheme.onPrimary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: colorScheme.primaryContainer,
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: kBorderThickness,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: kBorderThickness,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: kBorderThickness,
          ),
        ),
        prefixIconColor: colorScheme.primary,
        filled: true,
        fillColor: colorScheme.surfaceDim,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          foregroundColor: colorScheme.onPrimary,
          backgroundColor: colorScheme.primary,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: colorScheme.primary,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        subtitleTextStyle: GoogleFonts.josefinSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colorScheme.onPrimary,
        ),
        dense: true,
      ),
      dialogTheme: DialogTheme(
        titleTextStyle: GoogleFonts.josefinSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary,
        ),
        contentTextStyle: GoogleFonts.josefinSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.primary,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: GoogleFonts.josefinSans(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: colorScheme.onPrimary,
        ),
        backgroundColor: colorScheme.primary,
      ),
      textTheme: textTheme(
        colorScheme.onPrimary,
      ),
    );
  }

  static darkTheme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        titleTextStyle: GoogleFonts.josefinSans(
          color: colorScheme.onPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.onPrimary,
        ),
        actionsIconTheme: IconThemeData(
          color: colorScheme.onPrimary,
        ),
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      iconTheme: IconThemeData(
        color: colorScheme.onPrimary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: colorScheme.secondaryContainer,
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: kBorderThickness,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: kBorderThickness,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: kBorderThickness,
          ),
        ),
        prefixIconColor: colorScheme.primary,
        filled: true,
        fillColor: colorScheme.surfaceDim,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          foregroundColor: colorScheme.onPrimary,
          backgroundColor: Colors.transparent,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          foregroundColor: colorScheme.onPrimary,
          backgroundColor: colorScheme.primary,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: colorScheme.primary,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        subtitleTextStyle: GoogleFonts.josefinSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colorScheme.onPrimary,
        ),
        dense: true,
      ),
      dialogTheme: DialogTheme(
        titleTextStyle: GoogleFonts.josefinSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colorScheme.onPrimary,
        ),
        contentTextStyle: GoogleFonts.josefinSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onPrimary,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: GoogleFonts.josefinSans(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: colorScheme.onPrimary,
        ),
        backgroundColor: colorScheme.primary,
      ),
      textTheme: textTheme(
        colorScheme.onPrimary,
      ),
    );
  }

  static textTheme(Color fontColor) {
    return TextTheme(
      //Display styles
      displayLarge: GoogleFonts.josefinSans(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),
      displayMedium: GoogleFonts.josefinSans(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),
      displaySmall: GoogleFonts.josefinSans(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),

      //Headline styles
      headlineLarge: GoogleFonts.josefinSans(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: fontColor,
      ),
      headlineMedium: GoogleFonts.josefinSans(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
      headlineSmall: GoogleFonts.josefinSans(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),

      //Title styles
      titleLarge: GoogleFonts.josefinSans(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: fontColor,
      ),
      titleMedium: GoogleFonts.josefinSans(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
      titleSmall: GoogleFonts.josefinSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),

      //Body text styles
      bodyLarge: GoogleFonts.josefinSans(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),
      bodyMedium: GoogleFonts.josefinSans(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),
      bodySmall: GoogleFonts.josefinSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),

      //Label styles
      labelLarge: GoogleFonts.josefinSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
      labelMedium: GoogleFonts.josefinSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
      labelSmall: GoogleFonts.josefinSans(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
    );
  }
}
