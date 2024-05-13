import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../widgets/font.dart';

class BulanMaret extends StatelessWidget {
  const BulanMaret({super.key});

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
                      DateTime(2023, 03, 13): 1,
                      DateTime(2023, 03, 14): 1,
                      DateTime(2023, 03, 15): 1,
                      DateTime(2023, 03, 16): 1,
                      DateTime(2023, 03, 17): 1,
                      DateTime(2023, 03, 18): 1,
                      DateTime(2023, 03, 22): 1,
                      DateTime(2023, 03, 23): 1,
                    },
                    startDate: DateTime(2023, 03, 01),
                    endDate: DateTime(2023, 03, 31),
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
                  Text('13 - 18: Ujian Sekolah Kelas 12', style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('22: Libur Nyepi', style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('23: Libur Awal Puasa', style: stylingbold14),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
