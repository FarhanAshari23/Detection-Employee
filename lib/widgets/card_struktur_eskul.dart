import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class CardStrukturEskul extends StatelessWidget {
  final String foto;
  final String nama;
  final String jabatan;
  const CardStrukturEskul({
    super.key,
    required this.foto,
    required this.nama,
    required this.jabatan,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 105,
          height: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff2DCDDF),
          ),
          child: Center(
            child: Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage('http://192.46.231.140:804/$foto'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(nama, style: stylingbold12),
        const SizedBox(height: 3),
        Text(jabatan, style: stylingbold12)
      ],
    );
  }
}
