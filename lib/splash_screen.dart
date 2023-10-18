import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_dicoding/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
            return const MainScreen();
          }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'),
            colorFilter: ColorFilter.mode(Color(0XFFf1f1eb), BlendMode.overlay),
            fit: BoxFit.fitWidth,
          ),
        ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
              Icons.local_convenience_store_rounded,
              color: Color(0XFFffffff),
              size: 200.0
          ),
          Center(
            child: Text(
              "Simple Cash Register",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0XFFffffff),
                fontSize: 30.0,
                fontFamily: 'Beau',
                letterSpacing: 2.0
              ),
            ),
          ),
        ],
      ),
    );
  }
}