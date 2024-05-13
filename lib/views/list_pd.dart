import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class PesertaDidikPage extends StatelessWidget {
  const PesertaDidikPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    Widget kotak(String kelas) {
      return Container(
        width: 333,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff205295),
        ),
        child: Column(
          children: [
            SizedBox(height: bodyHeight * 0.025),
            Text(
              kelas,
              style: stylingbold20,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(top: bodyHeight * 0.1, left: 50, right: 50),
      child: Column(
        children: [
          Text('Silakan pilih kelas terlebih dahulu', style: stylingbold16),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/kelas_duabelas');
            },
            child: kotak('Kelas 12'),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/kelas_sebelas');
            },
            child: kotak('Kelas 11'),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/kelas_sepuluh');
            },
            child: kotak('Kelas 10'),
          ),
        ],
      ),
    );
  }
}
