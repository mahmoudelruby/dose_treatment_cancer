import 'package:dose_treatment_cancer/modules/home_page/home_screen.dart';
import 'package:flutter/material.dart';



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
