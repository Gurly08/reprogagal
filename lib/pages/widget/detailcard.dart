import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reproed/models/modelpubereproman/model_cardpuberepro.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({
    required this.pubereproData, 
    required this.onTap, 
  Key? key}) : super(key: key);
  
  final ModelPuberepro pubereproData;
  final VoidCallback onTap;

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 350,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.teal[600],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
            ),
          ],
        ),
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
                  onPressed: widget.onTap,
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 8,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.teal[200],
                    minimumSize: const Size(65, 25),
                  ),
                  child: Text(
                    'Lihat',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
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
