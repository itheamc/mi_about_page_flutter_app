import 'package:flutter/material.dart';
import 'package:mi_about_page/screens/mi_about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi About Page",
      home: AboutScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}