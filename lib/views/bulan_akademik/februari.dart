import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../widgets/font.dart';

class BulanFebruari extends StatelessWidget {
  const BulanFebruari({super.key});

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
                      DateTime(2023, 02, 18): 1,
                      DateTime(2023, 02, 20): 1,
                      DateTime(2023, 02, 21): 1,
                      DateTime(2023, 02, 22): 1,
                      DateTime(2023, 02, 23): 1,
                      DateTime(2023, 02, 24): 1,
                      DateTime(2023, 02, 25): 1,
                    },
                    startDate: DateTime(2023, 02, 01),
                    endDate: DateTime(2023, 02, 28),
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
                  Text('18: Isra Mi\'Raj Nabi Muhammad SAW',
                      style: stylingbold14),
                  const SizedBox(height: 10),
                  Text('20 - 25: Penilaian Tengah Semester Kelas 10 dan 11',
                      style: stylingbold14),
                  const SizedBox(height: 10),
                  Text('20 - 25: Penilaian Akhir Tahun Kelas 12',
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
