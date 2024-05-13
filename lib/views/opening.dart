import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/views/opening_pages/slide1.dart';
import 'package:sistem_informasi_smanda/views/opening_pages/slide2.dart';
import 'package:sistem_informasi_smanda/views/opening_pages/slide3.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  bool onFirstPage = false;
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
            children: const [
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Container(
                    width: mediaQueryWidth * 0.2,
                    height: bodyHeight * 0.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Text('Lewati', style: stylingbold12),
                    ),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/verifikasi');
                        },
                        child: Container(
                          width: mediaQueryWidth * 0.2,
                          height: bodyHeight * 0.065,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade300,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 18),
                            child: Text('Selesai', style: stylingbold12),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Container(
                          width: mediaQueryWidth * 0.2,
                          height: bodyHeight * 0.065,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade300,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Text('Lanjut', style: stylingbold12),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
