import 'package:e_commerce/util/route.dart';
import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),

      initialRoute: "/login",
      routes:{
          "/":(context)=>HomePage(),
          MyRoute.homeRoute:(context)=>HomePage(),
          MyRoute.loginRoute:(context)=>LoginPage(),

      } ,
    );
  }
}
