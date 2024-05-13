import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: const Text(
                        'Apakah kamu ingin keluar dari aplikasi ini?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Tidak'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/verifikasi');
                        },
                        child: const Text('Ya'),
                      )
                    ],
                  );
                },
              );
            },
            child: Image.asset('assets/logouticon.png'),
          ),
          const SizedBox(height: 20),
          Text('keluar', style: stylingbold20),
          Padding(
            padding: const EdgeInsets.only(top: 160, right: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('ver 1.0', style: stylingbold16),
            ),
          ),
        ],
      ),
    );
  }
}
