import 'package:dose_treatment_cancer/modules/types_in_detail/head_cancer_screen.dart';
import 'package:dose_treatment_cancer/modules/types_in_detail/invasive_nonmetastatic_breast_cancer_screen.dart';
import 'package:dose_treatment_cancer/modules/types_in_detail/metastatic_breast_cancer_screen.dart';
import 'package:dose_treatment_cancer/modules/types_in_detail/neck_cancer_screen.dart';
import 'package:dose_treatment_cancer/modules/types_in_detail/rare_cancer_screen.dart';
import 'package:dose_treatment_cancer/modules/types_in_detail/soft_tissue_cancer_screen.dart';
import 'package:dose_treatment_cancer/modules/types_in_detail/uterine_sarcoma_cancer_screen.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancerTypesPage extends StatelessWidget {
  const CancerTypesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Cancer Types",
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
      body: SafeArea(
        child: Container(
            height: double.infinity,
            color: backgroundColor,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,),
                    child: Text(
                      'Kindly, please choose \ncancer type ️ ',
                      style: GoogleFonts.quintessential(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  cancerItem(
                      "1- Head Cancer",
                      const HeadCancer(
                        title: "Head Cancer",
                      ),
                      babyBlue,
                      Colors.black,
                    context,),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                    "2- Nasopharynx Cancer (Neck Cancer)",
                    const NeckCancer(
                      title: 'Nasopharynx Cancer',
                    ),
                    tileBackground,
                    backgroundColor,
                    context,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                    "3- Soft Tissue Sarcoma ",
                    const SoftTissueScreen(
                      title: 'Soft Tissue Sarcoma',
                    ),
                    babyBlue,
                    Colors.black,
                    context,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                    "4- Uterine Sarcoma",
                    const UterineSarcomaScreen(
                      title: 'Uterine Sarcoma',
                    ),
                    tileBackground,
                    backgroundColor,
                    context,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                    "5- Recurrent Or Metastatic Breast Cancer",
                    const MetastaticBreastCancerScreen(
                      title: 'MetastaticBreastCancerScreen',
                    ),
                    babyBlue,
                    Colors.black,
                    context,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                    "6- Invasive NonMetastatic Breast Cancer ",
                    const InvasiveNonMetastaticBreastCancerScreen(
                      title: 'Invasive NonMetastatic Breast Cancer',
                    ),
                    tileBackground,
                    backgroundColor,
                    context,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cancerItem(
                    "7- Rare Cancer ",
                    const RareCancerScreen(
                      title: 'Rare Cancer',
                    ),
                    babyBlue,
                    Colors.black,
                    context,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget cancerItem(
    String name,
    Widget route,
    Color background,
    Color textColor,
    context,

  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:  BoxDecoration(
          color:background,
          borderRadius: const BorderRadius.all(
            Radius.circular(45.0),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(100, 76, 61, 109),
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        width: double.infinity,
        height: 65,
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => route));
          },

          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0,),
            child: Text(
              name,
              style: GoogleFonts.quintessential(
                fontSize: 20,
                color: textColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
