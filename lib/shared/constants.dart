import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/modules/dose_page/dose_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backgroundColor = const Color(0xFFFFF8EC);

Color mainColor = const Color(0xFFA181B9);

Color secondColor = const Color(0xFF583D85);

Color babyBlue = const Color(0xFFBFD1DF);

Color tileBackground = const Color.fromARGB(100, 76, 61, 109);

void navigateTo(context, Widget route) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return route;
  }));
}

List<Widget> createTiles(DetailsModel model, context) {
  var tiles = <ListTile>[];
  for (var element in model.regimens) {
    tiles.add(
      ListTile(
          title: Text(
            element.regimenName,
            style: GoogleFonts.quintessential(
              fontSize: 20,
              color: const Color(0xff040541),
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          onTap: () {
            xclProtocolName = model.protocolName ;
            xclRegimenName = element.regimenName ;
            xclRegimenDetails = element.regimenDetails ;
            navigateTo(
                context,
                DosePage(
                  regimenName: element.regimenName,
                  prescription: element.regimenDetails,
                ));
          }),
    );
  }
  return tiles;
}

List<Widget> createPageExpansionTiles(context, DataModel dataModel) {
  var expansionTiles = <ExpansionTile>[];
  for (var element in dataModel.details) {
    expansionTiles.add(ExpansionTile(
        title: Text(
          element.protocolName,
          style: GoogleFonts.quintessential(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        children: createTiles(element, context)));
  }
  return expansionTiles;
}

showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor,
      content: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      elevation: 10.0,
    ),
  );
}

double area = 0;
double weight = 0;

String xclName = "";

int xclAge = 0;

String xclGender = "Female";
double xclHeight = 0;

double xclWeight = 0;

double xclArea = 0;

double xclGrade = 1;

String xclCancerType = "";
String xclProtocolName = "";
String xclRegimenName = "";
String xclRegimenDetails = "";
