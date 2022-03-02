import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeckCancer extends StatefulWidget {
  const NeckCancer({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NeckCancer> createState() => _NeckCancerState();
}

class _NeckCancerState extends State<NeckCancer> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  DataModel neckCancerModel = DataModel(
    area: area,
    cancerName: "Nasopharynx Cancer (Neck Cancer)",
    details: <DetailsModel>[
      DetailsModel(
        protocolName: "Chemoradiation Followed by Adjuvant Chemotherapy",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "* Cisplatin + radiotherapy + cisplatin + 5FU",
            regimenDetails:
            "*Cycles 1 - 3 \nDay 1: Cisplatin ${(100/area).toStringAsPrecision(3)} mg IV; plus radiotherapy."
                "\nRepeat cycle every 3 weeks; followed by Cycles"
                " 4-6\nDays 1: Cisplatin ${(80/area).toStringAsPrecision(3)} mg IV over 1 hour ,plus "
                "\nDays 1-4 : 5-FU ${(1000/area).toStringAsPrecision(3)} mg continuous IV infusion daily. "
                "\nRepeat cycle every 4 weeks for 3 cycles.",
          ),
          RegimenModel(
            regimenName:
            "* Carboplatin + Radiotherapy + Carboplatin + 5FU (Category 2B)",
            regimenDetails:
            "Cycles 1 - 3 \nDay 1: Carboplatin AUG 6mg-min/mL IV over 1 hour; "
                "\nCycles 4-6 \nDay1:CarboplatinAUC 5mg-min/mL IV over 1 hour "
                "\n Days 1 - 4 : 5-FU ${(1000/area).toStringAsPrecision(3)} mg/day continuous IV infusion over 24 hours. "
                "\nRepeat cycle every 3 weeks for 2 cycles.",
          ),
          RegimenModel(
            regimenName:
            "* Cisplatin + Radiotherapy without adjuvant Chemotherapy (Category 2B)",
            regimenDetails: "Cisplatin ${(40/area).toStringAsPrecision(3)} mg weekly for up to 7 weeks,",
          ),
        ],
      ),
      DetailsModel(
        protocolName: "Induction Chemotherapy /Sequential Chemotherapy ",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName:
            "* Docetaxel + Cisplatin + 5-FU (Category 1 if induction is chosen)",
            regimenDetails: "Day 1: Docetaxel ${(70/area).toStringAsPrecision(3)} mg IV over 1 hour "
                "and cisplatin ${(75/area).toStringAsPrecision(3)} mg IV over 3 hours; followed by "
                "\nDays1-4:5-FU ${(1000/area).toStringAsPrecision(3)} mg/day continuous IV infusion for 4 days. "
                "\n. Repeat every week for 3 cycles; followed by Cisplatin ${(100/area).toStringAsPrecision(3)} mg; plus"
                " \nRadiotherapy: 5 daily fractions of 1.8 or 2Gy/day (total dose of 68.4Gy) Repeat every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "* Docetaxel + Cisplatin (Category 2B)",
            regimenDetails: "Day 1: Docetaxel ${(75/area).toStringAsPrecision(3)} mg IV + "
                "Cisplatin ${(75/area).toStringAsPrecision(3)} mg IV every 3 weeks for two cycles, followed by "
                "Cisplatin ${(40/area).toStringAsPrecision(3)} mg IV weekly.",
          ),
          RegimenModel(
            regimenName: "* Cisplatin + 5FU25",
            regimenDetails: "Day 1: Cisplatin ${(100/area).toStringAsPrecision(3)} mg/day lV. "
                "\nDays 1 - 4 : 5-FU ${(1000/area).toStringAsPrecision(3)} mg/day continuous IV infusion for 4 days.",
          ),
        ],
      ),
      DetailsModel(
        protocolName:
        "First-line combination therapy for unresectable or metastatic disease",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName:
            "* Cisplatin or Carboplatin + 5FU + Cetuximab (Category 1) (Nonnasopharyngeal)",
            regimenDetails:
            "Day 1: Cisplatin ${(100/area).toStringAsPrecision(3)} mg IV or Carboplatin AUG 5 mg-min/mL 1 hour IV infusion, plus "
                "\nDay 1 : Cetuximab ${(400/area).toStringAsPrecision(3)} mg IV over 2 hours (initial dose),followed by "
                "${(250/area).toStringAsPrecision(3)} mg IV over 1 hour once weekly"
                " \nDays 1 - 4 : 5-FU ${(1000/area).toStringAsPrecision(3)} mg/day continuous IV infusion for 4 days."
                " \nRepeat cycle every 3 weeks for a maximum of 6 cycles.",
          ),
          RegimenModel(
            regimenName: "* Cisplatin or Carboplatin + Docetaxel",
            regimenDetails:
            "Day 1: Docetaxel ${(75/area).toStringAsPrecision(3)} mg IV over 1 hour; followed immediately by"
                " Cisplatin ${(75/area).toStringAsPrecision(3)} mg IV."
                "\nOR\nDay 1: Docetaxel ${(65/area).toStringAsPrecision(3)} mg IV over 1 hour;"
                " followed immediately by "
                "Carboplatin AUG 6mg-min/mL IV."
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "* Cisplatin or Carboplatin + Paclitaxel",
            regimenDetails: "Day 1: Cisplatin ${(75/area).toStringAsPrecision(3)} mg/day IV + "
                "Paclitaxel ${(175/area).toStringAsPrecision(3)} mg IV over 3 hours."
                "\nOR\nDay 1: Carboplatin AUC 6mg-min/mL IV +"
                " Paclitaxel ${(200/area).toStringAsPrecision(3)} mg IV over 3 hours."
                "\nRepeat cycle every 3 weeks for a minimum of 6 cycles.",
          ),
          RegimenModel(
            regimenName: "* Cisplatin + Cetuximab",
            regimenDetails:
            "Day 1: Cetuximab ${(200/area).toStringAsPrecision(3)} mg over 120 minutes for 1 cycle,"
                " then Cetuximab ${(125/area).toStringAsPrecision(3)} mg/week IV over 60 minutes for subsequent cycles."
                "\nRepeat once weekly, plus"
                "\nDay 1: Cisplatin ${(100/area).toStringAsPrecision(3)} mg IV."
                "\nRepeat every 4 weeks.",
          ),
        ],
      ),
      DetailsModel(
        protocolName:
        "First line single agent for unresectable or metastatic disease with no surgery",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "* Cisplatin",
            regimenDetails:
            "Day 1: Cisplatin ${(100/area).toStringAsPrecision(3)} mg IV over 15-20 minutes."
                " \nRepeat every 3-4 weeks.",
          ),
          RegimenModel(
            regimenName: "* Carboplatin",
            regimenDetails: "Day 1: ${(25/area).toStringAsPrecision(3)} mg daily.",
          ),
          RegimenModel(
            regimenName: "* Paclitaxel",
            regimenDetails:
            "Day 1: Paclitaxel ${(80/area).toStringAsPrecision(3)} mg IV over 1 hour. \nRepeat every 6 weeks.",
          ),
          RegimenModel(
            regimenName: "* Docetaxel",
            regimenDetails:
            "Day 1: Docetaxel ${(40/area).toStringAsPrecision(3)}-${(100/area).toStringAsPrecision(3)} mg IV over 1 hour. \nRepeat every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "* 5-FU",
            regimenDetails:
            "Days 1-4: 5-FU ${(1000/area).toStringAsPrecision(3)} mg/day continuous IV infusion for 4 days. \nRepeat every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "* Methotrexate",
            regimenDetails:
            "${(40/area).toStringAsPrecision(3)} mg IV weekly, with progressive increase to ${(60/area).toStringAsPrecision(3)} mg, if tolerated.",
          ),
        ],
      ),
      DetailsModel(
        protocolName: "Second-Line Therapy or Subsequent Therapy Options",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "* Afatinib (Category 2B)",
            regimenDetails:
            "Day 1: Afatinib 40 mg orally daily until disease progression or unacceptable toxicity.",
          ),
          RegimenModel(
            regimenName: "* Pembrolizumab (Category 2B)",
            regimenDetails:
            "Day 1: Pembrolizumab 10mg/kg IV. \nRepeat cycle every 2 weeks.",
          ),
          RegimenModel(
            regimenName: "* Nivolumab (Category 1)",
            regimenDetails:
            "Day 1: Nivolumab ${(3/weight).toStringAsPrecision(3)} IV. \nRepeat cycle every 2 weeks.",
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
          children: createPageExpansionTiles(
            context,
            neckCancerModel,
          ),
        ),
      ),
    );
  }
}
