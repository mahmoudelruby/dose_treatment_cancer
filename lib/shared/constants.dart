import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/modules/dose_page/dose_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backGroundColor = const Color(0xFFFFF8EC);

Color mainColor = const Color(0xFFA181B9);

Color secondColor = const Color(0xFF583D85);

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
              fontSize: 16,
              color: Color(0xff040541),
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          onTap: () {
            print("after $area");
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
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        children: createTiles(element, context)));
  }
  return expansionTiles;
}

double area = 0;
double weight = 0;
