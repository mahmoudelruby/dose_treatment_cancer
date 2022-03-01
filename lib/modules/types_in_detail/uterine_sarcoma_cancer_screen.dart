import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UterineSarcomaScreen extends StatefulWidget {
  const UterineSarcomaScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<UterineSarcomaScreen> createState() => _UterineSarcomaScreenState();
}

class _UterineSarcomaScreenState extends State<UterineSarcomaScreen> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  DataModel uterineSarcomaModel = DataModel(
    area: area,
    cancerName: "Uterine Sarcoma",
    details: <DetailsModel>[
      DetailsModel(
        protocolName:
        "Adjuvant Chemotherapy for High-Risk Disease or primary Therapy for Initially Unresectable Disease",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "Docetaxel + Gemcitabine ",
            regimenDetails:
            "Days 1 - 8: Gemcitabine ${900 / area} mg IV at a rate of ${10 / area} mg/minute, "
                "followed by: \nDay 8: Docetaxel ${75 / area}-${100 / area} mg IV over 60 minutes. "
                "\nRepeat cycle every 3 weeks for 4-6 cycles."
                " \nOR \nDays 1 , 8: Gemcitabine ${675 / area} mg "
                "(if prior pelvic radiation) IV at a rate of ${10 / area} mg/minute,"
                " followed by: \nDay 8: Docetaxel ${75 / area} mg IV over 60 minutes."
                " \nRepeat cycle every 3 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin",
            regimenDetails:
            "Day 1: Doxorubicin ${60 / area}-${75 / area} mg IV push."
                " \nRepeat cycle every 3 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Dacarbazine ",
            regimenDetails:
            "Days 1-5: Dacarbazine ${250 / area} mg IV over 30 minutes."
                "\n Repeat cycle every 3 weeks for 4-6 cycles."
                "\nOR\nDays 1-5: Dacarbazine ${187 / area} mg (if prior pelvic radiation) IV over 30  minutes. "
                "\nRepeat cycle every 3 weeks for 4-6 cycles."
                "\nOR\nDay 1: Dacarbazine ${1000 / area} mg IV over 60 minutes."
                "\nRepeat cycle every 3 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin + Decarbazine ",
            regimenDetails:
            "Days 1-4: Doxorubicin ${15 / area} mg IV continuous infusion over 24 hours daily."
                " \nDays 1 - 4: Dacarbazine ${187.5 / area}-${250 / area} mg IV "
                "continuous infusion over 24 hours daily. "
                "\nRepeat cycle every 3 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin + Ifosfamide ",
            regimenDetails: "Days 1- 3: Doxorubicin ${25 / area} mg IV push."
                " \nDays 1 - 3: Ifosfamide ${3000 / area} mg IV continuous infusion over 24 hours daily."
                " \nDays 1 - 3: Mesna ${3000 / area} mg IV "
                "continuous infusion over 24 hours concurrently with "
                "Ifosfamide (additional Mesna may be administered following "
                "the completion of Ifosfamide per institutional standard). "
                "\nRepeat cycle every 3weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Epirubicin ",
            regimenDetails: "Day 1: Epirubicin ${75 / area} mg IV push. "
                "\nRepeat cycle every 3 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine ",
            regimenDetails:
            "Days 1, 8, 15: Gemcitabine ${1800 / area} mg IV over 30 minutes."
                " \nRepeat cycle every 4 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Dacarbazine ",
            regimenDetails:
            "Day 1: Gemcitabine ${1800 / area} mg IV at a rate of ${10 / area} mg/minute."
                " \nDay 1: Dacarbazine ${500 / area} mg IV over 60 minutes."
                " \nRepeat cycle every 2 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Vinorelbine ",
            regimenDetails:
            "Days 1, 8: Vinorelbine ${25 / area} mg IV over 5-10 minutes."
                " \nDays 1, 8: Gemcitabine ${800 / area} mg IV at a rate of ${10 / area} mg/minute."
                " \nRepeat cycle every 3 weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Ifosfamide ",
            regimenDetails:
            "Days 1-5: Ifosfamide ${1500 / area} mg IV over 3 hours. "
                "\nDays 1-5: Mesna ${300 / area} mg IV over 15 minutes before Ifosfamide, "
                "then at 4 and 8 hours from the start of each Ifosfamide dose."
                " \nRepeat cycle every 3 weeks for 4-6 cycles. "
                "\nOR \nDays 1-3: Ifosfamide ${3000 / area} mg IV continuous infusion over 24 hours daily."
                " \nDays 1-3: Mesna ${3000 / area} mg IV continuous infusion over 24 hours concurrently with Ifosfamide (addition Mesna may be administered following the completion of Ifosfamide per institutional standard). \nRepeat cycle every 3weeks for 4-6 cycles.",
          ),
          RegimenModel(
            regimenName: "Liposomal Doxorubicin ",
            regimenDetails: "Day 1: Liposomal Doxorubicin ${50 / area} 50 mg IV."
                " \nRepeat cycle every 4 Weeks for 4-6 cycles.",
          ),
        ],
      ),
      DetailsModel(
        protocolName: "Systemic Therapy for Recurrent or Metastatic Disease",
        regimens: <RegimenModel>[
          RegimenModel(
            regimenName: "Docetaxel + Gemcitabine",
            regimenDetails:
            "Days 1, 8: Gemcitabine ${900 / area}900 mg IV at a rate of ${10 / area} mg/minute, followed by: "
                "\nDay 8: Docetaxel ${75 / area}-${100 / area} mg IV over 60 minutes. "
                "\nRepeat cycle every 3 weeks."
                " \nOR \nDays 1, 8: Gemcitabine ${675 / area} mg (if prior pelvic radiation) IV "
                "at a rate of ${10 / area} 10 mg/minute, followed by: "
                "\nDay 8: Docetaxel ${75 / area} mg IV over 60 minutes. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin ",
            regimenDetails:
            "Day 1: Doxorubicin ${60 / area} - ${75 / area} mg IV push."
                " \nRepeat cycle every 3 weeks until disease progression",
          ),
          RegimenModel(
            regimenName: "Dacarbazine ",
            regimenDetails:
            "Days 1-5: Dacarbazine ${250 / area} mg IV over 30 minutes. "
                "\nRepeat cycle every 3 weeks."
                " \nOR \nDays 1-5: Dacarbazine ${187 / area} mg (if prior pelvic radiation) IV over 30 minutes."
                " \nRepeat cycle every 3 weeks. \nOR \nDay 1: Dacarbazine ${1800 / area} mg IV over 60 minutes. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin + Decarbazine ",
            regimenDetails:
            "Days 1-4: Doxorubicin ${15 / area} mg IV continuous infusion over 24 hours daily."
                " \nDays 1-4: Dacarbazine ${187.5 / area}-${250 / area} mg IV continuous infusion over 24 hours daily. "
                "\nRepeat cycle every 3 weeks until disease progression.",
          ),
          RegimenModel(
            regimenName: "Doxorubicin + Ifosfamide ",
            regimenDetails: "Days 1-3: Doxorubicin ${25 / area} mg IV push. "
                "\nDays 1-3: Ifosfamide ${3000 / area} mg IV continuous infusion over 24 hours daily. "
                "\nDays 1-3: Mesna ${3000 / area} mg IV continuous infusion over 24 hours concurrently with"
                " Ifosfamide (additional Mesna may be administered following the completion of Ifosfamide per institutional standard)."
                " \nRepeat cycle every 3 weeks until disease progression",
          ),
          RegimenModel(
            regimenName: "Epirubicin ",
            regimenDetails: "Day 1: Epirubicin ${75 / area} mg push. "
                "\nRepeat cycle every 3 weeks until disease progression.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine ",
            regimenDetails:
            "Days 1, 8, 15: Gemcitabine ${1000 / area} mg IV over 30 minutes. "
                "\nRepeat cycle every 4 weeks.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Dacarbazine ",
            regimenDetails:
            "Day 1: Gemcitabine ${1800 / area} mg IV at a rate of ${10 / area} mg/minute. "
                "\nDay 1: Dacarbazine ${500 / area} mg IV over 60 minutes."
                " \nRepeat cycle every 2 weeks.",
          ),
          RegimenModel(
            regimenName: "Gemcitabine + Vinorelbine",
            regimenDetails:
            "Days 1, 8: Vinorelbine ${25 / area} mg IV over 5-10 minutes."
                "Days 1,8: Gemcitabine ${800 / area} mg IV at a rate of ${10 / area} mg/minute."
                " \nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Ifosfamide ",
            regimenDetails:
            "Days 1-5: Ifosfamide ${1500 / area} mg IV over 3 hours. "
                "\nDays 1-5: Mesna ${300 / area} mg IV over 15 minutes before Ifosfamide, "
                "then at 4 and 8 hours from the start of each Ifosfamide dose. "
                "\nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Liposomal Doxorubicin",
            regimenDetails: "Day 1: Liposomal Doxorubicin ${50 / area} mg IV. "
                "\nRepeat cycle every 4 weeks.",
          ),
          RegimenModel(
            regimenName: "Eribulin (Category 2B) ",
            regimenDetails: "Days 1, 8: Eribulin ${1.4 / area} mg IV push."
                " \nRepeat cycle every 3 weeks.",
          ),
          RegimenModel(
            regimenName: "Temozolomide ",
            regimenDetails:
            "Days 1-5: Temozolomide ${150 / area}-${300 / area} mg orally."
                " \nRepeat cycle every 4 weeks."
                " \nOR \nDays 1-42: Temozolomide ${75 / area}-${100 / area} mg orally. "
                "\nRepeat cycle every 56 days.",
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
          children: createPageExpansionTiles(context, uterineSarcomaModel),
        ),
      ),
    );
  }
}
