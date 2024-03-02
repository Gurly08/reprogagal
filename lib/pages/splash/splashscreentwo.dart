// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reproed/pages/splash/splashscreenfour.dart';
import 'package:reproed/pages/splash/splashscreenthree.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 155, 33, 255),
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
               //gambar sebagai gambar tampilan disetiap landing page(Sebagai BG)
              Image.asset(
                "assets/images/kuis.png",
                width: MediaQuery.of(context).size.width,
                height: 280,
              ),

              //pembuatan container untuk isi konten
              ListView(
                children: [
                  const SizedBox(
                    height: 325,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 110, 12, 190),
                          Color.fromARGB(255, 93, 34, 255),
                        ], // Gradient colors
                      ),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                  MaterialPageRoute(builder: (context) => const SplashScreenFour(),)
                              );
                            },
                            child: Text(
                              "skip",
                              textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Soal Latihan",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Soal kuis yang memberikan tantangan menarik dengan beragam pertanyaan yang relevan tentang kesehatan reproduksi, membantu siswa menguji dan meningkatkan pemahaman mereka secara interaktif.",
                            maxLines: 7,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const Alignment(0.85, 0.85),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                         MaterialPageRoute(builder: (context) => const SplashScreenThree(),)
                    );
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor:const Color.fromARGB(255, 239, 146, 255), 
                    foregroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}