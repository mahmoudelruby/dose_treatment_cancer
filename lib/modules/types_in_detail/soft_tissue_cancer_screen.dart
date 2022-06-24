import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SoftTissueScreen extends StatefulWidget {
  const SoftTissueScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SoftTissueScreen> createState() => _SoftTissueScreenState();
}

class _SoftTissueScreenState extends State<SoftTissueScreen> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  DataModel softTissueSarcomaModel = DataModel(
    area: area,
    cancerName: "Soft Tissue Sarcoma",
    details: <DetailsModel>[
      DetailsModel(
        protocolName: "Combination Regimens",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "Doxorubicin + Dacarbazine (AD)",
            regimenDetails: "Days 1 - 4: Doxorubicin ${60 / area} mg "
                "+ Dacarbazine (${750 / area} mg as a continuous IV infusion over 96 hours."
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin + Ifosfamide+ Mesna (AIM) ",
            regimenDetails:
            "Days 1 and 2: Doxorubicin ${30 / area} mg/day IV +Ifosfamide ${3750 / area} mg/day IV +"
                " Mesna ${750 / area} mg IV immediately preceding and then 4 and 8 hours after Ifosfamide administration. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Mesna+ Doxorubicin+ Ifosfamide+ Dacarbazine (MAID) ",
            regimenDetails: "Days 1 - 3: Doxorubicin ${20 / area} mg/day "
                "+ Ifosfamide ${2500 / area} mg/day "
                "+ Dacarbazine ${300 / area} mg/day as continuous IV infusion over 72 hours, plus "
                "\nMesna ${2500 / area} mg/day IV for 84 to 96 hours. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Ifosfamide + Epirubicin + Mesna ",
            regimenDetails: "Days 1 and 2: Epirubicin ${60 / area} mg/day IV. "
                "\nDays 1-5: Ifosfamide ${(1.8 * 1000) / area} mg/day IV over 1 hour "
                "+ Mesna at 20% of the Ifosfamide dose IV immediately preceding "
                "and then 4 and 8 hours after Ifosfamide administration. "
                "\nRepeat cycle every 3weeks for 5 cycles.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Docetaxel ",
            regimenDetails: "Days 1 and 8: Gemcitabine ${900 / area} mg IV."
                " \nDay 8: Docetaxel ${100 / area} mg IV. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Vinorelbine ",
            regimenDetails:
            "Days 1 and 8: Vinorelbine ${25 / area} mg IV over 10 minutes "
                "+ Gemcitabine ${800 / area} mg IV over 90 minutes. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Dacarbazine ",
            regimenDetails:
            "Day 1: Gemcitabine ${1800 / area} mg IV + Dacarbazine ${500 / area} mg IV."
                " \nRepeat cycle ever 2 weeks for a total of 12 cycles; "
                "\nContinuation of treatment after 24 weeks was allowed at investigator discretion.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin + Olaratumab ",
            regimenDetails: "Day 1: Doxorubicin ${75 / area} mg IV. "
                "\nDays 1 and 8: Olaratumab 15 mg/kg IV."
                " \nRepeat cycle every 3 weeks for up to 8 cycles.",
          ),
        ],
      ),
      DetailsModel(
        protocolName: "Single Agents",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "Doxorubicin ",
            regimenDetails:
            "Doxorubicin ${60 / area}-${75 / area} mg IV every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Ifosfamide ",
            regimenDetails:
            "Ifosfamide ${2000 / area}-${3000 / area} mg/day IV for 3 to 4 days "
                "+ Mesna at 20% of the Ifosfamide dose IV immediately preceding"
                " and then 4 and 8 hours after ifosfamide administration every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Epirubicin ",
            regimenDetails: "Epirubicin ${160 / area} mg IV every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine",
            regimenDetails:
            "Days 1 and 8: Gemcitabine ${1200 / area} mg IV over 90 to 120 minutes. \nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Dacarbazine",
            regimenDetails:
            "Dacarbazine ${250 / area} mg/day IV for 5 days every 3 weeks. "
                "\nOR \nDacarbazine ${800 / area}-${1000 / area} mg IV every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Liposomal Doxorubicin ",
            regimenDetails:
            "Liposomal doxorubicin ${30 / area}-${50 / area} mg IV every 4 weeks.",
          ),
          RegimenModel(
            regimenName: "Temozolomide ",
            regimenDetails:
            "Day 1: Temozolomide ${200 / area} mg oral bolus dose once followed by "
                "Temozolomide ${90 / area} mg after 12 hours."
                " \nDays 2 - 5: Temozolomide ${90 / area} mg orally twice daily."
                " \nRepeat cycle every 4 weeks.",
          ),
          RegimenModel(
            regimenName: "Vinorelbine",
            regimenDetails:
            "Vinorelbine ${30 / area} mg IV weekly for 6 weeks during an 8-week interval.",
          ),
          RegimenModel(
            regimenName: "Eribulin ",
            regimenDetails:
            "Days 1 and 8: Eribulin methylate ${1.4 / area} mg IV."
                " \nRepeat every 3 weeks until disease progression or unacceptable toxicity.",
          ),
          RegimenModel(
            regimenName: "Trabectedin ",
            regimenDetails:
            "Trabectedin ${1.5 / area} mg as a 24-hour continuous IV infusion every 3 weeks.",
          ),
        ],
      ),
    ],
  );
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
          children: createPageExpansionTiles(context, softTissueSarcomaModel),
        ),
      ),
    );
  }

}
