import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UterineSarcomaScreen extends StatelessWidget {
  const UterineSarcomaScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.pacifico(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: secondColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ExpansionTile(
              title: Text(
                "LEVEL A",
              ),
              children: [
                ListTile(
                  title: Text("One"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("two"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("three"),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "LEVEL B",
              ),
              children: [
                ListTile(
                  title: Text("One"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("two"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("three"),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "LEVEL C",
              ),
              children: [
                ListTile(
                  title: Text("One"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("two"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("three"),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
