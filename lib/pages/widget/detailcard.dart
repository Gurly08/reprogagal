import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reproed/models/modelpubereproman/model_cardpuberepro.dart';
import 'package:reproed/pages/puberreproman.dart/subtemaone/subtemaone.dart';
import 'package:reproed/pages/puberreproman.dart/subtematwo/subtematwo.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({required this.pubereproData, super.key});
  final ModelPuberepro pubereproData;

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.teal[600],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                widget.pubereproData.imagePath,
                height: 180,
              ),
            ),
            const SizedBox(height: 18),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Row(
                children: [
                  Text(
                    widget.pubereproData.subTheme,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Text(
                  //   '0',
                  //   style: GoogleFonts.poppins(
                  //     textStyle: const TextStyle(
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.normal,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.pubereproData.materials,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman PubertasPage jika 'Pubertas' dipilih
                  if (widget.pubereproData.subTheme == 'Subtemaone') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Subtemaone()),
                    );
                  }
                  // Navigasi ke halaman ReproduksiPage jika 'Reproduksi' dipilih
                  else if (widget.pubereproData.subTheme == 'Subtematwo') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Subtematwo()),
                    );
                  }
                },
                child: Text('Lihat',
                    style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Widget lainnya ...
              ),
            ),
          ],
        ),
      ),
    );
  }
}
