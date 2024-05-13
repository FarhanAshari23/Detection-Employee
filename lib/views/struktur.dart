import 'package:flutter/material.dart';

import '../widgets/card_struktur.dart';
import '../widgets/font.dart';

class StrukturPage extends StatelessWidget {
  const StrukturPage({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text('STRUKTUR SMA N 2 METRO', style: stylingbold20),
              const SizedBox(height: 30),
              const StructureCard(
                nama: 'Ali Kurniawan, SH.I, M.Pd',
                nip: 'NIP.198602112011011002',
                foto: 'assets/Ali Kurniawan.png',
                jabatan: 'Kepala Sekolah',
              ),
              const SizedBox(height: 30),
              Text(
                'Jajaran Wakil Kepala Sekolah dan Kepala Tata Usaha',
                style: stylingbold12,
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: mediaQueryWidth * 0.9,
                height: bodyHeight * 0.345,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    StructureCard(
                      nama: 'Drs. Triwoko Heri S.',
                      nip: 'NIP.196610271993031005',
                      foto: 'assets/Triwoko.png',
                      jabatan: 'Wakasek Bidang\nKurikulum',
                    ),
                    SizedBox(height: 15),
                    StructureCard(
                      nama: 'Sugiyono, S.Pd',
                      nip: 'NIP. 196512281989011001',
                      foto: 'assets/sugiyono.png',
                      jabatan: 'Wakasek Bidang\nKesiswaan',
                    ),
                    SizedBox(height: 15),
                    StructureCard(
                      nama: 'Iik Atikah, S.Pd, M.Pd',
                      nip: 'NIP. 197903182002122004',
                      foto: 'assets/Iik.png',
                      jabatan: 'Wakasek Bidang Sarpras',
                    ),
                    SizedBox(height: 15),
                    StructureCard(
                      nama: 'Amar Fatkhalloh, S.Pd.I',
                      nip: 'NIP. 198005092010011005',
                      foto: 'assets/Amar F.png',
                      jabatan: 'Wakasek Bidang Humas',
                    ),
                    SizedBox(height: 15),
                    StructureCard(
                      nama: 'Nugroho, A.Md.',
                      nip: 'NIP. 197408122014061001',
                      foto: 'assets/Nugroho.png',
                      jabatan: 'Kepala Tata Usaha',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffADA2FF),
                    ),
                    child: Center(
                      child: Text('KEMBALI', style: stylingbold12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
