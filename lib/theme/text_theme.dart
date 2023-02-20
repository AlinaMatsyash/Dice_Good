import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_theme.dart';

final box = GetStorage();

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode =
      box.read('darkmode') == true ? ThemeMode.dark : ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    box.write('darkmode', isOn);
    notifyListeners();
  }
}

class ProjectTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 34,
      height: 1.17,
      letterSpacing: 0.25,
      color: ColorPalette.black,
    ),
    titleMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      letterSpacing: 0.15,
      height: 1.5,
      color: ColorPalette.black,
    ),
    titleSmall: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      letterSpacing: 0.1,
      height: 1.4,
      color: ColorPalette.black,
    ),
    displayLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.3,
      color: ColorPalette.white,
    ),
    displayMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.5,
      color: ColorPalette.black,
    ),
    displaySmall: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 13,
      height: 1.5,
      letterSpacing: 0.5,
      color: ColorPalette.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 34,
      height: 1.17,
      letterSpacing: 0.25,
      color: ColorPalette.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1.4,
      letterSpacing: 0.15,
      color: ColorPalette.white,
    ),
    titleMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      letterSpacing: 0.15,
      height: 1.5,
      color: ColorPalette.white,
    ),
    titleSmall: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      letterSpacing: 0.1,
      height: 1.4,
      color: ColorPalette.white,
    ),
    displayLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.3,
      color: ColorPalette.white,
    ),
    displayMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.5,
      color: ColorPalette.white,
    ),
    displaySmall: GoogleFonts.openSans(
      fontWeight: FontWeight.normal,
      fontSize: 13,
      height: 1.5,
      letterSpacing: 0.5,
      color: ColorPalette.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      appBarTheme: AppBarTheme(color: ColorPalette.white50),
      scaffoldBackgroundColor: ColorPalette.white50,
      shadowColor: ColorPalette.black,
      primaryColor: ColorPalette.white50,
      textTheme: lightTextTheme,
      bottomAppBarTheme: BottomAppBarTheme(color: ColorPalette.white50),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      appBarTheme: AppBarTheme(color: ColorPalette.black_800),
      shadowColor: ColorPalette.white,
      scaffoldBackgroundColor: ColorPalette.black_800,
      primaryColor: ColorPalette.black_800,
      textTheme: darkTextTheme,
    );
  }
}
