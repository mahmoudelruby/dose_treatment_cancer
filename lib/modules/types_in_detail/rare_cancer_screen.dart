import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RareCancerScreen extends StatefulWidget {
  const RareCancerScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RareCancerScreen> createState() => _RareCancerScreenState();
}

class _RareCancerScreenState extends State<RareCancerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.quintessential(
            fontSize: 30,
            color: backgroundColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        iconTheme:  IconThemeData(
          color: backgroundColor, //change your color here
        ),
        elevation: 0.0,
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ExpansionTile(
              title: Text(
                "Protocol Name",
              ),
              children: [
                ListTile(
                  title: Text("regimenName 1"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("regimenName 2"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("regimenName 3"),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Protocol Name",
              ),
              children: [
                ListTile(
                  title: Text("regimenName 1"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("regimenName 2"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("regimenName 3"),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Protocol Name",
              ),
              children: [
                ListTile(
                  title: Text("regimenName 1"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("regimenName 2"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("regimenName 3"),
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
