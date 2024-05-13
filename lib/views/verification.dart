import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            children: [
              Text('Silakan pilih identitas kamu', style: stylingbold24),
              SizedBox(height: bodyHeight * 0.075),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            width: mediaQueryWidth * 0.435,
                            height: bodyHeight * 0.215,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff82C3EC),
                            ),
                            child: Image.asset(
                              'assets/reading.png',
                              width: mediaQueryWidth * 0.405,
                              height: bodyHeight * 0.185,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Peserta\ndidik',
                          textAlign: TextAlign.center,
                          style: stylingbold24,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: mediaQueryWidth * 0.435,
                          height: bodyHeight * 0.215,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff82C3EC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 21, top: 16),
                            child: Image.asset(
                              'assets/male.png',
                              width: mediaQueryWidth * 0.405,
                              height: bodyHeight * 0.185,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Pengajar',
                          textAlign: TextAlign.center,
                          style: stylingbold24,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.2),
              Image.asset(
                'assets/SMAN 2 Metro.png',
                width: 75,
                height: 75,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
