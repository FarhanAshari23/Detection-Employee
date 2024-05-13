import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';
import 'package:http/http.dart' as http;

import '../../models/pd2020.dart';
import '../../widgets/card_murid.dart';
import '../detail_murid.dart';

class ListSepuluh extends StatefulWidget {
  const ListSepuluh({super.key});

  @override
  State<ListSepuluh> createState() => _ListSepuluhState();
}

class _ListSepuluhState extends State<ListSepuluh> {
  int index = 0;

  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaSatu;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaDua;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaTiga;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaEmpat;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaLima;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaEnam;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpaTujuh;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpsSatu;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpsDua;
  // ignore: non_constant_identifier_names
  late Future<List<Pd2020>> SepuluhIpsTiga;

  Future<List<Pd2020>> fetchSepuluhIpaSatu() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 1"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpaDua() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 2"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpaTiga() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 3"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpaEmpat() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 4"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpaLima() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 5"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpaEnam() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 6"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpaTujuh() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPA 7"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpsSatu() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPS 1"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpsDua() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPS 2"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSepuluhIpsTiga() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2022?q=10 IPS 3"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  @override
  void initState() {
    super.initState();
    SepuluhIpaSatu = fetchSepuluhIpaSatu();
    SepuluhIpaDua = fetchSepuluhIpaDua();
    SepuluhIpaTiga = fetchSepuluhIpaTiga();
    SepuluhIpaEmpat = fetchSepuluhIpaEmpat();
    SepuluhIpaLima = fetchSepuluhIpaLima();
    SepuluhIpaEnam = fetchSepuluhIpaEnam();
    SepuluhIpaTujuh = fetchSepuluhIpaTujuh();
    SepuluhIpsSatu = fetchSepuluhIpsSatu();
    SepuluhIpsDua = fetchSepuluhIpsDua();
    SepuluhIpsTiga = fetchSepuluhIpsTiga();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    Widget Class(String kelas) {
      return Container(
        width: mediaQueryWidth * 0.2,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff205295),
        ),
        child: Center(
          child: Text(
            kelas,
            style: stylingbold12,
          ),
        ),
      );
    }

    List<Widget> widgets = [
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaSatu,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaDua,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaTiga,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaEmpat,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaLima,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaEnam,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpaTujuh,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpsSatu,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpsDua,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
      SizedBox(
        child: SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.785,
            child: FutureBuilder<List<Pd2020>>(
              future: SepuluhIpsTiga,
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMurid(
                                nama: snapshot.data![index].nama,
                                foto: snapshot.data![index].foto,
                                nisn: snapshot.data![index].nisn,
                                kelas: snapshot.data![index].kelas,
                                tanggalLahir:
                                    snapshot.data![index].tanggalLahir,
                                telp: snapshot.data![index].telp,
                                alamat: snapshot.data![index].alamat,
                              ),
                            ),
                          );
                        },
                        child: StudentCard(
                          nama: snapshot.data![index].nama,
                          nim: snapshot.data![index].nisn,
                          foto:
                              'http://192.46.231.140:804/${snapshot.data![index].foto}',
                        ),
                      );
                    },
                  );
                }
              },
            )),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          children: [
            SizedBox(
              width: mediaQueryWidth * 0.95,
              height: bodyHeight * 0.055,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Class('10 IPA 1'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Class('10 IPA 2'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Class('10 IPA 3'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Class('10 IPA 4'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    child: Class('10 IPA 5'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 5;
                      });
                    },
                    child: Class('10 IPA 6'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 6;
                      });
                    },
                    child: Class('10 IPA 7'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 7;
                      });
                    },
                    child: Class('10 IPS 1'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 8;
                      });
                    },
                    child: Class('10 IPS 2'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 9;
                      });
                    },
                    child: Class('10 IPS 3'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            widgets[index],
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffADA2FF),
                ),
                child: Center(
                  child: Text('Kembali', style: stylingbold14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
