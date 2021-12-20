import 'package:bloc/bloc.dart';
import 'package:dose_treatment_cancer/modules/home_page/cubit/cubit.dart';
import 'package:dose_treatment_cancer/shared/cubit/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/home_page/home_page.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => HomeCubit() ,
    child:  MaterialApp(
      title: 'Cancer Treatment Dose',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
    );
  }
}
