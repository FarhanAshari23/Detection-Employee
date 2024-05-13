import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class OtentikasiPage extends StatelessWidget {
  OtentikasiPage({super.key});

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      body: Column(
        children: [
          Text('Masukkan Password', style: stylingbold20),
          const SizedBox(height: 20),
          TextField(
            controller: myController,
          )
        ],
      ),
    );
  }
}
