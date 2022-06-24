import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvasiveNonMetastaticBreastCancerScreen extends StatefulWidget {
  const InvasiveNonMetastaticBreastCancerScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<InvasiveNonMetastaticBreastCancerScreen> createState() => _InvasiveNonMetastaticBreastCancerScreenState();
}

class _InvasiveNonMetastaticBreastCancerScreenState extends State<InvasiveNonMetastaticBreastCancerScreen> {
 @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
 DataModel invasiveNonMetastaticBreastCancerModel = DataModel(
     area: area,
     cancerName: " invasive nonmetastatic breast cancer", details: <
     DetailsModel>[
   DetailsModel(protocolName: ' HER2-negative Disease ', regimens: <
       RegimenModel>[
     RegimenModel(
         regimenName: "Dose-dense AC followed by Paclitaxel (Category 1) ",
         regimenDetails: " Day 1: Doxorubicin ${600 / area} mg IV push "
             "Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes. Repeat cycle every 14 days for 4 cycles "
             "(all cycles are with myeloid growth factor support; refer to NCCN Guidelines for Myeloid Growth Factors  followed by: \n"
             "Day 1: Paclitaxel ${175 / area}  mg via 3-hour IV infusion. "
             "Repeat cycle every 14 days for 4 cycles. All cycles are with myeloid growth factor support."),
     RegimenModel(
         regimenName: "Dose-dense AC followed by weekly Paclitaxel (Category 1)",
         regimenDetails: "Day 1: Doxorubicin ${60 / area} mg IV push "
             "Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes."
             " Repeat cycle every 14 days for 4 cycles', followed by: "
             "\nDay 1: Paclitaxel ${800 / area} mg via 1-hour IV infusion weekly for 12 weeks."),
     RegimenModel(
         regimenName: "TC (Category 1) ",
         regimenDetails: "Day 1: Docetaxel ${75 / area} mg IV over 60 minutes "
             "Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes"
             "\n Repeat cycle every 21 days for 4 cycles"),
     RegimenModel(
         regimenName:
         'Capecitabine (if triple-negative breast cancer [TNBC] and residual disease after preoperative therapy '
             'with taxane-, alkylator-, and anthracycline-based chemotherapy. Category 1)',
         regimenDetails:
         'Days 1-14: Capecitabine ${1000 / area} mg orally twice daily every 21 days for 6-8 cycles'),
     RegimenModel(
         regimenName: "Dose-dense AC (Category 1)",
         regimenDetails:
         "Day 1: Doxorubicin ${60 / area} mg IV push Day 1: Cyclophosphamide ${600 / area} mg IV."
             " Repeat cycle every 14 days for 4 cycles."),
     RegimenModel(
         regimenName: 'AC followed by weekly Paclitaxel (Category 1)',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push '
             ' Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes.'
             ' Repeat cycle every 21 days for 4 cycles'
             'Day 1: Paclitaxel ${80 / area} mg by 1-hour IV infusion weekly for 12 weeks. '),
     RegimenModel(
         regimenName: "CMF (Category 1)",
         regimenDetails: 'Days 1-14: Cyclophosphamide ${100 / area} mg orally'
             'Days 1 and 8: Methotrexate ${40 / area} mg IV push Days 1 and 8: Fluorouracil ${600 / area} mg IV push.'
             ' Repeat cycle every 28 days for 6 cycles.'),
     RegimenModel(
         regimenName: 'AC (Category 2B)',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push'
             '\nDay 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes.'
             '\nRepeat cycle every 21 days for 4 cycles.'),
     RegimenModel(
         regimenName: 'AC followed by Docetaxel (Category 1)',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push'
             '\n Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes.'
             '\nRepeat cycle every 21 days for 4 cycles, followed by:'
             '\n Day 1: Docetaxel ${100 / area} mg IV over 60 minutes. '
             'Repeat cycle every 21 days for 4 cycles'),
     RegimenModel(
         regimenName: 'EC (Category 1)',
         regimenDetails: "Day 1: Epirubicin ${100 / area} mg IV push"
             "\n Day 1: Cyclophosphamide ${830 / area} mg IV over 30 minutes."
             "\n Repeat cycle every 21 days for 8 cycles"),
     RegimenModel(
         regimenName: "TAC (Category 1)",
         regimenDetails: 'Day 1: Docetaxel ${75 / area} mg IV over 60 minutes'
             '\n Day 1: Doxorubicin ${50 / area} mg IV push Day 1: Cyclophosphamide ${500 / area} mg IV over 30 minutes'
             '\n Repeat cycle every 21 days for 6 cycles.')
   ]),
   DetailsModel(protocolName: "HER2-positive Disease", regimens: <RegimenModel>[
     RegimenModel(
         regimenName: 'AC followed by Paclitaxel + Trastuzumab ',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push'
             '\n Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes.'
             '\nRepeat cycle every 21 days for 4 cycles, followed by:'
             '\nDay 1: Paclitaxel ${80 / area} mg via 1-hour IV infusion weekly for 12 weeks with:, '
             '\n Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes with first dose of paclitaxel,'
             ' \n then ${2 / weight} mg  IV over 30 minutes weekly to complete 1 year of trastuzumab therapy. '
             'As an trastuzumab ${6 / weight} mg IV over 30 minutes every 21 days'
             '\n may be used following the completion of paclitaxel, '
             'and given to complete 1 year of trastuzumab treatment.'),
     RegimenModel(
         regimenName: 'AC followed by Paclitaxel + Trastuzumab + Pertuzumab',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push'
             '\n Day 1: Cyclophosphamide ${600 / area} mg IV over 30  minutes.'
             ' Repeat cycle every 21 days for 4 cycles,'
             '\n followed by: '
             'Day 1: Pertuzumab 840mg IV over 60 minutes for cycle 1,'
             ' then 420mg IV over 30 minutes for cycles 2-4  '
             '\n Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes for cycle 1,'
             ' then ${6 / weight} mg IV over 30 minutes for cycles 2-4, '
             'followed by: Days 1, 8, and 15: Paclitaxel ${80 / area} mg IV over 60 minutes. '
             'Repeat cycle every 21 days for 4 cycles, followed by'
             ' Day 1: Trastuzumab ${6 / weight} mg  IV over 30 minutes '
             '\n Day 1: Pertuzumab 420 mg IV over 30 minutes.'
             ' Repeat cycle every 21 days to complete 1 year of trastuzumab and pertuzumab therapy'),
     RegimenModel(
         regimenName: 'Dose-dense AC followed by Paclitaxel + Trastuzumab ',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push'
             '\n Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes'
             'Repeat cycle every 14 days for 4 cycles, followed by:'
             '\n Day 1: Paclitaxel ${175 / area} mg via 3-hour IV infusion '
             'Repeat cycle every 14 days for 4 cycles , with: Day '
             ' \n 1- Trastuzumab ${4 / weight} mg IV over 90 minutes with first dose of paclitaxel, '
             '\n then ${2 / weight} mg IV over 30 minutes weekly to complete 1 year of trastuzumab therapy.'
             ' \n As an alternative, trastuzumab 6mg/kg IV over 30 minutes every 21 days may be used following'
             ' the completion of paclitaxel,'
             ' and given to complete 1 year of trastuzumab treatment '
             ' '),
     RegimenModel(
         regimenName: 'TCH + Pertuzumab',
         regimenDetails:
         'Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes for cycle 1, '
             'then ${6 / weight} IV over 30 minutes every 21 days for cycles 2-6'
             '\n Day 1: Pertuzumab 840mg IV over 60 minutes for cycle 1,'
             ' then 420 mg IV over 30 minutes every 21 days for cycles 2-6,'
             'followed by:'
             '\n Day 1: Docetaxel ${75 / area} IV over 60 minutes, followed by:'
             '\n Day 1: Carboplatin AUC 6 IV over 30 minutes.'
             ' Repeat cycle every 21 days for 6 cycles, followed by:'
             '\n Day 1: Trastuzumab ${6 / weight} mg IV over 30 minutes every 21 days to complete 1 year of trastuzumab therapy '
             '\n Day 1: Pertuzumab 420mg IV over 30 minutes every 21 days to complete 1 year of pertuzumab therapy.'
             ''),
     RegimenModel(
         regimenName: 'Docetaxel + Cyclophosphamide + trastuzumab ',
         regimenDetails: "Day 1: Docetaxel ${75 / area} mg IV over 60 minutes "
             "Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes. "
             "Repeat cycle every 21 days for 4 cycles,with:"
             "Day 1: Trastuzumab 4mg/kg IV over 90 minutes week 1, "
             "\n then ${2 / weight} mg IV over 30 minutes weekly for 11 weeks, "
             "\n then ${6 / weight} mg every 21 days to complete 1 year of  trastuzumab therapy."),
     RegimenModel(
         regimenName: 'AC followed by Docetaxel + Trastuzumab',
         regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push |'
             ' Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes. '
             'Repeat cycle every 21 days for 4 cycles, followed by: '
             '\nDay 1: Docetaxel ${100 / area} mg IV over 60 minutes. Repeat cycle every 21 days for 4 cycles, with: '
             '\n Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes week 1,'
             ' then ${2 / weight} mg IV weekly for 11 weeks, followed by:'
             '\n Day 1: Trastuzumab ${6 / weight} kg IV over 30 minutes beginning week 13'
             'Repeat cycle every 21 days to complete 1 year of trastuzumab therapy.'),
     RegimenModel(
         regimenName: 'Weekly Paclitaxel + Carboplatin',
         regimenDetails: 'Days 1, 8, 15: Paclitaxel ${80 / area} mg IV '
             '\n Day 1: Carboplatin AUC 6. '
             'Repeat cycle every 21 days to complete 1 year of trastuzumab therapy.'),
     RegimenModel(
         regimenName: 'Docetaxel + Carboplatin',
         regimenDetails: 'Day 1: Docetaxel ${75 / area} IV '
             'Day 1: Carboplatin AUC 6 Repeat cycle every 21 days for 6 cycles.')
   ])
 ]);
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
          children: createPageExpansionTiles(context, invasiveNonMetastaticBreastCancerModel),
        ),
      ),
    );
  }

}
