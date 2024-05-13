import "package:flutter/material.dart";
import 'package:sistem_informasi_smanda/models/eskul.dart';
import 'package:sistem_informasi_smanda/views/detail_ekstrakulikuler.dart';
import 'package:sistem_informasi_smanda/widgets/logo_eskul.dart';

import '../widgets/font.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EkstrakulikulerPage extends StatelessWidget {
  EkstrakulikulerPage({super.key});

  List<Eksul> allEskul = [];

  Future getAllEskul() async {
    try {
      var response =
          await http.get(Uri.parse('http://192.46.231.140:804/api/eskul'));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allEskul.add(Eksul.fromJson(element));
      });
    } catch (e) {
      // ignore: avoid_print
      print('terjadi kesalahan');
      // ignore: avoid_print
      print(e);
    }
  }

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
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text('Daftar Ekstrakulikuler', style: stylingbold18),
            const SizedBox(height: 5),
            Text('SMA N 2 METRO', style: stylingbold18),
            const SizedBox(height: 24),
            SizedBox(
              width: mediaQueryWidth * 0.9,
              height: bodyHeight * 0.6,
              child: FutureBuilder(
                future: getAllEskul(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
                        mainAxisExtent: 120,
                      ),
                      itemCount: allEskul.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailEskul(
                                  eskul: allEskul[index].eskulNama,
                                  deskripsi: allEskul[index].deskripsi,
                                  fotoBendahara: allEskul[index].fotoBendahara,
                                  namaBendahara: allEskul[index].namaBendahara,
                                  fotoPembina: allEskul[index].fotoPembinaSatu,
                                  namaPembina: allEskul[index].namaPembinaSatu,
                                  fotoKetua: allEskul[index].fotoKetua,
                                  namaKetua: allEskul[index].namaKetua,
                                  fotoSekretaris:
                                      allEskul[index].fotoSekretaris,
                                  namaSekretaris:
                                      allEskul[index].namaSekretaris,
                                  fotoWakil: allEskul[index].fotoWakil,
                                  namaWakil: allEskul[index].namaWakil,
                                ),
                              ),
                            );
                          },
                          child: LogoEskul(
                            logo:
                                'http://192.46.231.140:804/${allEskul[index].eskulLogo}',
                            namaeskul: allEskul[index].eskulNama,
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 200),
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
    );
  }
}
