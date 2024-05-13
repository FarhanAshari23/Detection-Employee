import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sistem_informasi_smanda/views/dashboard.dart';
import 'package:sistem_informasi_smanda/views/list_PD.dart';
import 'package:sistem_informasi_smanda/views/list_guru.dart';
import 'package:sistem_informasi_smanda/widgets/font.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const DashboardPage(),
      const PesertaDidikPage(),
      ListGuruPage(),
      //const LogoutScreen(),
    ];
    return Scaffold(
      backgroundColor: const Color(0xff4B56D2),
      appBar: AppBar(
        backgroundColor: const Color(0xffC0DEFF),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('SISTEM INFORMASI SMA N 2 METRO', style: stylingbold16purple),
            Image.asset('assets/SMAN 2 Metro.png', width: 40, height: 40),
          ],
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: const Color(0xff82C3EC),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: GNav(
            onTabChange: (int i) {
              setState(() {
                currentIndex = i;
              });
            },
            backgroundColor: const Color(0xff82C3EC),
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0xff0014FF),
            gap: 14,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: FontAwesomeIcons.tableColumns, text: 'Dashboard'),
              GButton(
                  icon: FontAwesomeIcons.chalkboardUser, text: 'Peserta Didik'),
              GButton(
                  icon: FontAwesomeIcons.personChalkboard, text: 'Pengajar'),
              //GButton(icon: FontAwesomeIcons.rightFromBracket, text: 'Logout')
            ],
          ),
        ),
      ),
    );
  }
}
