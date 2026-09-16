import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Me', 
          style: TextStyle(
          color: Colors.teal, 
          fontSize: 24.0, 
          fontWeight: FontWeight.bold, 
          fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        backgroundColor: Colors.amber,
        leading: Icon(Icons.person),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
    );
  }
}