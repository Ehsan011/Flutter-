import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class Mytheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(

    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: creamColor,
    canvasColor: Colors.blueGrey,
    accentColor: deepbluish,
    buttonColor: deepbluish,

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
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.black,
      canvasColor: Colors.black54,
      buttonColor: Colors.lightGreenAccent,
      accentColor: Colors.white,

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

  static Color creamColor = Color(0xfff5f5f5);
  static Color deepbluish = Color(0xff403b58);

  static Color darkCreamColor = Vx.gray800;
  static Color lightbluish = Vx.indigo500;



}