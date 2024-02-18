import 'package:flutter/material.dart';
import 'package:quizzy/initial_page.dart';
//import 'package:quizzy/quizzy.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}
