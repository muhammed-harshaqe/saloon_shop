import 'package:flutter/material.dart';
import 'package:saloon_shop/home/HomeScreen.dart';
import 'package:saloon_shop/login/LoginScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();


  }

  void _checkLoginStatus() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Loginscreen()),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [],
      ),
    );
  }


}
