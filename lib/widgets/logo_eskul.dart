import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class LogoEskul extends StatelessWidget {
  final String logo;
  final String namaeskul;
  const LogoEskul({
    super.key,
    required this.logo,
    required this.namaeskul,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff2DCDDF),
          ),
          child: Center(
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(logo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(namaeskul, style: stylingbold10white),
      ],
    );
  }
}
