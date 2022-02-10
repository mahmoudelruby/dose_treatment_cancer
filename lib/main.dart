import 'package:flutter/material.dart';
import 'modules/home_page/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cancer Treatment Dose',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
