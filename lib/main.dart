import 'package:flutter/material.dart';
import 'package:modull4/halaman_utama.dart';
import 'package:modull4/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis Mobile',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: halaman_utama(),
    );
  }
}

