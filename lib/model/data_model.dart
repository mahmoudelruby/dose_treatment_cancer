class DataModel {
  DataModel({required this.cancerName, required this.details , required this.area});
final double area;
  final String cancerName;
  final List<DetailsModel> details;
}

class DetailsModel {
  DetailsModel({required this.protocolName, required this.regimens});
  final String protocolName;
  List<RegimenModel> regimens;
}

class RegimenModel {
  RegimenModel({required this.regimenName, required this.regimenDetails});
  final String regimenName;
  final String regimenDetails;
}
