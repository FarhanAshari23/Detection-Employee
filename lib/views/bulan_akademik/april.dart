import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../widgets/font.dart';

class BulanApril extends StatelessWidget {
  const BulanApril({super.key});

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
              width: mediaQueryWidth * 0.82,
              height: bodyHeight * 0.7,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  HeatMap(
                    datasets: {
                      DateTime(2023, 04, 07): 1,
                      DateTime(2023, 04, 21): 1,
                      DateTime(2023, 04, 22): 1,
                      DateTime(2023, 04, 23): 1,
                    },
                    startDate: DateTime(2023, 04, 01),
                    endDate: DateTime(2023, 04, 30),
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
                  Text('7: Libur Wafat Isa al Masih', style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('21 - 23: Libur Hari Raya Idul Fitri',
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
