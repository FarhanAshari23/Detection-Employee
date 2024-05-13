import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String foto;
  const StudentCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.foto,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff205295),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(foto),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: SizedBox(
              width: 140,
              height: 30,
              child: Text(
                nama,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            nim,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
