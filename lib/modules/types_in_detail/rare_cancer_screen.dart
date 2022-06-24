import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/data_model.dart';

class RareCancerScreen extends StatefulWidget {
  const RareCancerScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RareCancerScreen> createState() => _RareCancerScreenState();
}
DataModel rareCancerModel = DataModel(
  area: area,
  cancerName: "Rare Cancer",
  details: <DetailsModel>[
    DetailsModel(
      protocolName: "First-line Combination Chemotherapy Regimens for Thymoma",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: " CAP (Cyclophosphamide/Doxorubicin/Cisplatin)",
          regimenDetails:
          "Day 1: Cyclophosphamide ${(500/area).toStringAsPrecision(3)}  IV over 30 minutes"
              " Day 1: Doxorubicin ${(50/area).toStringAsPrecision(3)}IV push"
              "Day 1: Cisplatin ${(50/area).toStringAsPrecision(3)} IV over 1 hour."
              "Repeat cycle every 3 weeks for up to 8 cycles.",
        ),

      ],
    ),
    DetailsModel(
      protocolName: "First-line Combination Chemotherapy Regimens for Thymic Carcinoma",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
          "Carboplatin + Paclitaxel Premedication is required.",
          regimenDetails: "Day 1: Paclitaxel ${(200/area).toStringAsPrecision(3)} IV over 3 hours,"
              " followed by: Day 1: Carboplatin AUC 6 IV over 30 minutes."
              "Repeat cycle every 3 weeks for up to 6 cycles. ",
        ),
      ],
    ),
    DetailsModel(protocolName: 'Second-Line Systemic Therapy for Thymoma',
        regimens: <RegimenModel>[
          RegimenModel(regimenName: 'Etoposide',
              regimenDetails: 'Days 1-21: Etoposide ${(50/area).toStringAsPrecision(3)} norally once daily. '
                  'Repeat cycle every 4 or 5 weeks. '
                  'OR Days 1-3: Etoposide ${(120/area).toStringAsPrecision(3)} IV overhour daily.'
                  'Repeat cycle every 3 weeks.'),
          RegimenModel(regimenName:'Everolimus' ,
          regimenDetails:'Days 1-28: Everolimus 10mg orally once daily.'
              'Repeat cycle every 4 weeks.' ),
          RegimenModel(regimenName: 'Fluorouracil (continuous infusion)+ Leucovorin' ,
              regimenDetails: 'Day 1: Leucovorin ${(400/area).toStringAsPrecision(3)} IV over 2 hours, '
                  'followed by: Day 1: Fluorouracil ${(400/area).toStringAsPrecision(3)} IV push, '
                  'followed by: Days 1-2Fluorouracil 1- ${(200/area).toStringAsPrecision(3)} IV continuous infusion daily'
                  ' (2- ${(400/area).toStringAsPrecision(3)} IV over 46-48 hours).'
                  'Repeat cycle every 2 weeks. '),
          RegimenModel(regimenName: 'Gemcitabine',
              regimenDetails: 'Days 1,8: Gemcitabine ${(1000/area).toStringAsPrecision(3)} IV over 30 minutes.'
                  ' Repeat cycle every 3 weeks.'),
          RegimenModel(regimenName: 'Gemcitabine + Capecitabine',
              regimenDetails: ' Days 1-14: Capecitabine ${(650/area).toStringAsPrecision(3)} orally twice daily '
                  'Days 1,8: Gemcitabine ${(1000/area).toStringAsPrecision(3)} IV over 30 minutes.'
                  'Repeat cycle every 3 weeks'),
          RegimenModel(regimenName: 'Ifosfamide',
              regimenDetails: 'Days 1-5: Ifosfamide ${(1500/area).toStringAsPrecision(3)} IV over 3 hours daily '
                  'Days 1-5: Mesna ${(300/area).toStringAsPrecision(3)} IV over 15 minutes 3 times daily (one dose before Ifosfamide,'
                  ' then at 4 and 8 hours from the start of each Ifosfamide dose).'
                  'Repeat cycle every 3 weeks. '),
          RegimenModel(regimenName: 'Octreotide and Octreotide LAR',
              regimenDetails: 'Days 1-28: Octreotide Acetate 500mcg subcutaneous three times daily'
                  ' Once patient stabilized on subcutaenous Octreotide, '
                  'may change to: Day 1: Octreotide Acetate (LAR) 20-30mg IM.'
                  'Repeat cycle every 4 weeks.'),
          RegimenModel(regimenName: 'Paclitaxel Premedication is required.',
              regimenDetails: 'Days 1,8: Paclitaxel ${(80/area).toStringAsPrecision(3)} IV over 1 hour.'
                  'Repeat cycle every 3 weeks.'),
          RegimenModel(regimenName: 'Pemetrexed Premedication is required.',
              regimenDetails: 'Day 1: Pemetrexed ${(500/area).toStringAsPrecision(3)} IV over 10 minutes.'
                  'Repeat cycle every 3 weeks for 6 cycles. ')
        ])

  ],
);
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
        physics:const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: createPageExpansionTiles(context,rareCancerModel ),
        ),
      ),
    );
  }
}
