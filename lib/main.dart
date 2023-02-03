import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: GoogleFonts.lato().fontFamily,),
      darkTheme: ThemeData(
          // brightness: Brightness.dark -->Overrides swatch colors
          primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home", // This is the initial route that will open in app open
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
