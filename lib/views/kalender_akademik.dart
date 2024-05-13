import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/agustus.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/april.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/desember.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/februari.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/januari.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/juli.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/juni.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/maret.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/mei.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/november.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/oktober.dart';
import 'package:sistem_informasi_smanda/views/bulan_akademik/september.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/font.dart';

class KalenderAkademik extends StatefulWidget {
  const KalenderAkademik({super.key});

  @override
  State<KalenderAkademik> createState() => _KalenderAkademikState();
}

class _KalenderAkademikState extends State<KalenderAkademik> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      appBar: AppBar(
        backgroundColor: const Color(0xffC0DEFF),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('SISTEM INFORMASI SMA N 2 METRO', style: stylingbold16purple),
            Image.asset('assets/SMAN 2 Metro.png', width: 40, height: 40),
          ],
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              BulanJanuari(),
              BulanFebruari(),
              BulanMaret(),
              BulanApril(),
              BulanMei(),
              BulanJuni(),
              BulanJuli(),
              BulanAgustus(),
              BulanSeptember(),
              BulanOktober(),
              BulanNovember(),
              BulanDesember(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.85),
            child: SmoothPageIndicator(controller: _controller, count: 12),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/arrow back.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
