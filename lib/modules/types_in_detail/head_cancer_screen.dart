import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadCancer extends StatefulWidget {
  const HeadCancer({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HeadCancer> createState() => _HeadCancerState();
}

class _HeadCancerState extends State<HeadCancer> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  DataModel headCancerModel = DataModel(
    area: area,
    cancerName: "Head Cancer",
    details: <DetailsModel>[
      DetailsModel(
        protocolName: "Primary systemic therapy + Concurrent radiotherapy",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "High dose Cisplatin",
            regimenDetails:
                "Days 1, 22, and 43: Cisplatin ${(100 / area).toStringAsPrecision(3)} mg IV",
          ),
          RegimenModel(
            regimenName: "cetuxiamb",
            regimenDetails:
                "Day 1: Cetuximab ${400 / area} mg loading dose over 2 hours, 1 week before radiotherapy."
                " \nDay 7: with radiotherapy cetuximab ${250 / area} mg. \n7 week repeated.",
          ),
          RegimenModel(
            regimenName: "Carboplatin + infusional 5-FU (Category 1)",
            regimenDetails:
                "Days 1-4: 5-FU ${600 / area} mg/day as continuous IV infusion for 4 days + "
                "carboplatin ${70 / area}}/day IV bolus. \nRepeat every 3 weeks for 3 cycles.",
          ),
          RegimenModel(
            regimenName: "5-FU + hydroxyurea",
            regimenDetails:
                "Day 1: Hydroxyurea 1,000mg orally every 12 hours (11 doses/cycle) +"
                " 5-FU ${800 / area}/day continuous IV infusion",
          ),
          RegimenModel(
            regimenName: "Cisplatin + paclitaxel",
            regimenDetails:
                "Day 1: Paclitaxel${30 / area} mg IV (every Monday), plus "
                "\nDay 2: Cisplatin ${20 / area} mg IV (every Tuesday).",
          ),
          RegimenModel(
            regimenName: "Cisplatin + infusional 5-FU",
            regimenDetails:
                "Day 1: Cisplatin ${60 / area} mg over 15 minutes, plus "
                "\n Days 1-5: 5-FU ${800 / area} mg/day by continuous infusion for 5 days",
          ),
          RegimenModel(
            regimenName: "Carboplatin + paclitaxel (Category 2B)",
            regimenDetails:
                "Day 1: Paclitaxel ${40 / area}-${45 / area} mg/week and carboplatin ${100 / area} mg/week",
          ),
          RegimenModel(
            regimenName: "Weekly cisplatin (Category 2B)",
            regimenDetails:
                "Day 1-28: Cisplatin 40 mg/mg2 IV over 30 minutes weekly "
                "\nOR\nDay 1-28: Cisplatin 40mg/mg2 IV weekly.",
          ),
        ],
      ),
      DetailsModel(
        protocolName: "Primary chemotherapy with postoperative chemoradiation",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName:
                "Cisplatin(Category 1 for high-risk non- radiotherapy-oropharyngeal cancers)",
            regimenDetails: "Day 1, 22, and 43: cisplatin ${100 / area} mg IV",
          ),
        ],
      ),
      DetailsModel(
        protocolName: "Induction Chemotherapy / Sequential Chemotherapy",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName:
                "Docetaxel + cisplatin + 5-FU (Category 1 if induction is chosen)",
            regimenDetails:
                "Day 1: Docetaxel ${75 / area} mg IV + cisplatin ${75 / area} mg IV, plus "
                "\nDays 1-5 : 5-FU ${750 / area} mg/day continuous IV.",
          ),
          RegimenModel(
            regimenName: "Paclitaxel + cisplatin + infusional 5FU27d",
            regimenDetails: "Day 1: Paclitaxel ${175 / area} mg over 3 hours, "
                "\nDay 2: Cisplatin ${100 / area} mg, plus "
                "\nDay 2-6 : 5-FU ${500 / area} mg/day continuous IV infusion for 5 days."
                "\nRepeat every 3 weeks for 3 cycles.",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: createPageExpansionTiles(context, headCancerModel),
        ),
      ),
    );
  }
}
