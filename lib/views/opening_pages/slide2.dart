import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:lottie/lottie.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            SizedBox(
              width: mediaQueryWidth * 0.8,
              height: bodyHeight * 0.5,
              child: Lottie.asset(
                'assets/slide2.json',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: Text(
                'Pada aplikasi ini memuat data peserta didik dan data guru serta informasi seputar SMA N 2 Metro',
                style: stylingbold20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
