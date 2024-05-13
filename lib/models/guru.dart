// To parse this JSON data, do
//
//     final guru = guruFromJson(jsonString);

import 'dart:convert';

Guru guruFromJson(String str) => Guru.fromJson(json.decode(str));

String guruToJson(Guru data) => json.encode(data.toJson());

class Guru {
  Guru({
    required this.idGuru,
    required this.nama,
    required this.nip,
    required this.foto,
    required this.mengajar,
    required this.wali,
    required this.jabatanTambahan,
  });

  int idGuru;
  String nama;
  String nip;
  String foto;
  String mengajar;
  String wali;
  String jabatanTambahan;

  factory Guru.fromJson(Map<String, dynamic> json) => Guru(
        idGuru: json["id_guru"],
        nama: json["nama"],
        nip: json["nip"],
        foto: json["foto"],
        mengajar: json["mengajar"],
        wali: json["wali"],
        jabatanTambahan: json["jabatan_tambahan"],
      );

  Map<String, dynamic> toJson() => {
        "id_guru": idGuru,
        "nama": nama,
        "nip": nip,
        "foto": foto,
        "mengajar": mengajar,
        "wali": wali,
        "jabatan_tambahan": jabatanTambahan,
      };
}
