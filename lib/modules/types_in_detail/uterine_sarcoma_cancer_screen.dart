import 'package:dose_treatment_cancer/model/data.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UterineSarcomaScreen extends StatelessWidget {
  const UterineSarcomaScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text(
          title,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: createPageExpansionTiles(context, uterineSarcomaModel),
        ),
      ),
    );
  }
}
