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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: secondColor,
        title: Text(
          'Home Page',
          style: TextStyle(color: secondColor),
        ),
        elevation: 0,
      ),
      body: Container(
        color: backGroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: .5,
                  child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      color: mainColor,
                      height: 230,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 35, left: 70),
                        child: Text(
                          "Body Surface Area \nMeasurement",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      color: secondColor,
                      height: 210,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
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
                          print("before $area");
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
                          color: mainColor,
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
      var areaBeforeRound = (sqrt((height * weight) / 3600));
      area = double.parse((areaBeforeRound).toStringAsFixed(2));
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

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondend = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondend.dx, secondend.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
