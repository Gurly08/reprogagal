import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:reproed/pages/puberreproman.dart/pubrepro.dart';
// import 'package:reproed/pages/widget/detailcard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 234, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 252, 252, 252),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                foregroundImage: AssetImage("assets/images/ppaku.jpg"),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bagas Djunaedi",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple[900],
                      ),
                    ),
                  ),
                  Text(
                    "Selaamat Siang -__-",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, size: 25),
              color: Colors.blue[900],
              onPressed: () {
                // Tambahkan fungsi yang akan dipanggil saat ikon notifikasi diklik
                // Misalnya, tampilkan pesan notifikasi
                //
              },
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 18, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                //tempat container poin ku dan progres belajar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //container koinku
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/coin.png'),
                            Text(
                              'Total Poin Kamu',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 14.5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              '250',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.yellow[500],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //container progres belajar
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 104, 110, 225),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/boys.png'),
                              Text(
                                'Progres Belajar',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 14.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                '50%',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 8.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const LinearProgressIndicator(
                                value: 0.5,
                                backgroundColor: Colors.white,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.greenAccent,
                                ),
                              ),
                            ]
                          ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //Daily Container
                Container(
                  height: 155,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20), // Warna bayangan
                        spreadRadius: 5, // Jarak penyebaran bayangan
                        blurRadius: 7, // Jarak kabut bayangan
                        offset: const Offset(
                            0, 3), // Perpindahan bayangan pada sumbu x dan y
                      ),
                    ],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset('assets/images/daily.png'),
                              const SizedBox(width: 5),
                              Text(
                                'Jadwal Hari Ini',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue[900],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 60),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Lihat Detail',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Judul Jadwal
                        Text(
                          'Ipa, Agama, Bahasa Indonesia',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.purple[600],
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        //Deskripsi kegiatan
                        Text(
                          'Ada ulangan harian agama hari ini, wajib belajar dulu sebelum besoknya udah ulang rawr >.',
                          maxLines: 3,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Fitur Materi PuberRepro1 laki - laki
                    Container(
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
                                Navigator.push(
                                  context,
                                    MaterialPageRoute(builder: (context) => const PubreproMan())
                                );
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
                    ),

                    //Fitur Materi Puberrepro2 perempuan
                     Container(
                      height: 195,
                      width: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.pink[300],
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
                            Image.asset('assets/images/girl.png'),
                            const SizedBox(height: 12),
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
                                      Colors.pink[400],
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
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Fitur Kuis
                    Container(
                      height: 205,
                      width: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.teal[400],
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
                            Image.asset('assets/images/wpkuis.png',height: 78,),
                            Text(
                              'Tugas',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Latihan Soal',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              '50%',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 6,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const LinearProgressIndicator(
                                value: 0.5,
                                backgroundColor: Colors.white,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.yellow,
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
                                      Colors.green[400],
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
                    ),

                    //Fitur Karaktaku
                     Container(
                      height: 205,
                      width: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.yellow[600],
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
                            Image.asset('assets/images/rbkaraktaku.png'),
                            Text(
                              'Karaktaku',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple[400],
                                ),
                              ),
                            ),
                            Text(
                              'Aku Karaktaku, mari bersama - sama menjelajahi dan mencari solusi untuk lebih mengenal diri kita sendiri',
                              maxLines: 4,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 6.5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.indigo,
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
                                      Colors.yellow[700],
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(255, 241, 234, 255),
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
          ]
        ),
      ),
    );
  }
}
