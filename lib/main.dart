import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/views/detail_guru.dart';
import 'package:sistem_informasi_smanda/views/detail_murid.dart';
import 'package:sistem_informasi_smanda/views/ekstrakulikuler.dart';
import 'package:sistem_informasi_smanda/views/home.dart';
import 'package:sistem_informasi_smanda/views/kalender_akademik.dart';
import 'package:sistem_informasi_smanda/views/list_murid/kelas_10.dart';
import 'package:sistem_informasi_smanda/views/list_murid/kelas_11.dart';
import 'package:sistem_informasi_smanda/views/list_murid/kelas_12.dart';
import 'package:sistem_informasi_smanda/views/splash.dart';
import 'package:sistem_informasi_smanda/views/opening.dart';
import 'package:sistem_informasi_smanda/views/struktur.dart';
import 'package:sistem_informasi_smanda/views/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/pengenalan': (context) => const OpeningScreen(),
        '/verifikasi': (context) => const VerificationScreen(),
        '/home': (context) => const HomePage(),
        '/detailGuru': (context) => const DetailGuru(
              foto: '',
              jabatanTambahan: '',
              mengajar: '',
              nama: '',
              nip: '',
              wali: '',
            ),
        '/detailMurid': (context) => const DetailMurid(
              foto: '',
              alamat: '',
              kelas: '',
              nama: '',
              nisn: '',
              tanggalLahir: '',
              telp: '',
            ),
        '/kelas_sepuluh': (context) => const ListSepuluh(),
        '/kelas_sebelas': (context) => const ListSebelas(),
        '/kelas_duabelas': (context) => ListDuaBelas(),
        '/eskul': (context) => EkstrakulikulerPage(),
        '/kalender': (context) => const KalenderAkademik(),
        '/struktural': (context) => const StrukturPage(),
      },
    );
  }
}
