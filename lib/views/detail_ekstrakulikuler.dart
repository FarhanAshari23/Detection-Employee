import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/card_struktur_eskul.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class DetailEskul extends StatelessWidget {
  final String eskul;
  final String deskripsi;
  final String fotoPembina;
  final String namaPembina;
  final String fotoKetua;
  final String namaKetua;
  final String fotoWakil;
  final String namaWakil;
  final String fotoSekretaris;
  final String namaSekretaris;
  final String fotoBendahara;
  final String namaBendahara;
  const DetailEskul(
      {super.key,
      required this.eskul,
      required this.deskripsi,
      required this.fotoBendahara,
      required this.namaBendahara,
      required this.fotoKetua,
      required this.namaKetua,
      required this.fotoPembina,
      required this.namaPembina,
      required this.fotoWakil,
      required this.namaWakil,
      required this.namaSekretaris,
      required this.fotoSekretaris});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      appBar: AppBar(
        backgroundColor: const Color(0xffC0DEFF),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('SISTEM INFORMASI SMA N 2 METRO', style: stylingbold16purple),
            Image.asset('assets/SMAN 2 Metro.png', width: 40, height: 40),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 21, left: 21),
        child: SizedBox(
          width: mediaQueryWidth * 0.9,
          height: bodyHeight * 0.9,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/arrow back.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  Text(eskul, style: stylingbold18),
                  const SizedBox(height: 25),
                  CardStrukturEskul(
                      foto: fotoPembina, nama: namaPembina, jabatan: 'Pembina'),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CardStrukturEskul(
                            foto: fotoKetua, nama: namaKetua, jabatan: 'Ketua'),
                        const SizedBox(width: 15),
                        CardStrukturEskul(
                            foto: fotoWakil,
                            nama: namaWakil,
                            jabatan: 'Wakil Ketua'),
                        const SizedBox(width: 15),
                        CardStrukturEskul(
                            foto: fotoSekretaris,
                            nama: namaSekretaris,
                            jabatan: 'Sekretaris'),
                        const SizedBox(width: 15),
                        CardStrukturEskul(
                            foto: fotoBendahara,
                            nama: namaBendahara,
                            jabatan: 'Bendahara'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff453C67),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 21, bottom: 20),
                      child: SizedBox(
                        width: 250,
                        height: 350,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              deskripsi,
                              style: stylingbold16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
