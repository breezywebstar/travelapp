import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Africa',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 206, 62, 144),
        accentColor: Color.fromARGB(255, 239, 216, 241),
        scaffoldBackgroundColor: Color.fromARGB(255, 243, 200, 232),
      ),
      home: const HomePage(),
    );
  }
}
