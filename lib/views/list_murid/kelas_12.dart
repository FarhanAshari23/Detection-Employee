import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/models/pd2020.dart';
import 'package:http/http.dart' as http;
import 'package:sistem_informasi_smanda/views/detail_murid.dart';

import '../../widgets/card_murid.dart';
import '../../widgets/font.dart';

// ignore: must_be_immutable
class ListDuaBelas extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ListDuaBelas({super.key});

  @override
  State<ListDuaBelas> createState() => _ListDuaBelasState();
}

class _ListDuaBelasState extends State<ListDuaBelas> {
  int index = 0;

  late Future<List<Pd2020>> duaBelasIpaSatu;
  late Future<List<Pd2020>> duaBelasIpaDua;
  late Future<List<Pd2020>> duaBelasIpaTiga;
  late Future<List<Pd2020>> duaBelasIpaEmpat;
  late Future<List<Pd2020>> duaBelasIpaLima;
  late Future<List<Pd2020>> duaBelasIpaEnam;
  late Future<List<Pd2020>> duaBelasIpsSatu;
  late Future<List<Pd2020>> duaBelasIpsDua;
  late Future<List<Pd2020>> duaBelasIpsTiga;

  Future<List<Pd2020>> fetchduaBelasIpaSatu() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPA 1"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpaDua() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPA 2"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpaTiga() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPA 3"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpaEmpat() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPA 4"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpaLima() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPA 5"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpaEnam() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPA 6"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpsSatu() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPS 1"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpsDua() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPS 2"));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body)['data'] as List;
      return jsonResponse.map((pd) => Pd2020.fromJson(pd)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }

  Future<List<Pd2020>> fetchduaBelasIpsTiga() async {
    final response = await http
        .get(Uri.parse("http://192.46.231.140:804/api/pd2020?q=12 IPS 3"));

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
    duaBelasIpaSatu = fetchduaBelasIpaSatu();
    duaBelasIpaDua = fetchduaBelasIpaDua();
    duaBelasIpaTiga = fetchduaBelasIpaTiga();
    duaBelasIpaEmpat = fetchduaBelasIpaEmpat();
    duaBelasIpaLima = fetchduaBelasIpaLima();
    duaBelasIpaEnam = fetchduaBelasIpaEnam();
    duaBelasIpsSatu = fetchduaBelasIpsSatu();
    duaBelasIpsDua = fetchduaBelasIpsDua();
    duaBelasIpsTiga = fetchduaBelasIpsTiga();
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
              future: duaBelasIpaSatu,
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
              future: duaBelasIpaDua,
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
              future: duaBelasIpaTiga,
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
              future: duaBelasIpaEmpat,
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
              future: duaBelasIpaLima,
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
              future: duaBelasIpaEnam,
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
              future: duaBelasIpsSatu,
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
              future: duaBelasIpsDua,
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
              future: duaBelasIpsTiga,
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Class('12 IPA 1'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Class('12 IPA 2'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Class('12 IPA 3'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Class('12 IPA 4'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    child: Class('12 IPA 5'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 5;
                      });
                    },
                    child: Class('12 IPA 6'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 6;
                      });
                    },
                    child: Class('12 IPS 1'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 7;
                      });
                    },
                    child: Class('12 IPS 2'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 8;
                      });
                    },
                    child: Class('12 IPS 3'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            widgets[index],
            const SizedBox(height: 20),
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
