import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';

DataModel headCancerModel = DataModel(
  cancerName: "Head Cancer",
  details: <DetailsModel>[
    DetailsModel(
      protocolName: "Primary systemic therapy + Concurrent radiotherapy",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "High dose Cisplatin",
          regimenDetails: "Days 1, 22, and 43: Cisplatin ${100 / area} mg IV",
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
DataModel neckCancerModel = DataModel(
  cancerName: "Nasopharynx Cancer (Neck Cancer)",
  details: <DetailsModel>[
    DetailsModel(
      protocolName: "Chemoradiation Followed by Adjuvant Chemotherapy",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Cisplatin + radiotherapy + cisplatin + 5FU",
          regimenDetails:
              "Cycles 1 - 3 \nDay 1: Cisplatin ${100 / area} mg IV; plus radiotherapy."
              "\nRepeat cycle every 3 weeks; followed by Cycles"
              " 4-6\nDays 1: Cisplatin ${80 / area} mg IV over 1 hour ,plus "
              "\nDays 1-4 : 5-FU ${1000 / area} mg continuous IV infusion daily. "
              "\nRepeat cycle every 4 weeks for 3 cycles.",
        ),
        RegimenModel(
          regimenName:
              "Carboplatin + Radiotherapy + Carboplatin + 5FU (Category 2B)",
          regimenDetails:
              "Cycles 1 - 3 \nDay 1: Carboplatin AUG 6mg-min/mL IV over 1 hour; "
              "\nCycles 4-6 \nDay1:CarboplatinAUC 5mg-min/mL IV over 1 hour "
              "\n Days 1 - 4 : 5-FU ${1000 / area} mg/day continuous IV infusion over 24 hours. "
              "\nRepeat cycle every 3 weeks for 2 cycles.",
        ),
        RegimenModel(
          regimenName:
              "Cisplatin + Radiotherapy without adjuvant Chemotherapy (Category 2B)",
          regimenDetails: "Cisplatin ${40 / area} mg weekly for up to 7 weeks,",
        ),
      ],
    ),
    DetailsModel(
      protocolName: "Induction Chemotherapy /Sequential Chemotherapy ",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
              "Docetaxel + Cisplatin + 5-FU (Category 1 if induction is chosen)",
          regimenDetails: "Day 1: Docetaxel ${70 / area} mg IV over 1 hour "
              "and cisplatin ${75 / area} mg IV over 3 hours; followed by "
              "\nDays1-4:5-FU ${1000 / area} mg/day continuous IV infusion for 4 days. "
              "\n. Repeat every week for 3 cycles; followed by Cisplatin ${100 / area} mg; plus"
              " \nRadiotherapy: 5 daily fractions of 1.8 or 2Gy/day (total dose of 68.4Gy) Repeat every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Docetaxel + Cisplatin (Category 2B)",
          regimenDetails: "Day 1: Docetaxel ${75 / area} mg IV + "
              "Cisplatin ${75 / area} mg IV every 3 weeks for two cycles, followed by "
              "Cisplatin ${40 / area} mg IV weekly.",
        ),
        RegimenModel(
          regimenName: "Cisplatin + 5FU25",
          regimenDetails: "Day 1: Cisplatin ${100 / area} mg/day lV. "
              "\nDays 1 - 4 : 5-FU ${1000 / area} mg/day continuous IV infusion for 4 days.",
        ),
      ],
    ),
    DetailsModel(
      protocolName:
          "First-line combination therapy for unresectable or metastatic disease",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
              "Cisplatin or Carboplatin + 5FU + Cetuximab (Category 1) (Nonnasopharyngeal)",
          regimenDetails:
              "Day 1: Cisplatin ${100 / area} mg IV or Carboplatin AUG 5 mg-min/mL 1 hour IV infusion, plus "
              "\nDay 1 : Cetuximab ${400 / area} mg IV over 2 hours (initial dose),followed by "
              "${250 / area} mg IV over 1 hour once weekly"
              " \nDays 1 - 4 : 5-FU ${1000 / area} mg/day continuous IV infusion for 4 days."
              " \nRepeat cycle every 3 weeks for a maximum of 6 cycles.",
        ),
        RegimenModel(
          regimenName: "Cisplatin or Carboplatin + Docetaxel",
          regimenDetails:
              "Day 1: Docetaxel ${75 / area} mg IV over 1 hour; followed immediately by"
              " Cisplatin ${75 / area} mg IV."
              "\nOR\nDay 1: Docetaxel ${65 / area} mg IV over 1 hour; followed immediately by "
              "Carboplatin AUG 6mg-min/mL IV."
              "\nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Cisplatin or Carboplatin + Paclitaxel",
          regimenDetails: "Day 1: Cisplatin ${75 / area} mg/day IV + "
              "Paclitaxel ${175 / area} mg IV over 3 hours."
              "\nOR\nDay 1: Carboplatin AUC 6mg-min/mL IV +"
              " Paclitaxel ${200 / area} mg IV over 3 hours."
              "\nRepeat cycle every 3 weeks for a minimum of 6 cycles.",
        ),
        RegimenModel(
          regimenName: "Cisplatin + Cetuximab",
          regimenDetails:
              "Day 1: Cetuximab ${200 / area} mg over 120 minutes for 1 cycle,"
              " then Cetuximab ${125 / area} mg/week IV over 60 minutes for subsequent cycles."
              "\nRepeat once weekly, plus"
              "\nDay 1: Cisplatin ${100 / area} mg IV."
              "\nRepeat every 4 weeks.",
        ),
      ],
    ),
    DetailsModel(
      protocolName:
          "First line single agent for unresectable or metastatic disease with no surgery",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Cisplatin",
          regimenDetails:
              "Day 1: Cisplatin ${100 / area} mg IV over 15-20 minutes."
              " \nRepeat every 3-4 weeks.",
        ),
        RegimenModel(
          regimenName: "Carboplatin",
          regimenDetails: "Day 1: ${25 / area} mg daily.",
        ),
        RegimenModel(
          regimenName: "Paclitaxel",
          regimenDetails:
              "Day 1: Paclitaxel ${80 / area} mg IV over 1 hour. \nRepeat every 6 weeks.",
        ),
        RegimenModel(
          regimenName: "Docetaxel",
          regimenDetails:
              "Day 1: Docetaxel ${40 / area}-${100 / area} mg IV over 1 hour. \nRepeat every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "5-FU",
          regimenDetails:
              "Days 1-4: 5-FU ${1000 / area} mg/day continuous IV infusion for 4 days. \nRepeat every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Methotrexate",
          regimenDetails:
              "${40 / area} mg IV weekly, with progressive increase to ${60 / area} mg, if tolerated.",
        ),
      ],
    ),
    DetailsModel(
      protocolName: "Second-Line Therapy or Subsequent Therapy Options",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Afatinib (Category 2B)",
          regimenDetails:
              "Day 1: Afatinib 40 mg orally daily until disease progression or unacceptable toxicity.",
        ),
        RegimenModel(
          regimenName: "Pembrolizumab (Category 2B)",
          regimenDetails:
              "Day 1: Pembrolizumab 10mg/kg IV. \nRepeat cycle every 2 weeks.",
        ),
        RegimenModel(
          regimenName: "Nivolumab (Category 1)",
          regimenDetails:
              "Day 1: Nivolumab ${3 / weight} IV. \nRepeat cycle every 2 weeks.",
        ),
      ],
    ),
  ],
);
DataModel softTissueSarcomaModel = DataModel(
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
DataModel uterineSarcomaModel = DataModel(
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
DataModel invasiveNonMetastaticBreastCancerModel = DataModel(cancerName: " invasive nonmetastatic breast cancer", details: <
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
DataModel recurrentOrMetastaticBreastCancerModel = DataModel(cancerName: 'recurrent or metastatic brist cancer', details: <
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
