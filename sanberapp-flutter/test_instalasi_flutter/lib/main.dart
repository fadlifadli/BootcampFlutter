import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/tugas/tugas10/HomeScreen.dart';
// import 'tugas/tugas9/telegram.dart';
import 'tugas/tugas10/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 57, 5, 146)),
        useMaterial3: true,
      ),
      home: Homescreen(),
    );
  }
}
