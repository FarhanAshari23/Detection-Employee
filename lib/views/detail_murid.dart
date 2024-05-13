import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:sistem_informasi_smanda/widgets/noted_guru.dart';

class DetailMurid extends StatelessWidget {
  final String? nama;
  final String? nisn;
  final String? foto;
  final String? kelas;
  final String? tanggalLahir;
  final String? telp;
  final String? alamat;
  const DetailMurid(
      {super.key,
      this.nama,
      this.nisn,
      this.foto,
      this.kelas,
      this.tanggalLahir,
      this.telp,
      this.alamat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      body: Column(
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
                        image: NetworkImage('http://192.46.231.140:804/$foto'),
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
          Text('$nisn', style: stylingbold12),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NotedGuru(title: 'Kelas', value: '$kelas'),
              NotedGuru(title: 'Tanggal Lahir', value: '$tanggalLahir'),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NotedGuru(title: 'Nomor HP', value: '$telp'),
              NotedGuru(title: 'Alamat', value: '$alamat'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, right: 25),
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
    );
  }
}
