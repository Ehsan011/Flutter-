import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(

    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,

    appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      elevation: 0.5,

      iconTheme: IconThemeData(
        color: Colors.black,
      ),

      titleTextStyle: TextStyle(
        color: Colors.black,
      )
    )
  );

  static ThemeData darkTheme(BuildContext context)=> ThemeData(
    brightness: Brightness.dark,
  );

  static Color creamColor = Color(0xfff5f5f5);
  static Color deepBlush = Color(0xff403b58);

}