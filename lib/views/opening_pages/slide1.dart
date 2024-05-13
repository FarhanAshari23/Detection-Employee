import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:lottie/lottie.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xff144272),
      child: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            SizedBox(
              width: mediaQueryWidth * 0.9,
              height: bodyHeight * 0.5,
              child: Lottie.asset(
                'assets/slide1.json',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Selamat datang di aplikasi sistem informasi SMA N 2 Metro',
                style: stylingbold24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
