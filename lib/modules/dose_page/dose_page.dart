import 'package:dose_treatment_cancer/model/user_model.dart';
import 'package:dose_treatment_cancer/modules/home_page/home_screen.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:dose_treatment_cancer/shared/controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DosePage extends StatelessWidget {
  const DosePage(
      {Key? key, required this.regimenName, required this.prescription})
      : super(key: key);
  final String regimenName;
  final String prescription;

  void submitForm(BuildContext context) {
    UserModel userModel = UserModel(
      patientName: xclName,
      age: xclAge,
      gender: xclGender,
      cancerGrade: xclGrade,
      cancerName: xclCancerType,
      protocolName: xclProtocolName,
      regimenName: xclRegimenName,
      regimenDetails: xclRegimenDetails,
      dateTime: DateTime.now(),
      weight: xclWeight,
      height: xclHeight,
      area: xclArea,
    );
    FormController formController = FormController((response) {
      print(xclGender);
      print(xclProtocolName);
      print(xclRegimenName);
      print(xclRegimenDetails);
      print(response);
      if (response == FormController.STATUS_SUCCESS) {
        showSnackBar(context, "Record Saved Successfully");
      } else {
        showSnackBar(context, "Error");
      }
    });
    showSnackBar(context, "Submitting");
    formController.submitForm(userModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Dose",
          style: GoogleFonts.quintessential(
            fontSize: 30,
            color: backgroundColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        iconTheme: IconThemeData(
          color: backgroundColor, //change your color here
        ),
        elevation: 0.0,
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Text(
                regimenName,
                style: GoogleFonts.quintessential(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              Text(
                "Details:",
                style: GoogleFonts.quintessential(
                  fontSize: 30,
                  color: secondColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                prescription,
                style: GoogleFonts.quintessential(
                  fontSize: 30,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      submitForm(context);
                    },
                    child: Container(
                      width: 120,
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
                              'Save',
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
                              Icons.save,
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
                height: 20.0,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                      (route) => false,
                    ),
                    child: Container(
                      width: 120,
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
                              'Home',
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
                              Icons.home,
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
                height: 8.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
