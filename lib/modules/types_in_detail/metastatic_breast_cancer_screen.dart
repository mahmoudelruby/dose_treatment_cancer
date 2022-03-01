import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetastaticBreastCancerScreen extends StatefulWidget {
  const MetastaticBreastCancerScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MetastaticBreastCancerScreen> createState() => _MetastaticBreastCancerScreenState();
}

class _MetastaticBreastCancerScreenState extends State<MetastaticBreastCancerScreen> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  DataModel recurrentOrMetastaticBreastCancerModel = DataModel(
      area: area,
      cancerName: 'recurrent or metastatic brist cancer', details: <
      DetailsModel>[
    DetailsModel(
        protocolName:
        'HER2-Positive and Postmenopausal or Premenopausal Receiving Ovarian Ablation or Suppression ',
        regimens: <RegimenModel>[
          RegimenModel(
              regimenName: 'Anastrozole + Lapatinib + Trastuzumab',
              regimenDetails: 'Days 1-28: Anastrozole 1mg orally once daily '
                  'Days 1-28: Lapatinib 1,000mg orally once daily cycled every 4 weeks, '
                  'with: Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes on week 1,'
                  'then ${2 / weight} mg IV over 30 minutes starting week 2 cycled weekly. '
                  'OR Days 1-28: Anastrozole 1mg orally once daily Days 1-28: Lapatinib 1,000mg orally once daily '
                  'cycled every 4 weeks,'
                  ' with: Day 1: Trastuzumab 8mg/kg IV over 90 minutes on cycle 1, '
                  'then ${6 / weight} mg IV over 30 minutes starting with cycle 2 cycled every 3 weeks '),
          RegimenModel(
              regimenName: 'Anastrozole + Trastuzumab',
              regimenDetails: 'Days 1-21: Anastrozole 1mg orally once daily '
                  'Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes on cycle 1, '
                  'then ${6 / weight} mg IV over 30 minutes starting with cycle 2.'
                  ' Repeat cycle every 3 weeks.'),
          RegimenModel(
              regimenName: 'Exemestane + Lapatinib + Trastuzumab',
              regimenDetails: 'Days 1-28: Exemestane 25mg orally once daily . '
                  '\n Days 1-28: Lapatinib 1,000mg orally once daily cycled every 4 weeks,'
                  ' with: Day 1: Trastuzumab ${4 / area} mg IV over 90 minutes on week 1, '
                  '\n then ${2 / area} mg IV over 30 minutes starting week 2 cycled weekly.'
                  ' \n OR Days 1-28: Exemestane 25mg orally once daily '
                  '\n Days 1-28: Lapatinib 1,000mg orally once daily cycled every 4 weeks, '
                  'with: Day 1: Trastuzumab 8mg/kg IV over 90 minutes on cycle 1, '
                  '\n then 6mg/m2 IV starting with cycle 2 cycled every 3 weeks.'),
          RegimenModel(
              regimenName: 'Exemestane + Trastuzumab',
              regimenDetails:
              'Days 1-28: Exemestane 25mg orally once daily cycled every 4 weeks, '
                  'with: Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes on week 1, '
                  'then ${2 / weight} mg IV starting week 2 cycled weekly. '
                  'OR Days 1-28: Exemestane 25mg orally once daily cycled every 4 weeks, '
                  'with: Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes on cycle 1, '
                  'then ${6 / area} mg IV starting with cycle 2 cycled every 3 weeks'),
          RegimenModel(
              regimenName: 'Fulvestrant + Trastuzumab',
              regimenDetails: 'Days 1,15: Fulvestrant 500mg IM on cycle 1,'
                  ' followed by: Day 1: Fulvestrant 500mg IM starting with cycle 2 cycled every 4 weeks, '
                  'with: Day 1: Trastuzmab ${4 / area} mg IV over 90 minutes on week 1,'
                  ' then ${2 / weight} mg IV starting week 2 cycled weekly.'
                  ' OR Days 1,15: Fulvestrant 500mg IM on cycle 1 '
                  'followed by:'
                  'Day 1: Fulvestrant 500mg IM starting with cycle 2 cycled every 4 weeks, '
                  'with: Day 1: Trastuzumab ${8 / weight} mg IV 90 minutes on cycle 1,'
                  ' then ${6 / area} mg IV over 30 minutes starting with cycle 2 cycled every 3 weeks'),
          RegimenModel(
              regimenName: 'Letrozole + Lapatinib + Trastuzumab',
              regimenDetails: 'Days 1-28: Letrozole 2.5mg orally once daily'
                  ' Days 1-28: Lapatinib 1,000mg orally once daily cycled every 4 weeks, '
                  '\n with: Day 1: Trastuzmab ${4 / weight} mg IV over 90 minutes on week 1,'
                  ' \n then ${2 / area} mg IV starting week 2 cycled weekly.'
                  ' \n OR Days 1-28: Letrozole 2.5mg orally once daily '
                  '\n Days 1-28: Lapatinib 1,000mg orally once daily cycled every 4 weeks,'
                  ' \n with: Day 1: Trastuzumab ${8 / weight} mg IV 90 minutes on cycle 1, '
                  '\n then ${6 / area} mg IV over 30 minutes starting with cycle 2 cycled every 3 weeks'),
          RegimenModel(
              regimenName: 'Letrozole + Trastuzumab',
              regimenDetails:
              'Days 1-28: Letrozole 2.5mg orally once daily cycled every 4 weeks,'
                  ' with:\n Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes on week 1, '
                  '\n then ${2 / weight} mg IV over 30 minutes starting with week 2 cycled weekly. '
                  '\n OR Days 1-28: Letrozole 2.5mg orally once daily cycled every 4 weeks,'
                  ' with:\n  Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes on cycle 1, '
                  'then ${4 / weight} mg over 30 minutes starting with cycle 2 cycled every 3 weeks.'),
          RegimenModel(
              regimenName: 'Tamoxifen',
              regimenDetails: 'Day 1-28: Tamoxifen 20mg orally once daily. '
                  'Repeat cycle every 4 weeks.'),
          RegimenModel(
              regimenName: 'Tamoxifen + Trastuzmab',
              regimenDetails:
              'Days 1-28: Tamoxifen 20mg orally once daily cycled every 4 weeks, with: '
                  'Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes on week 1, '
                  'then ${2 / weight} mg IV over 30 minutes starting with week 2 cycled weekly. '
                  'OR Days 1-28: Tamoxifen 20mg orally once daily cycled every 4 weeks, with:'
                  ' Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes on cycle 1,'
                  ' then ${6 / weight} mg over 30 minutes starting with cycle 2 cycled every 3 weeks.'),
        ]),
    DetailsModel(protocolName: 'HER2-Negative ', regimens: <RegimenModel>[
      RegimenModel(
          regimenName: 'Capecitabine',
          regimenDetails:
          'Days 1-14: Capecitabine ${1000 / area} mg orally twice daily. '
              'Repeat cycle every 3 weeks.'),
      RegimenModel(
          regimenName: 'Carboplatin (triple- negative breast cancer \n'
              '[TNBC] and germline BRCA1/2 mutation)',
          regimenDetails: 'Day 1: Carboplatin AUC 6 IV over 30 minutes. '
              'Repeat cycle every 3 or 4 weeks.'),
      RegimenModel(
          regimenName: 'Cisplatin (TNBC and germline BRCA1/2 mutation)',
          regimenDetails: 'Day 1: Cisplatin ${75 / area} mg IV over 60 minutes. '
              'Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Doxorubicin',
          regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push. '
              'Repeat cycle every 3 weeks. '
              'OR Day 1: Doxorubicin ${20 / area} mg IV push. Repeat cycle weekly.'),
      RegimenModel(
          regimenName: 'Eribulin',
          regimenDetails: 'Days 1,8: Eribulin ${1.4 / area} mg IV push.'
              ' Repeat cycle every 3 weeks.'),
      RegimenModel(
          regimenName: 'Gemcitabine',
          regimenDetails:
          'Days 1,8,15: Gemcitabine ${1000 / area} mg IV over 30 minutes.'
              ' Repeat cycle every 4'),
      RegimenModel(
          regimenName: 'Liposomal Doxorubicin',
          regimenDetails:
          'Liposomal Doxorubicin	Day 1: Liposomal Doxorubicin ${40 / area} mg IV. '
              'Repeat cycle every 4 weeks.'),
      RegimenModel(
          regimenName: 'Paclitaxel',
          regimenDetails:
          'Day 1: Paclitaxel ${175 / area} mg IV over 3 hours. Repeat cycle every 3 weeks. '
              'OR Day 1: Paclitaxel ${80 / area} mg IV over 60 minutes. Repeat cycle weekly.'),
      RegimenModel(
          regimenName: 'Vinorelbine',
          regimenDetails: 'Day 1: Vinorelbine ${25 / area} mg over 5-10 minutes.'
              ' Repeat cycle weekly'),
      RegimenModel(
          regimenName: 'Albumin-Bound Paclitaxel',
          regimenDetails:
          'Albumin-Bound Paclitaxel	Day 1: Albumin-bound paclitaxel ${260 / area} mg IV over 30 minutes.'
              ' Repeat cycle every 3 weeks. '
              'OR Days 1,8,15: Albumin- bound paclitaxel ${100 / area} mg IV over 30 minutes. '
              'Repeat cycle every 4 weeks.'
              ' OR Days 1,8,15: Albumin- bound paclitaxel ${125 / area} mg IV over 30 minutes.'
              'Repeat cycle every 4 weeks.'),
      RegimenModel(
          regimenName: 'Cyclophosphamide',
          regimenDetails: 'Days 1-21: Cyclophosphamide 50mg orally once daily. '
              'Repeat cycle every 4 weeks.'),
      RegimenModel(
          regimenName: ' Docetaxel',
          regimenDetails:
          'Day 1: Docetaxel from ${60 / area} to ${100 / area} mg IV over 60 minutes. '
              'Repeat cycle every 3 weeks.'
              ' OR Days 1,8,15,22,29,36: Docetaxel ${35 / area} mg IV over 60 minutes. '
              'Repeat cycle every 8 weeks (6 weeks on- followed by 2 weeks off- treatment)'),
      RegimenModel(
          regimenName: 'Epirubicin',
          regimenDetails:
          'Day 1: Epirubicin from ${60 / area} to ${80 / area} mgIV push.'
              ' Repeat cycle every 3 weeks.'),
      RegimenModel(
          regimenName: 'Ixabepilone',
          regimenDetails:
          'Day 1: Ixabepilone ${40 / area} mg (max 88mg) IV over 3 hours.'
              ' Repeat cycle every 3 weeks.'),
      RegimenModel(
          regimenName: 'AC°',
          regimenDetails: 'Day 1: Doxorubicin ${60 / area} mg IV push '
              'Day 1: Cyclophosphamide ${600 / area} mg IV over 30 minutes.'
              'Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Carboplatin + Albumin- Bound Paclitaxel',
          regimenDetails:
          'Days 1,8: Albumin- Bound Paclitaxel ${125 / area} mg IV over 30 minutes '
              'Days 1,8: Carboplatin AUC 2 IV over 30 minutes.'
              ' Repeat cycle every 3 weeks.'),
      RegimenModel(
          regimenName: 'Carboplatin + Paclitaxel',
          regimenDetails:
          'Day 1: Paclitaxel from ${175 / area} to ${200 / area} mg IV over 3 hours, '
              'followed by: Day 1: Carboplatin AUC 6 IV over 30 minutes.'
              ' Repeat cycle every 3 weeks. OR Days 1,8,15: Paclitaxel ${100 / area} mg IV over 60 minutes, '
              'followed by: Days 1,8,15: Carboplatin AUC 2 IV over 30 minutes. '
              'Repeat cycle every 4 weeks'),
      RegimenModel(
          regimenName: 'CMF ',
          regimenDetails:
          'Days 1-14: Cyclophosphamide ${100 / area} mg orally once daily '
              'Days 1,8: Methotrexate ${40 / area} mg IV push '
              'Days 1,8: Fluorouracil ${600 / area} mg  IV push.'
              ' Repeat every 4 weeks.'),
      RegimenModel(
          regimenName: 'Docetaxel + Capecitabine',
          regimenDetails: 'Day 1: Docetaxel ${75 / area} mg IV over 60 minutes '
              'Days 1-14: Capecitabine from ${950 / area} to ${1250 / area} mg orally twice daily.'
              ' Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'EC ',
          regimenDetails: ' Day 1: Epirubicin ${100 / area} mg IV push '
              'Day 1: Cyclophosphamide ${830 / area} mg IV over 30 minutes.'
              ' Repeat cycle every 3 weeks'),
    ]),
    DetailsModel(protocolName: 'protocolName ', regimens: <RegimenModel>[
      RegimenModel(
          regimenName: 'Trastuzumab + Docetaxel Pertuzumab + (Category 1)',
          regimenDetails:
          'Day 1: Pertuzumab 840mg IV over 60 minutes on cycle 1, '
              'then 420mg IV over 30 minutes starting with cycle 2 '
              'Day 1: Trastuzumab ${8 / weight} IV over 90 minutes on cycle 1, '
              'then ${6 / weight} IV over 30 minutes starting with cycle 2, followed by:'
              ' Day 1: Docetaxel ${75 / area} mg IV over 60 minutes on cycle 1, '
              'then from ${75 / area} to ${100 / area} mg over 60 minutes starting with cycle 2.'
              ' Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Pertuzumab + Trastuzumab + Paclitaxel',
          regimenDetails: 'Day 1, cycle 1: Pertuzumab 840mg IV over 60 minutes, '
              'then 420mg IV over 30 minutes starting with cycle 2'
              ' Day 1: Trastuzumab ${8 / weight} mg IV over 90 minutes on cycle 1,'
              ' then ${6 / weight} mg IV over 30 minutes starting with cycle 2 '
              '420mg IV over 30 minutes starting with cycle 2 '
              'Day 1: Trastuzumab ${8 / area} mg IV over 90 minutes on cycle 1,'
              ' then ${6 / area} mg IV over 30 minutes starting with cycle '
              '2 Days 1,8,15: Paclitaxel ${80 / area} IV over 60 minutes. Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Ado-Trastuzumab Emtansine (T-DM1; Category 1)',
          regimenDetails:
          'Day 1: Ado-trastuzumab emtansine ${3.6 / weight} mg IV over 90 minutes on cycle 1,'
              ' followed by: Day 1: Ado-trastuzumab emtansine ${3.6 / weight} over 30 minutes beginning with cycle 2.'
              ' Repeat cycle every 3 weeks.'),
      RegimenModel(
          regimenName: 'Fam-Trastuzumab Deruxtecan-nxki',
          regimenDetails:
          'Day 1: Fam-Trastuzumab Deruxtecan-nxki ${5.4 / weight} IV. '
              'Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Lapatinib + Capecitabine',
          regimenDetails: 'Days 1-21: Lapatinib 1,250mg orally once daily'
              ' Days 1-14: Capecitabine ${1000 / area} orally twice daily.'
              ' Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Neratinib + Capecitabine',
          regimenDetails: 'Days 1-21: Neratinbi 240mg orally '
              'Days 1-14: Capecitabine ${750 / area} mg orally twice daily. '
              'Repeat cycle every 3 weeks'),
      RegimenModel(
          regimenName: 'Trastuzumab + Capecitabine',
          regimenDetails:
          'Days 1-14: Capecitabine from ${1000 / area} to ${1250 / area} mg orally twice daily cycled every 3 weeks, '
              'with: Day 1: Trastuzumab ${4 / weight} mg IV over 90 minutes on week 1, '
              'then ${2 / weight} mg IV over 30 minutes starting week 2 cycled every week. '
              'OR Days 1-14: Capecitabine from ${1000 / area} to ${1250 / area} mg orally twice daily '
              'Day 1: Trastuzumab ${8 / area} mg IV over 90 minutes, then 6mg/kg IV over 30 minutes cycled every 3 weeks.'),
      RegimenModel(
          regimenName: 'Trastuzumab + Carboplatin',
          regimenDetails:
          'Day 1: Carboplatin AUC 6 IV over 30 minutes cycled every 3 or 4 weeks,'
              'with: Day 1: Trastuzumab ${4 / weight} IV over 90 minutes on week 1, '
              'then ${2 / weight} IV over 30 minutes starting week 2 cycled weekly.'
              'OR Day 1: Carboplatin AUC 6 IV over 30 minutes cycled every 3 or 4 weeks,'
              'with: Day 1: Tratuzumab ${8 / weight} IV over 90 minutes on cycle 1, '
              'then ${6 / weight} IV starting with cycle 2 cycled every 3 weeks'),
      RegimenModel(
          regimenName: 'Trastuzumab + Cisplatin',
          regimenDetails:
          'every 3 weeks, with: Day 1: Trastuzumab ${4 / weight} mg IV 90 minutes on week 1,'
              ' then ${2 / weight} IV over 30 minutes starting week 2 cycled weekly. '
              'OR Day 1: Cisplatin ${75 / area}  IV over 60 minutes.'
              ' Day 1: Trastuzumab ${8 / weight} IV over 90 minutes, '
              'then ${6 / weight} IV over 30 minutes cycled every 3 weeks.'),
      RegimenModel(
          regimenName: 'Trastuzumab + Cyclophosphamide',
          regimenDetails:
          'Days 1-21: Cyclophosphamide 50mg orally once daily cycled every 4 weeks, '
              'with: Day 1: Trastuzumab ${4 / weight} IV over 90 minutes on week 1, '
              'then ${2 / weight} IV over 30 minutes starting week 2 cycled weekly.'
              'OR'
              'Days 1-21: Cyclophosphamide 50mg orally once daily'
              'cycled every 4 weeks,'
              'with: Day 1: Trastuzumab ${8 / weight} IV over 90 minutes on cycle 1,'
              ' then ${6 / weight} IV over 30 minutes starting with cycle 2 cycled every 3 weeks'),
      RegimenModel(
          regimenName: 'Trastuzumab + Eribulin',
          regimenDetails:
          'Days 1,8: Eribulin ${1.4 / area} IV push cycled every 3 weeks, '
              'with: Day 1: Trastuzumab ${4 / area}  IV over 90 minutes on week 1, '
              'then ${2 / weight} IV over 30 minutes starting week 2 cycled weekly. '
              'OR Days 1,8: Eribulin ${1.4 / area} IV push '
              '. Day 1: Trastuzumab ${8 / weight} IV over 90 minutes on cycle 1, '
              'then ${6 / weight} IV over 30 minutes starting with cycle 2 cycled every 3 weeks.'),
      RegimenModel(
          regimenName: 'Trastuzumab + Gemcitabine',
          regimenDetails:
          'Days 1,8,15: Gemcitabine from ${800 / area} to ${1200 / area} mg IV over 30 minutes cycled every 4 weeks'
              ' , with: Day 1: Trastuzumab ${4 / weight} IV over 90 minutes on week 1,'
              ' then ${2 / weight} IV over 30 minutes starting week 2 cycled weekly '
              '. OR Days 1,8,15: Gemcitabine from ${800 / area} to ${1200 / area} mg IV over 30 minutes cycled every 4 weeks, '
              'with: Day 1: Trastuzumab ${8 / weight} IV over 90 minutes on cycle 1,  then ${6 / weight} IV over 30 minutes starting with cycle 2 cycled every 3 weeks.'),
    ]),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: createPageExpansionTiles(context, recurrentOrMetastaticBreastCancerModel),
        ),
      ),
    );
  }
}
