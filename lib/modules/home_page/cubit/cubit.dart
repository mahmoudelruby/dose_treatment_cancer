import 'dart:math';
import 'package:dose_treatment_cancer/modules/types_page/cancer_types.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:dose_treatment_cancer/modules/home_page/cubit/states.dart';
import 'package:dose_treatment_cancer/shared/components/show_alert_dialogue.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  void calculateArea(double height, double weight, context) {
    if (height > 220 || weight > 200) {
      showAlertDialog(context, title: 'Input  Error',
          content: 'Irrational inputs',
          defaultActionText: 'Ok',
          defaultAction: (){
        Navigator.of(context).pop(false);
          });
    } else {
      area = (sqrt((height * weight) / 3600)).roundToDouble();
      showAlertDialog(
        context,
        title: 'Body Area',
        content:
        'Your height is $height, and your weight is $weight ,so your body area is equal to \n $area '
        ,
        defaultActionText: "Continue",
        defaultAction: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>  CancerTypesPage()));
        },
        cancelActionText: 'Change Values',
      );
    }
    emit(HomeReadDataSuccessState());
  }
}
