import 'package:eightyythree/views/widgets/bottomBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EightyYThree Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageNavigation(),
    );
  }
}
