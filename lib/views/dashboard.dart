import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text('SELAMAT DATANG DI APLIKASI', style: stylingbold18),
          const SizedBox(height: 5),
          Text('SISTEM INFORMASI SMA N 2 METRO', style: stylingbold18),
          SizedBox(height: bodyHeight * 0.05),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/kalender');
            },
            child: Image.asset(
              'assets/kalender.png',
              width: mediaQueryWidth * 0.85,
              height: bodyHeight * 0.2,
            ),
          ),
          SizedBox(height: bodyHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/struktural');
                },
                child: Image.asset(
                  'assets/Struktural.png',
                  width: mediaQueryWidth * 0.45,
                  height: bodyHeight * 0.25,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/eskul');
                },
                child: Image.asset(
                  'assets/Eskul.png',
                  width: mediaQueryWidth * 0.45,
                  height: bodyHeight * 0.25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
