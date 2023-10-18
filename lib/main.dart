import 'package:flutter/material.dart';
import 'package:project_dicoding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'SISTER',
      theme: ThemeData(
        canvasColor: const Color(0XFFf1f1eb),
        primaryColor: const Color(0XFFf1f1eb),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}