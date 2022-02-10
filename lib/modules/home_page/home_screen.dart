import 'dart:math';

import 'package:dose_treatment_cancer/modules/types_page/cancer_types.dart';
import 'package:dose_treatment_cancer/shared/components/custom_text_form_field.dart';
import 'package:dose_treatment_cancer/shared/components/show_alert_dialogue.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "WELCOME",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              mainColor,
              secondColorLight,
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      mainColor,
                      secondColorLight,
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              'Body Area surface measurement',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            Container(
              height: 80.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFormField(
                    controller: heightController,
                    tegText: 'Height',
                    hintText: 'Please Enter your height in Cm',
                    isPassword: false,
                    inputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFormField(
                    controller: weightController,
                    tegText: 'Weight',
                    hintText: 'Please Enter your weight in Kg',
                    isPassword: false,
                    inputType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Spacer(),
                    MaterialButton(
                      onPressed: () {
                        try {
                          calculateArea(double.parse(heightController.text),
                              double.parse(weightController.text), context);
                        } catch (error) {
                          showAlertDialog(context,
                              title: 'Input Error',
                              content: error.toString(),
                              defaultActionText: "OK", defaultAction: () {
                            Navigator.of(context).pop(false);
                          });
                        }
                      },
                      child: Container(
                        width: 90.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Ok',
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.teal,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void calculateArea(double height, double weight, context) {
    if (height > 250 || height < 100 || weight > 250) {
      showAlertDialog(context,
          title: 'Input  Error',
          content: 'Irrational inputs',
          defaultActionText: 'Ok', defaultAction: () {
        Navigator.of(context).pop(false);
      });
    } else {
      area = (sqrt((height * weight) / 3600)).roundToDouble();
      showAlertDialog(
        context,
        title: 'Body Area',
        content:
            'Your height is $height, and your weight is $weight ,so your body area is equal to \n $area ',
        defaultActionText: "Continue",
        defaultAction: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CancerTypesPage()));
        },
        cancelActionText: 'Change Values',
      );
    }
  }
}
