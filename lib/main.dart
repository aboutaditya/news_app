import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/body/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'HEADLINES',
            style: GoogleFonts.robotoSlab(
                fontWeight: FontWeight.bold,
                fontSize: 29,
                color: Colors.white,
                letterSpacing: 5),
          ),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}
