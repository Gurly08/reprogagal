import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PubreproMan extends StatelessWidget {
  const PubreproMan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 154, 208, 194),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'PuberRepro Man',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
        body: Column(
          children: [
              Text(
              'ini materi',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
