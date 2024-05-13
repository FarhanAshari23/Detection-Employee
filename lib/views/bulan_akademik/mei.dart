import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../widgets/font.dart';

class BulanMei extends StatelessWidget {
  const BulanMei({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: mediaQueryWidth * 0.8,
              height: bodyHeight * 0.7,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  HeatMap(
                    datasets: {
                      DateTime(2023, 05, 29): 1,
                      DateTime(2023, 05, 30): 1,
                      DateTime(2023, 05, 31): 1,
                    },
                    startDate: DateTime(2023, 05, 01),
                    endDate: DateTime(2023, 05, 31),
                    size: 45,
                    textColor: Colors.white,
                    showText: true,
                    showColorTip: false,
                    colorsets: const {
                      1: Color(0xff13005A),
                    },
                  ),
                  const SizedBox(height: 10),
                  Text('Keterangan', style: stylingbold12),
                  const SizedBox(height: 10),
                  Text('29 - 31: Penilaian Akhir Semester Genap TP 2022/2023',
                      style: stylingbold14),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
