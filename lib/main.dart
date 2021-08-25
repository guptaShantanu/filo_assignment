import 'package:filo_demo/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FiloApp());
}

class FiloApp extends StatelessWidget {
  const FiloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}


