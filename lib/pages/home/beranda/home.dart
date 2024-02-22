import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            padding: const EdgeInsets.all(18),
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
                              
                              Row(
                                children: [
                                  const LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.white,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.greenAccent,
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
                                ],
                              ),
                            ]),
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
                        Row(
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
                            const SizedBox(width: 70),
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
                          maxLines: 2,
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

                //container materi PuberRepro1
                Container(
                  height: 195,
                  width: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromARGB(255, 1, 106, 112),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20), // Warna bayangan
                        spreadRadius: 5, // Jarak penyebaran bayangan
                        blurRadius: 7, // Jarak kabut bayangan
                        offset: const Offset(
                            0, 3), // Perpindahan bayangan pada sumbu x dan y
                      ),
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
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
                                  backgroundColor: const Color.fromARGB(255, 38, 206, 215),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
