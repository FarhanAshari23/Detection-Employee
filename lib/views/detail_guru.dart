import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:sistem_informasi_smanda/widgets/noted_guru.dart';

class DetailGuru extends StatelessWidget {
  final String? nama;
  final String? nip;
  final String? foto;
  final String? mengajar;
  final String? wali;
  final String? jabatanTambahan;
  const DetailGuru({
    super.key,
    this.nama,
    this.nip,
    this.foto,
    this.mengajar,
    this.wali,
    this.jabatanTambahan,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 90,
                  color: const Color(0xffC0DEFF),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image:
                              NetworkImage('http://192.46.231.140:804/$foto'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(300, 300)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text('$nama', style: stylingbold14),
            const SizedBox(height: 5),
            Text('NIP.$nip', style: stylingbold12),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NotedGuru(title: 'mengajar', value: '$mengajar'),
                NotedGuru(title: 'wali kelas', value: '$wali'),
              ],
            ),
            const SizedBox(height: 35),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 167,
                      height: 35,
                      color: const Color(0xff4B56D2),
                    ),
                    Container(
                      width: mediaQueryWidth * 0.95,
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
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                              '$jabatanTambahan',
                              style: stylingbold12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 25,
                  left: 105,
                  child: Container(
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffEAFDFC),
                    ),
                    child: Center(
                      child: Text(
                        'Jabatan Tambahan',
                        style: stylingbold10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 25, bottom: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffADA2FF),
                    ),
                    child: Center(
                      child: Text('Kembali', style: stylingbold16),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
