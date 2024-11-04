import 'package:dotworldtech/Screens/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  late bool next;

  @override
  void initState() {
    next = true;
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        next = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: next
            ? Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Logo1.png',
                        width: 300,
                        height: 300,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )
            : LoginPage());
  }
}
// ElevatedButton(
// onPressed: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (_) => new LoginPage()));
// },
// child: Text(
// "Get Started",
// ),
