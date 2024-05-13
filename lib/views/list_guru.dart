import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/models/guru.dart';
import 'package:sistem_informasi_smanda/views/detail_guru.dart';
import 'package:sistem_informasi_smanda/widgets/card_murid.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: must_be_immutable
class ListGuruPage extends StatelessWidget {
  ListGuruPage({super.key});
  List<Guru> allGuru = [];

  Future getAllGuru() async {
    try {
      var response =
          await http.get(Uri.parse('http://192.46.231.140:804/api/guru'));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allGuru.add(Guru.fromJson(element));
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
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Text('DAFTAR PENGAJAR', style: stylingbold20),
          const SizedBox(height: 5),
          Text('SMA N 2 METRO', style: stylingbold20),
          SizedBox(height: bodyHeight * 0.05),
          Center(
            child: SizedBox(
              child: SizedBox(
                  width: mediaQueryWidth * 0.9,
                  height: bodyHeight * 0.55,
                  child: FutureBuilder(
                    future: getAllGuru(),
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
                            crossAxisCount: 2,
                            crossAxisSpacing: 15.0,
                            mainAxisSpacing: 15.0,
                            mainAxisExtent: 220,
                          ),
                          itemCount: allGuru.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailGuru(
                                      nama: allGuru[index].nama,
                                      foto: allGuru[index].foto,
                                      nip: allGuru[index].nip,
                                      mengajar: allGuru[index].mengajar,
                                      wali: allGuru[index].wali,
                                      jabatanTambahan:
                                          allGuru[index].jabatanTambahan,
                                    ),
                                  ),
                                );
                              },
                              child: StudentCard(
                                nama: allGuru[index].nama,
                                nim: allGuru[index].mengajar,
                                foto:
                                    'http://192.46.231.140:804/${allGuru[index].foto}',
                              ),
                            );
                          },
                        );
                      }
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
