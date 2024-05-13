import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:lottie/lottie.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xff144272),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              width: mediaQueryWidth * 0.8,
              height: bodyHeight * 0.5,
              child: Lottie.asset(
                'assets/slide3.json',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: Text(
              'Jadi tunggu apalagi, tekan tombol lanjut dan pilih peran kamu di halaman selanjutnya',
              style: stylingbold20,
            ),
          ),
        ],
      ),
    );
  }
}
