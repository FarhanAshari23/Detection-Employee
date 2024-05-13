import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class NotedGuru extends StatelessWidget {
  final String title;
  final String value;
  const NotedGuru({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: mediaQueryWidth * 0.45,
              height: bodyHeight * 0.06,
              color: const Color(0xff4B56D2),
            ),
            Container(
              width: 161,
              height: 157,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff82AAE3),
              ),
              child: SizedBox(
                width: 10,
                height: 10,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      value,
                      style: stylingbold12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 35,
          left: 50,
          child: Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffEAFDFC),
            ),
            child: Center(
              child: Text(
                title,
                style: stylingbold10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
