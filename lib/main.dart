import 'dart:developer';
import 'package:flutter/material.dart';
import 'Section 2/SECTION_2_All_Videos.dart';
import 'Section 3/Frist_Video.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: First_UI(),
    );
  }
}

