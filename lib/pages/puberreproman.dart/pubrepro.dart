import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:reproed/data/datacardpuberreproman/localdata_card_puberrepro.dart';
import 'package:reproed/pages/home/beranda/home.dart';

class PubreproMan extends StatefulWidget {
  const PubreproMan({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PubreproManState createState() => _PubreproManState();
}

class _PubreproManState extends State<PubreproMan> {
  bool isPubertasSelected = true;

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
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home()));
              },
              icon:const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 18, right: 18),
            child: Column(
              children: [
                //Button kategori materi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: !isPubertasSelected
                          ? null
                          : () {
                              setState(() {
                                isPubertasSelected = true;
                              });
                              //route
                            },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: isPubertasSelected ? 8 : 0,
                        shadowColor: Colors.white,
                        backgroundColor: isPubertasSelected
                            ? Colors.teal[500]
                            : Colors.teal[
                                400], // Ganti dengan warna yang lebih transparan
                        minimumSize: const Size(115, 25),
                      ),
                      child: Text(
                        'Pubertas',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: isPubertasSelected
                          ? null
                          : () {
                              setState(() {
                                isPubertasSelected = false;
                              });
                              //route
                            },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: !isPubertasSelected ? 8 : 0,
                        shadowColor: Colors.white,
                        backgroundColor: !isPubertasSelected
                            ? Colors.teal[400]
                            : Colors.teal[400]!.withOpacity(0.5),
                        minimumSize: const Size(115, 25),
                      ),
                      child: Text(
                        'Reproduksi',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.white60,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                Text(
                  "Materi Pembelajaran",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  "Ayu mulai membaca agar kamu semakin tau!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 25),
                
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
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
                                onPressed: () {
                                  
                                }, // Menggunakan onTap yang sudah ada
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
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: const Color.fromARGB(255, 154, 208, 194),
            color: Colors.deepPurple,
            animationDuration: const Duration(milliseconds: 300),
            onTap: (index) {
              // print(index);
            },
            items: const [
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.article_outlined,
                  color: Colors.white,
                ),
              ),
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.key_outlined,
                  color: Colors.white,
                ),
              ),
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
              ),
            ],
        ),
      ),
    );
  }
}
