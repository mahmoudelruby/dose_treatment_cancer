class DataModel {
  DataModel({required this.cancerName, required this.details});

  final String cancerName;
  List<DetailsModel> details;
}

class DetailsModel {
  DetailsModel({required this.treatmentName, required this.regimens});
  final String treatmentName;
  List<RegimenModel> regimens;
}

class RegimenModel {
  RegimenModel({required this.regimenName, required this.regimenDetails});
  final String regimenName;
  final String regimenDetails;
}
