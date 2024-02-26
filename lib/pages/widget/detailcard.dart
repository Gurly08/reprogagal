import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 195,
                  width: 135,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 1, 106, 112),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.black.withOpacity(0.20), // Warna bayangan
                          spreadRadius: 5, // Jarak penyebaran bayangan
                          blurRadius: 7, // Jarak kabut bayangan
                          offset: const Offset(
                              0, 3), // Perpindahan bayangan pada sumbu x dan y
                        ),
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/boy.png'),
                        Text(
                          'Materi',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'PuberRepro',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //     MaterialPageRoute(builder: (context) => const Login())
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              elevation: 8,
                              shadowColor: Colors.black,
                              backgroundColor:
                                  const Color.fromARGB(255, 38, 206, 215),
                              minimumSize: const Size(45, 15)),
                          child: Text(
                            "Lihat",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}