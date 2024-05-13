import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sistem_informasi_smanda/views/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/SMAN 2 Metro.png',
      backgroundColor: const Color(0xff4B56D2),
      duration: 2000,
      nextScreen: const HomePage(),
    );
  }
}
