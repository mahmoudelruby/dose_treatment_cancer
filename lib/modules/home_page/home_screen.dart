import 'dart:math';

import 'package:dose_treatment_cancer/modules/types_page/cancer_types.dart';
import 'package:dose_treatment_cancer/shared/components/custom_text_form_field.dart';
import 'package:dose_treatment_cancer/shared/components/show_alert_dialogue.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int gradeTileNumber = 1;

  bool isFemale = true;

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: secondColor,
              height: 20,
              width: double.infinity,
            ),
            const Image(
              image: AssetImage("assets/images/home.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 16,
              ),
              child: CustomTextFormField(
                controller: nameController,
                tegText: 'Name',
                hintText: 'Please Enter your name',
                isPassword: false,
                inputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 16,
              ),
              child: CustomTextFormField(
                controller: ageController,
                tegText: 'Age',
                hintText: 'Please Enter your age',
                isPassword: false,
                inputType: TextInputType.number,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    'Gender',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          xclGender = "Male";
                          isFemale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(10.0),
                          color: isFemale ? Colors.grey : secondColor,
                        ),
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Icon(
                            Icons.male,
                            color: backgroundColor,
                            size: 70.0,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          xclGender = "Female";
                          isFemale = true ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(10.0),
                          color: isFemale ? secondColor : Colors.grey,
                        ),
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Icon(
                            Icons.female,
                            color: backgroundColor,
                            size: 70.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    'Cancer Grade',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          xclGrade = 1;
                          gradeTileNumber = 1;

                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(10.0),
                          color: gradeTileNumber == 1
                              ? secondColor
                              : Colors.grey,
                        ),
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          xclGrade = 2;
                          gradeTileNumber = 2;

                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(10.0),
                          color: gradeTileNumber == 2
                              ? secondColor
                              : Colors.grey,
                        ),
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          xclGrade = 3;
                          gradeTileNumber = 3;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(10.0),
                          color: gradeTileNumber == 3
                              ? secondColor
                              : Colors.grey,
                        ),
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          xclGrade = 4;
                          gradeTileNumber = 4;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(10.0),
                          color: gradeTileNumber == 4
                              ? secondColor
                              : Colors.grey,
                        ),
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                const Spacer(),
                MaterialButton(
                  onPressed: () {
                    try {
                      calculateArea(double.parse(heightController.text),
                          double.parse(weightController.text), context);
                      xclAge = int.parse(ageController.text);
                      xclName = nameController.text;
                      xclHeight =double.parse(heightController.text);
                      xclWeight =double.parse(weightController.text);

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
                              color: backgroundColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: backgroundColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  void calculateArea(double height, double weight,context) {
    if (height > 251 || height < 80 || weight > 600) {
      showAlertDialog(context,
          title: 'Input  Error',
          content: 'Irrational inputs',
          defaultActionText: 'Ok', defaultAction: () {
        Navigator.of(context).pop(false);
      });
    } else {
      var areaBeforeRound = (sqrt((height * weight) / 3600));

      setState(() {
        area = double.parse((areaBeforeRound).toStringAsFixed(2));
        xclArea = area ;
      });
      showAlertDialog(
        context,
        title: 'Body Area',
        content: 'Your body area is equal to $area',
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
