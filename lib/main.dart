import 'package:dose_treatment_cancer/modules/home_page/home_screen.dart';
import 'package:dose_treatment_cancer/shared/cache_helper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();

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
