import 'package:dose_treatment_cancer/models/cancer_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancerTypesPage extends StatelessWidget {
  CancerTypesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Cancer Type",
            style: GoogleFonts.pacifico(fontSize: 25, color: Colors.black)),
        elevation: 0.0,
        backgroundColor: secondColor,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
            height: double.infinity,
            color: mainColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          'Kindly, please choose \ncancer type ☺️ ',
                          style: GoogleFonts.quintessential(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  cancerItem("1- Head Cancer ", () {}, context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                      "2- Nasopharynx Cancer (Neck Cancer) ", () {}, context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem("3- Soft Tissue Sarcoma ", () {}, context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem("4- Uterine Sarcoma ", () {}, context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem("5- Recurrent Or Metastatic Brist Cancer ", () {},
                      context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem("6- Invasive Nonmetastatic Breast Cancer ", () {},
                      context),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem("7- Rare Cancer ", () {}, context),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget cancerItem(String name, VoidCallback Pressed, context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(100, 76, 61, 109),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .08,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            name,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
