import 'package:coffee_app/constants.dart';
import 'package:coffee_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.blue[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
