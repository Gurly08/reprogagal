// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              //gambar sebagai gambar tampilan disetiap landing page(Sebagai BG)
              Image.asset(
                "assets/images/materi.png",
                width: MediaQuery.of(context).size.width,
                height: 250,
              ),

              //pembuatan container untuk isi konten
              ListView(
                children: [
                  const SizedBox(
                    height: 325,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          20,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "PuberRepro",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Materi yang diberikan sesuai dengan Kurikulum Merdeka yang sedang di terapkan di beberapa sekolah, seperti di SPMN 187 Jakarta.",
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Action when button is pressed
                  },
                  child:  const Icon(Icons.keyboard_arrow_right_outlined,),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
