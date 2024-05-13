// To parse this JSON data, do
//
//     final pd2020 = pd2020FromJson(jsonString);

import 'dart:convert';

Pd2020 pd2020FromJson(String str) => Pd2020.fromJson(json.decode(str));

String pd2020ToJson(Pd2020 data) => json.encode(data.toJson());

class Pd2020 {
  Pd2020({
    required this.idPd,
    required this.nama,
    required this.nisn,
    required this.foto,
    required this.kelas,
    required this.tanggalLahir,
    required this.telp,
    required this.alamat,
  });

  int idPd;
  String nama;
  String nisn;
  String foto;
  String kelas;
  String tanggalLahir;
  String telp;
  String alamat;

  factory Pd2020.fromJson(Map<String, dynamic> json) => Pd2020(
        idPd: json["id_pd"],
        nama: json["nama"],
        nisn: json["nisn"],
        foto: json["foto"],
        kelas: json["kelas"],
        tanggalLahir: json["tanggal_lahir"],
        telp: json["telp"],
        alamat: json["alamat"],
      );

  Map<String, dynamic> toJson() => {
        "id_pd": idPd,
        "nama": nama,
        "nisn": nisn,
        "foto": foto,
        "kelas": kelas,
        "tanggal_lahir": tanggalLahir,
        "telp": telp,
        "alamat": alamat,
      };
}
