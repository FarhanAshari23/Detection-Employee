// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../models/pd2020.dart';
import '../../widgets/card_murid.dart';
import '../../widgets/font.dart';
import 'dart:convert';

import '../detail_murid.dart';

class ListSebelas extends StatefulWidget {
  const ListSebelas({super.key});

  @override
  State<ListSebelas> createState() => _ListSebelasState();
}

class _ListSebelasState extends State<ListSebelas> {
  int index = 0;
  late Future<List<Pd2020>> SebelasIpaSatu;
  late Future<List<Pd2020>> SebelasIpaDua;
  late Future<List<Pd2020>> SebelasIpaTiga;
  late Future<List<Pd2020>> SebelasIpaEmpat;
  late Future<List<Pd2020>> SebelasIpaLima;
  late Future<List<Pd2020>> SebelasIpaEnam;
  late Future<List<Pd2020>> SebelasIpsSatu;
  late Future<List<Pd2020>> SebelasIpsDua;
  late Future<List<Pd2020>> SebelasIpsTiga;

  Future<List<Pd2020>> fetchSebelasIpaSatu() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPA 1"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpaDua() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPA 2"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpaTiga() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPA 3"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpaEmpat() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPA 4"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpaLima() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPA 5"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpaEnam() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPA 6"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpsSatu() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPS 1"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpsDua() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPS 2"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchSebelasIpsTiga() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2021?q=11 IPS 3"));

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
    SebelasIpaSatu = fetchSebelasIpaSatu();
    SebelasIpaDua = fetchSebelasIpaDua();
    SebelasIpaTiga = fetchSebelasIpaTiga();
    SebelasIpaEmpat = fetchSebelasIpaEmpat();
    SebelasIpaLima = fetchSebelasIpaLima();
    SebelasIpaEnam = fetchSebelasIpaEnam();
    SebelasIpsSatu = fetchSebelasIpsSatu();
    SebelasIpsDua = fetchSebelasIpsDua();
    SebelasIpsTiga = fetchSebelasIpsTiga();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
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
              future: SebelasIpaSatu,
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
              future: SebelasIpaDua,
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
              future: SebelasIpaTiga,
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
              future: SebelasIpaEmpat,
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
              future: SebelasIpaLima,
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
              future: SebelasIpaEnam,
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
              future: SebelasIpsSatu,
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
              future: SebelasIpsDua,
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
              future: SebelasIpsTiga,
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
        padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
        child: Column(
          children: [
            SizedBox(
              width: mediaQueryWidth * 0.95,
              height: bodyHeight * 0.055,
              child: ListView(
                scrollDirection: Axis.horizontal,
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
                          child: Class('11 IPA 1'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Class('11 IPA 2'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          child: Class('11 IPA 3'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          child: Class('11 IPA 4'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 4;
                            });
                          },
                          child: Class('11 IPA 5'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 5;
                            });
                          },
                          child: Class('11 IPA 6'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 6;
                            });
                          },
                          child: Class('11 IPS 1'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 7;
                            });
                          },
                          child: Class('11 IPS 2'),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 8;
                            });
                          },
                          child: Class('11 IPS 3'),
                        ),
                      ],
                    ),
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
