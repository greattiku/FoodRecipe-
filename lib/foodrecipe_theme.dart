import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FoodRecipeTheme {
// 1
static TextTheme lightTextTheme = TextTheme(
 bodyLarge: GoogleFonts.openSans(//bodytext1
 fontSize: 14.0,
 fontWeight: FontWeight.w700,
 color: Colors.black),
 headlineLarge: GoogleFonts.openSans(//headline1
 fontSize: 32.0,
 fontWeight: FontWeight.bold,
 color: Colors.black),
 headlineMedium: GoogleFonts.openSans(//headline2
 fontSize: 21.0,
 fontWeight: FontWeight.w700,
 color: Colors.black),
 headlineSmall: GoogleFonts.openSans(//headline3
 fontSize: 16.0,
 fontWeight: FontWeight.w600,
 color: Colors.black),
 titleLarge: GoogleFonts.openSans(//headline6
 fontSize: 20.0,
 fontWeight: FontWeight.w600,
 color: Colors.black),
 );
// 2
static TextTheme darkTextTheme = TextTheme(
 bodyLarge: GoogleFonts.openSans(//bodytext1
 fontSize: 14.0,
 fontWeight: FontWeight.w600,
 color: Colors.white),
 headlineLarge: GoogleFonts.openSans(//headline1
 fontSize: 32.0,
 fontWeight: FontWeight.bold,
 color: Colors.white),
 headlineMedium: GoogleFonts.openSans(//headline2
 fontSize: 21.0,
 fontWeight: FontWeight.w700,
 color: Colors.white),
 headlineSmall: GoogleFonts.openSans(//headline3
 fontSize: 16.0,
 fontWeight: FontWeight.w600,
 color: Colors.white),
 titleLarge: GoogleFonts.openSans(//headline6
 fontSize: 20.0,
 fontWeight: FontWeight.w600,
 color: Colors.white),
 );
// 3
static ThemeData light() {
return ThemeData(
 brightness: Brightness.light,
 primaryColor: Colors.white,
 //colorScheme: ColorScheme.fromSwatch(accentColor: Colors.black).brightness,
 textSelectionTheme:
const TextSelectionThemeData(selectionColor: 
Colors.green),
 textTheme: lightTextTheme,
 );
 }
// 4
static ThemeData dark() {
return ThemeData(
 brightness: Brightness.dark,
 primaryColor: Colors.grey[900],
//colorScheme: ColorScheme.fromSwatch(accentColor: Colors.green[600]!.copyWith(primaryColor: Colors.grey)),
 textTheme: darkTextTheme,

 );
 }
}