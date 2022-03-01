import 'package:dose_treatment_cancer/modules/home_page/home_page.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DosePage extends StatelessWidget {
  const DosePage(
      {Key? key, required this.regimenName, required this.prescription})
      : super(key: key);
  final String regimenName;
  final String prescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text(
          "Dose",
          style: GoogleFonts.quintessential(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.0,
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
                "Details",
                style: GoogleFonts.quintessential(
                  fontSize: 30,
                  color: Colors.blue,
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
              Row(children: [
                SizedBox(width: MediaQuery.of(context).size.width*.60,),
                InkWell(
                  onTap: (){navigateTo(context, HomeScreen());},
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
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],),
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
