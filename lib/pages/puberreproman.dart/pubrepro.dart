import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:reproed/data/datacardpuberreproman/localdata_card_puberrepro.dart';
import 'package:reproed/pages/home/beranda/home.dart';
import 'package:reproed/pages/puberreproman.dart/subtemaone/subtemaone.dart';
import 'package:reproed/pages/puberreproman.dart/subtematwo/subtematwo.dart';
import 'package:reproed/pages/widget/detailcard.dart';

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
                SizedBox(
                  height: 350,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: cardpuberepro.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DetailCard(
                        pubereproData: cardpuberepro[index],
                        onTap: () {
                          if (cardpuberepro[index].subTheme == 'Subtemaone') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Subtemaone()),
                            );
                          } else if (cardpuberepro[index].subTheme ==
                              'Subtematwo') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Subtematwo()),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
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
            ]),
      ),
    );
  }
}
