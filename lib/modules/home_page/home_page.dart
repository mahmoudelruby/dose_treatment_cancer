import 'dart:math';
import 'package:dose_treatment_cancer/modules/types_page/cancer_types.dart';
import 'package:dose_treatment_cancer/shared/components/custom_text_form_field.dart';
import 'package:dose_treatment_cancer/shared/components/show_alert_dialogue.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "WELCOME",
          style: GoogleFonts.quintessential(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        color: mainColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Container(
                height: 20.0,
                width: double.infinity,
                color: mainColor,
              ),
            ),
            Text(
              'Body Surface Area \nMeasurement',
              style: GoogleFonts.quintessential(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 80.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: CustomTextFormField(
                    controller: heightController,
                    tegText: 'Height',
                    hintText: 'Please Enter your height in Cm',
                    isPassword: false,
                    inputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
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
                        decoration: BoxDecoration(
                          color: secondColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ok',
                                style: GoogleFonts.quintessential(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.black,
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
        content: 'your body area is equal to  $area ',
        defaultActionText: "Continue",
        defaultAction: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CancerTypesPage()),
          );
        },
        cancelActionText: 'Change Values',
      );
    }
  }
}
