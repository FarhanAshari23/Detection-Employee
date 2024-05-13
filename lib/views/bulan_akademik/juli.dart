import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../widgets/font.dart';

class BulanJuli extends StatelessWidget {
  const BulanJuli({super.key});

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
                      DateTime(2023, 07, 01): 1,
                      DateTime(2023, 07, 2): 1,
                      DateTime(2023, 07, 3): 1,
                      DateTime(2023, 07, 4): 1,
                      DateTime(2023, 07, 5): 1,
                      DateTime(2023, 07, 6): 1,
                      DateTime(2023, 07, 7): 1,
                      DateTime(2023, 07, 8): 1,
                      DateTime(2023, 07, 9): 1,
                      DateTime(2023, 07, 10): 1,
                      DateTime(2023, 07, 11): 1,
                      DateTime(2023, 07, 12): 1,
                      DateTime(2023, 07, 13): 1,
                      DateTime(2023, 07, 14): 1,
                      DateTime(2023, 07, 15): 1,
                      DateTime(2023, 07, 17): 1,
                      DateTime(2023, 07, 19): 1,
                    },
                    startDate: DateTime(2023, 07, 01),
                    endDate: DateTime(2023, 07, 31),
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
                  Text('1 - 15: Libur Akhir Tahun 2022/2023',
                      style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('17: Awal Tahun Pelajaran 2023/2024',
                      style: stylingbold14),
                  const SizedBox(height: 5),
                  Text('19: Tahun Baru Islam 1445 H', style: stylingbold14),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
