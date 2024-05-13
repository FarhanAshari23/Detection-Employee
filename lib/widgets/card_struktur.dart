import 'package:flutter/material.dart';

import 'font.dart';

class StructureCard extends StatelessWidget {
  final String nama;
  final String nip;
  final String foto;
  final String jabatan;
  const StructureCard({
    super.key,
    required this.nama,
    required this.nip,
    required this.foto,
    required this.jabatan,
  });
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      width: mediaQueryWidth * 0.9,
      height: bodyHeight * 0.205,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 3),
            child: Container(
              width: mediaQueryWidth * 0.26,
              height: bodyHeight * 0.175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(foto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: stylingbold14,
                ),
                const SizedBox(height: 3),
                Text(
                  nip,
                  style: stylingbold12,
                ),
                const SizedBox(height: 15),
                Text(
                  jabatan,
                  style: stylingbold14,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
