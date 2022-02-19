import 'package:dose_treatment_cancer/model/data_model.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';

DataModel headCancerModel = DataModel(
  cancerName: "Head Cancer",
  details: <DetailsModel>[
    DetailsModel(
      treatmentName: "Primary systemic therapy +concurrent radiotherapy",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "High-dose cisplatin",
          regimenDetails: "Days 1, 22, and 43: Cisplatin ${100 / area} mg",
        ),
        RegimenModel(
          regimenName: "cetuxiamb",
          regimenDetails:
              "Day 1: Cetuximab ${400 / area} mg loading dose over 2 hours, 1 week before radiotherapy. \nDay 7: with radiotherapy cetuximab ${250 / area} mg. \n7 week repeated.",
        ),
        RegimenModel(
          regimenName: "Carboplatin + infusional 5-FU (Category 1)",
          regimenDetails:
              "Days 1-4: 5-FU ${600 / area} mg/day as continuous IV infusion for 4 days + carboplatin ${70 / area}}/day IV bolus. \nRepeat every 3 weeks for 3 cycles.",
        ),
        RegimenModel(
          regimenName: "5-FU + hydroxyurea",
          regimenDetails:
              "Day 1: Hydroxyurea 1,000mg orally every 12 hours (11 doses/cycle) + 5-FU ${800 / area}/day continuous IV infusion",
        ),
        RegimenModel(
          regimenName: "Cisplatin + paclitaxel",
          regimenDetails:
              "Day 1: Paclitaxel${30 / area} mg IV (every Monday), plus \nDay 2: Cisplatin ${20 / area} mg IV (every Tuesday).",
        ),
        RegimenModel(
          regimenName: "Cisplatin + infusional 5-FU",
          regimenDetails:
              "Day 1: Cisplatin ${60 / area} mg over 15 minutes, plus \n Days 1-5: 5-FU ${800 / area} mg/day by continuous infusion for 5 days",
        ),
        RegimenModel(
          regimenName: "Carboplatin + paclitaxel (Category 2B)",
          regimenDetails:
              "Day 1: Paclitaxel ${40 / area}-${45 / area} mg/week and carboplatin ${100 / area} mg/week",
        ),
        RegimenModel(
          regimenName: "Weekly cisplatin (Category 2B)",
          regimenDetails:
              "Day 1-28: Cisplatin 40 mg/mg2 IV over 30 minutes weekly \nOR\nDay 1-28: Cisplatin 40mg/mg2 IV weekly.",
        ),
      ],
    ),
    DetailsModel(
      treatmentName: "Primary chemotherapy with postoperative chemoradiation",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
              "Cisplatin(Category 1 for high-risk non- radiotherapy-oropharyngeal cancers)",
          regimenDetails: "Day 1, 22, and 43: cisplatin ${100 / area} mg IV",
        ),
      ],
    ),
    DetailsModel(
      treatmentName: "Induction Chemotherapy / Sequential Chemotherapy",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
              "Docetaxel + cisplatin + 5-FU (Category 1 if induction is chosen)",
          regimenDetails:
              "Day 1: Docetaxel ${75 / area} mg IV + cisplatin ${75 / area} mg IV, plus \nDays 1-5 : 5-FU ${750 / area} mg/day continuous IV.",
        ),
        RegimenModel(
          regimenName: "Paclitaxel + cisplatin + infusional 5FU27d",
          regimenDetails:
              "Day 1: Paclitaxel ${175 / area} mg over 3 hours, \nDay 2: Cisplatin ${100 / area} mg, plus \nDay 2-6 : 5-FU ${500 / area} mg/day continuous IV infusion for 5 days.\nRepeat every 3 weeks for 3 cycles.",
        ),
      ],
    ),
  ],
);
DataModel neckCancerModel = DataModel(
  cancerName: "Nasopharynx Cancer (Neck Cancer)",
  details: <DetailsModel>[
    DetailsModel(
      treatmentName: "Chemoradiation Followed by Adjuvant Chemotherapy",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Cisplatin + radiotherapy + cisplatin + 5FU",
          regimenDetails:
              "Cycles 1 - 3 \nDay 1: Cisplatin ${100 / area} mg IV; plus radiotherapy.\nRepeat cycle every 3 weeks; followed by Cycles 4-6\nDays 1: Cisplatin ${80 / area} mg IV over 1 hour ,plus \nDays 1-4 : 5-FU ${1000 / area} mg continuous IV infusion daily. \nRepeat cycle every 4 weeks for 3 cycles.",
        ),
        RegimenModel(
          regimenName:
              "Carboplatin + Radiotherapy + Carboplatin + 5FU (Category 2B)",
          regimenDetails:
              "Cycles 1 - 3 \nDay 1: Carboplatin AUG 6mg-min/mL IV over 1 hour; \nCycles 4-6 \nDay1:CarboplatinAUC 5mg-min/mL IV over 1 hour \n Days 1 - 4 : 5-FU ${1000 / area} mg/day continuous IV infusion over 24 hours. \nRepeat cycle every 3 weeks for 2 cycles.",
        ),
        RegimenModel(
          regimenName:
              "Cisplatin + Radiotherapy without adjuvant Chemotherapy (Category 2B)",
          regimenDetails: "Cisplatin ${40 / area} mg weekly for up to 7 weeks,",
        ),
      ],
    ),
    DetailsModel(
      treatmentName: "Induction Chemotherapy /Sequential Chemotherapy ",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
              "Docetaxel + Cisplatin + 5-FU (Category 1 if induction is chosen)",
          regimenDetails:
              "Day 1: Docetaxel ${70 / area} mg IV over 1 hour and cisplatin ${75 / area} mg IV over 3 hours; followed by \nDays1-4:5-FU ${1000 / area} mg/day continuous IV infusion for 4 days. \n. Repeat every week for 3 cycles; followed by Cisplatin ${100 / area} mg; plus \nRadiotherapy: 5 daily fractions of 1.8 or 2Gy/day (total dose of 68.4Gy) Repeat every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Docetaxel + Cisplatin (Category 2B)",
          regimenDetails:
              "Day 1: Docetaxel ${75 / area} mg IV + Cisplatin ${75 / area} mg IV every 3 weeks for two cycles, followed by Cisplatin ${40 / area} mg IV weekly.",
        ),
        RegimenModel(
          regimenName: "Cisplatin + 5FU25",
          regimenDetails:
              "Day 1: Cisplatin ${100 / area} mg/day lV. \nDays 1 - 4 : 5-FU ${1000 / area} mg/day continuous IV infusion for 4 days.",
        ),
      ],
    ),
    DetailsModel(
      treatmentName:
          "First-line combination therapy for unresectable or metastatic disease",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName:
              "Cisplatin or Carboplatin + 5FU + Cetuximab (Category 1) (Nonnasopharyngeal)",
          regimenDetails:
              "Day 1: Cisplatin ${100 / area} mg IV or Carboplatin AUG 5 mg-min/mL 1 hour IV infusion, plus \nDay 1 : Cetuximab ${400 / area} mg IV over 2 hours (initial dose),followed by ${250 / area} mg IV over 1 hour once weekly \nDays 1 - 4 : 5-FU ${1000 / area} mg/day continuous IV infusion for 4 days. \nRepeat cycle every 3 weeks for a maximum of 6 cycles.",
        ),
        RegimenModel(
          regimenName: "Cisplatin or Carboplatin + Docetaxel",
          regimenDetails:
              "Day 1: Docetaxel ${75 / area} mg IV over 1 hour; followed immediately by Cisplatin ${75 / area} mg IV.\nOR\nDay 1: Docetaxel ${65 / area} mg IV over 1 hour; followed immediately by Carboplatin AUG 6mg-min/mL IV.\nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Cisplatin or Carboplatin + Paclitaxel",
          regimenDetails:
              "Day 1: Cisplatin ${75 / area} mg/day IV + Paclitaxel ${175 / area} mg IV over 3 hours.\nOR\nDay 1: Carboplatin AUC 6mg-min/mL IV + Paclitaxel ${200 / area} mg IV over 3 hours.\nRepeat cycle every 3 weeks for a minimum of 6 cycles.",
        ),
        RegimenModel(
          regimenName: "Cisplatin + Cetuximab",
          regimenDetails:
              "Day 1: Cetuximab ${200 / area} mg over 120 minutes for 1 cycle, then Cetuximab ${125 / area} mg/week IV over 60 minutes for subsequent cycles.\nRepeat once weekly, plus\nDay 1: Cisplatin ${100 / area} mg IV.\nRepeat every 4 weeks.",
        ),
      ],
    ),
    DetailsModel(
      treatmentName:
          "First line single agent for unresectable or metastatic disease with no surgery",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Cisplatin",
          regimenDetails:
              "Day 1: Cisplatin ${100 / area} mg IV over 15-20 minutes. \nRepeat every 3-4 weeks.",
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
      treatmentName: "Second-Line Therapy or Subsequent Therapy Options",
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
              "Day 1: Nivolumab 3mg/kg IV. \nRepeat cycle every 2 weeks.",
        ),
      ],
    ),
  ],
);
DataModel softTissueSarcomaModel = DataModel(
  cancerName: "Soft Tissue Sarcoma",
  details: <DetailsModel>[
    DetailsModel(
      treatmentName: "Combination Regimens",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Doxorubicin + Dacarbazine (AD) ^ 2,5",
          regimenDetails:
              "Days 1 - 4: Doxorubicin ${60 / area} mg + Dacarbazine (${750 / area} mg as a continuous IV infusion over 96 hours.\nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin + Ifosfamide+ Mesna (AIM) ^ 4,7",
          regimenDetails:
              "Days 1 and 2: Doxorubicin ${30 / area} mg/day IV +Ifosfamide ${3750 / area} mg/day IV + Mesna ${750 / area} mg IV immediately preceding and then 4 and 8 hours after Ifosfamide administration. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName:
              "Mesna+ Doxorubicin+ Ifosfamide+ Dacarbazine (MAID) ^ 4,5,8,9",
          regimenDetails:
              "Days 1 - 3: Doxorubicin ${20 / area} mg/day + Ifosfamide ${2500 / area} mg/day + Dacarbazine ${300 / area} mg/day as continuous IV infusion over 72 hours, plus \nMesna ${2500 / area} mg/day IV for 84 to 96 hours. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Ifosfamide + Epirubicin + Mesna ^ 10",
          regimenDetails:
              "Days 1 and 2: Epirubicin ${60 / area} mg/day IV. \nDays 1-5: Ifosfamide ${(1.8 * 1000) / area} mg/day IV over 1 hour + Mesna at 20% of the Ifosfamide dose IV immediately preceding and then 4 and 8 hours after Ifosfamide administration. \nRepeat cycle every 3weeks for 5 cycles.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Docetaxel ^ 11,12",
          regimenDetails:
              "Days 1 and 8: Gemcitabine ${900 / area} mg IV. \nDay 8: Docetaxel ${100 / area} mg IV. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Vinorelbine ^ 13",
          regimenDetails:
              "Days 1 and 8: Vinorelbine ${25 / area} mg IV over 10 minutes + Gemcitabine ${800 / area} mg IV over 90 minutes. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Dacarbazine ^ 14",
          regimenDetails:
              "Day 1: Gemcitabine ${1800 / area} mg IV + Dacarbazine ${500 / area} mg IV. \nRepeat cycle ever 2 weeks for a total of 12 cycles; \nContinuation of treatment after 24 weeks was allowed at investigator discretion.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin + Olaratumab ^ 15,e",
          regimenDetails:
              "Day 1: Doxorubicin ${75 / area} mg IV. \nDays 1 and 8: Olaratumab 15 mg/kg IV. \nRepeat cycle every 3 weeks for up to 8 cycles.",
        ),
      ],
    ),
    DetailsModel(
      treatmentName: "Single Agents",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Doxorubicin ^ 4,5,16",
          regimenDetails:
              "Doxorubicin ${60 / area}-${75 / area} mg IV every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Ifosfamide ^ 10,17",
          regimenDetails:
              "Ifosfamide ${2000 / area}-${3000 / area} mg/day IV for 3 to 4 days + Mesna at 20% of the Ifosfamide dose IV immediately preceding and then 4 and 8 hours after ifosfamide administration every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Epirubicin ^ 18",
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
              "Dacarbazine ${250 / area} mg/day IV for 5 days every 3 weeks. \nOR \nDacarbazine ${800 / area}-${1000 / area} mg IV every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Liposomal Doxorubicin ^ 19",
          regimenDetails:
              "Liposomal doxorubicin ${30 / area}-${50 / area} mg IV every 4 weeks.",
        ),
        RegimenModel(
          regimenName: "Temozolomide ^ 20,d",
          regimenDetails:
              "Day 1: Temozolomide ${200 / area} mg oral bolus dose once followed by Temozolomide ${90 / area} mg after 12 hours. \nDays 2 - 5: Temozolomide ${90 / area} mg orally twice daily. \nRepeat cycle every 4 weeks.",
        ),
        RegimenModel(
          regimenName: "Vinorelbine",
          regimenDetails:
              "Vinorelbine ${30 / area} mg IV weekly for 6 weeks during an 8-week interval.",
        ),
        RegimenModel(
          regimenName: "Eribulin ^ 23,d,g",
          regimenDetails:
              "Days 1 and 8: Eribulin methylate ${1.4 / area} mg IV. \nRepeat every 3 weeks until disease progression or unacceptable toxicity.",
        ),
        RegimenModel(
          regimenName: "Trabectedin ^ 24-26,d,h",
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
      treatmentName:
          "Adjuvant Chemotherapy for High-Risk Disease or primary Therapy for Initially Unresectable Disease",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Docetaxel + Gemcitabine ^ 2,3",
          regimenDetails:
              "Days 1 - 8: Gemcitabine ${900 / area} mg IV at a rate of ${10 / area} mg/minute, followed by: \nDay 8: Docetaxel ${75 / area}-${100 / area} mg IV over 60 minutes. \nRepeat cycle every 3 weeks for 4-6 cycles. \nOR \nDays 1 , 8: Gemcitabine ${675 / area} mg (if prior pelvic radiation) IV at a rate of ${10 / area} mg/minute, followed by: \nDay 8: Docetaxel ${75 / area} mg IV over 60 minutes. \nRepeat cycle every 3 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin ^ 4",
          regimenDetails:
              "Day 1: Doxorubicin ${60 / area}-${75 / area} mg IV push. \nRepeat cycle every 3 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Dacarbazine ^ 5,6",
          regimenDetails:
              "Days 1-5: Dacarbazine ${250 / area} mg IV over 30 minutes.\n Repeat cycle every 3 weeks for 4-6 cycles.\nOR\nDays 1-5: Dacarbazine ${187 / area} mg (if prior pelvic radiation) IV over 30  minutes. \nRepeat cycle every 3 weeks for 4-6 cycles.\nOR\nDay 1: Dacarbazine ${1000 / area} mg IV over 60 minutes.\nRepeat cycle every 3 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin + Decarbazine ^ 7,8",
          regimenDetails:
              "Days 1-4: Doxorubicin ${15 / area} mg IV continuous infusion over 24 hours daily. \nDays 1 - 4: Dacarbazine ${187.5 / area}-${250 / area} mg IV continuous infusion over 24 hours daily. \nRepeat cycle every 3 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin + Ifosfamide ^ 9,10,b",
          regimenDetails:
              "Days 1- 3: Doxorubicin ${25 / area} mg IV push. \nDays 1 - 3: Ifosfamide ${3000 / area} mg IV continuous infusion over 24 hours daily. \nDays 1 - 3: Mesna ${3000 / area} mg IV continuous infusion over 24 hours concurrently with Ifosfamide (additional Mesna may be administered following the completion of Ifosfamide per institutional standard). \nRepeat cycle every 3weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Epirubicin ^ 11",
          regimenDetails:
              "Day 1: Epirubicin ${75 / area} mg IV push. \nRepeat cycle every 3 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine ^ 12",
          regimenDetails:
              "Days 1, 8, 15: Gemcitabine ${1800 / area} mg IV over 30 minutes. \nRepeat cycle every 4 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Dacarbazine ^ 13",
          regimenDetails:
              "Day 1: Gemcitabine ${1800 / area} mg IV at a rate of ${10 / area} mg/minute. \nDay 1: Dacarbazine ${500 / area} mg IV over 60 minutes. \nRepeat cycle every 2 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Vinorelbine ^ 14",
          regimenDetails:
              "Days 1, 8: Vinorelbine ${25 / area} mg IV over 5-10 minutes. \nDays 1, 8: Gemcitabine ${800 / area} mg IV at a rate of ${10 / area} mg/minute. \nRepeat cycle every 3 weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Ifosfamide ^ 15,16,b",
          regimenDetails:
              "Days 1-5: Ifosfamide ${1500 / area} mg IV over 3 hours. \nDays 1-5: Mesna ${300 / area} mg IV over 15 minutes before Ifosfamide, then at 4 and 8 hours from the start of each Ifosfamide dose. \nRepeat cycle every 3 weeks for 4-6 cycles. \nOR \nDays 1-3: Ifosfamide ${3000 / area} mg IV continuous infusion over 24 hours daily. \nDays 1-3: Mesna ${3000 / area} mg IV continuous infusion over 24 hours concurrently with Ifosfamide (addition Mesna may be administered following the completion of Ifosfamide per institutional standard). \nRepeat cycle every 3weeks for 4-6 cycles.",
        ),
        RegimenModel(
          regimenName: "Liposomal Doxorubicin ^ 17,18",
          regimenDetails:
              "Day 1: Liposomal Doxorubicin ${50 / area} 50 mg IV. \nRepeat cycle every 4 Weeks for 4-6 cycles.",
        ),
      ],
    ),
    DetailsModel(
      treatmentName: "Systemic Therapy for Recurrent or Metastatic Disease",
      regimens: <RegimenModel>[
        RegimenModel(
          regimenName: "Docetaxel + Gemcitabine ^ 2,3",
          regimenDetails:
              "Days 1, 8: Gemcitabine ${900 / area}900 mg IV at a rate of ${10 / area} mg/minute, followed by: \nDay 8: Docetaxel ${75 / area}-${100 / area} mg IV over 60 minutes. \nRepeat cycle every 3 weeks. \nOR \nDays 1, 8: Gemcitabine ${675 / area} mg (if prior pelvic radiation) IV at a rate of ${10 / area} 10 mg/minute, followed by: \nDay 8: Docetaxel ${75 / area} mg IV over 60 minutes. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin ^ 4",
          regimenDetails:
              "Day 1: Doxorubicin ${60 / area}-${75 / area} mg IV push. \nRepeat cycle every 3 weeks until disease progression",
        ),
        RegimenModel(
          regimenName: "Dacarbazine ^ 5,6",
          regimenDetails:
              "Days 1-5: Dacarbazine ${250 / area} mg IV over 30 minutes. \nRepeat cycle every 3 weeks. \nOR \nDays 1-5: Dacarbazine ${187 / area} mg (if prior pelvic radiation) IV over 30 minutes. \nRepeat cycle every 3 weeks. \nOR \nDay 1: Dacarbazine ${1800 / area} mg IV over 60 minutes. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin + Decarbazine ^ 7,8",
          regimenDetails:
              "Days 1-4: Doxorubicin ${15 / area} mg IV continuous infusion over 24 hours daily. \nDays 1-4: Dacarbazine ${187.5 / area}-${250 / area} mg IV continuous infusion over 24 hours daily. \nRepeat cycle every 3 weeks until disease progression.",
        ),
        RegimenModel(
          regimenName: "Doxorubicin + Ifosfamide ^ 9,10,b",
          regimenDetails:
              "Days 1-3: Doxorubicin ${25 / area} mg IV push. \nDays 1-3: Ifosfamide ${3000 / area} mg IV continuous infusion over 24 hours daily. \nDays 1-3: Mesna ${3000 / area} mg IV continuous infusion over 24 hours concurrently with Ifosfamide (additional Mesna may be administered following the completion of Ifosfamide per institutional standard). \nRepeat cycle every 3 weeks until disease progression",
        ),
        RegimenModel(
          regimenName: "Epirubicin ^ 11",
          regimenDetails:
              "Day 1: Epirubicin ${75 / area} mg push. \nRepeat cycle every 3 weeks until disease progression.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine ^ 12",
          regimenDetails:
              "Days 1, 8, 15: Gemcitabine ${1000 / area} mg IV over 30 minutes. \nRepeat cycle every 4 weeks.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Dacarbazine ^ 13",
          regimenDetails:
              "Day 1: Gemcitabine ${1800 / area} mg IV at a rate of ${10 / area} mg/minute. \nDay 1: Dacarbazine ${500 / area} mg IV over 60 minutes. \nRepeat cycle every 2 weeks.",
        ),
        RegimenModel(
          regimenName: "Gemcitabine + Vinorelbine ^ 14",
          regimenDetails:
              "Days 1, 8: Vinorelbine ${25 / area} mg IV over 5-10 minutes.Days 1,8: Gemcitabine ${800 / area} mg IV at a rate of ${10 / area} mg/minute. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Ifosfamide ^ 15,16,b",
          regimenDetails:
              "Days 1-5: Ifosfamide ${1500 / area} mg IV over 3 hours. \nDays 1-5: Mesna ${300 / area} mg IV over 15 minutes before Ifosfamide, then at 4 and 8 hours from the start of each Ifosfamide dose. \nRepeat cycle every 3 weeks.",
        ),
        RegimenModel(
          regimenName: "Liposomal Doxorubicin ^ 17,18",
          regimenDetails:
              "Day 1: Liposomal Doxorubicin ${50 / area} mg IV. \nRepeat cycle every 4 weeks.",
        ),
        RegimenModel(regimenName: "Eribulin (Category 2B) ^ 19,20", regimenDetails: "Days 1, 8: Eribulin ${1.4/area} mg IV push. \nRepeat cycle every 3 weeks.",),
        RegimenModel(regimenName: "Temozolomide ^ 21,22", regimenDetails: "Days 1-5: Temozolomide ${150/area}-${300/area} mg orally. \nRepeat cycle every 4 weeks. \nOR \nDays 1-42: Temozolomide ${75/area}-${100/area} mg orally. \nRepeat cycle every 56 days.",),
      ],
    ),
  ],
);
