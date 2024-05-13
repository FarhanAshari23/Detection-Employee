import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../widgets/font.dart';

class BulanJuni extends StatelessWidget {
  const BulanJuni({super.key});

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
                      DateTime(2023, 06, 1): 1,
                      DateTime(2023, 06, 2): 1,
                      DateTime(2023, 06, 3): 1,
                      DateTime(2023, 06, 4): 1,
                      DateTime(2023, 06, 5): 1,
                      DateTime(2023, 06, 23): 1,
                      DateTime(2023, 06, 24): 1,
                      DateTime(2023, 06, 25): 1,
                      DateTime(2023, 06, 26): 1,
                      DateTime(2023, 06, 27): 1,
                      DateTime(2023, 06, 28): 1,
                      DateTime(2023, 06, 29): 1,
                      DateTime(2023, 06, 30): 1,
                    },
                    startDate: DateTime(2023, 06, 01),
                    endDate: DateTime(2023, 06, 30),
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
                  Text('1: Libur Hari Lahir Pancasila', style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('1 - 5: Penilaian Akhir Semester Genap TP 2022/2023',
                      style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('23: Pembagian Raport Semester Genap',
                      style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('26 - 30: Libur Akhir Tahun 2022/2023',
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
