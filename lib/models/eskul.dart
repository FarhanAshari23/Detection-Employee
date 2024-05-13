// To parse this JSON data, do
//
//     final eksul = eksulFromJson(jsonString);

import 'dart:convert';

Eksul eksulFromJson(String str) => Eksul.fromJson(json.decode(str));

String eksulToJson(Eksul data) => json.encode(data.toJson());

class Eksul {
  Eksul({
    required this.idEskul,
    required this.eskulNama,
    required this.eskulLogo,
    required this.namaPembinaSatu,
    required this.fotoPembinaSatu,
    required this.namaKetua,
    required this.fotoKetua,
    required this.namaWakil,
    required this.fotoWakil,
    required this.namaSekretaris,
    required this.fotoSekretaris,
    required this.namaBendahara,
    required this.fotoBendahara,
    required this.deskripsi,
  });

  int idEskul;
  String eskulNama;
  String eskulLogo;
  String namaPembinaSatu;
  String fotoPembinaSatu;
  String namaKetua;
  String fotoKetua;
  String namaWakil;
  String fotoWakil;
  String namaSekretaris;
  String fotoSekretaris;
  String namaBendahara;
  String fotoBendahara;
  String deskripsi;

  factory Eksul.fromJson(Map<String, dynamic> json) => Eksul(
        idEskul: json["id_eskul"],
        eskulNama: json["eskulNama"],
        eskulLogo: json["eskulLogo"],
        namaPembinaSatu: json["namaPembinaSatu"],
        fotoPembinaSatu: json["fotoPembinaSatu"],
        namaKetua: json["namaKetua"],
        fotoKetua: json["fotoKetua"],
        namaWakil: json["namaWakil"],
        fotoWakil: json["fotoWakil"],
        namaSekretaris: json["namaSekretaris"],
        fotoSekretaris: json["fotoSekretaris"],
        namaBendahara: json["namaBendahara"],
        fotoBendahara: json["fotoBendahara"],
        deskripsi: json["deskripsi"],
      );

  Map<String, dynamic> toJson() => {
        "id_eskul": idEskul,
        "eskulNama": eskulNama,
        "eskulLogo": eskulLogo,
        "namaPembinaSatu": namaPembinaSatu,
        "fotoPembinaSatu": fotoPembinaSatu,
        "namaKetua": namaKetua,
        "fotoKetua": fotoKetua,
        "namaWakil": namaWakil,
        "fotoWakil": fotoWakil,
        "namaSekretaris": namaSekretaris,
        "fotoSekretaris": fotoSekretaris,
        "namaBendahara": namaBendahara,
        "fotoBendahara": fotoBendahara,
        "deskripsi": deskripsi,
      };
}
