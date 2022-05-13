import 'package:dose_treatment_cancer/shared/constants.dart';

class UserModel {
  final String? patientName;
  final int? age;
  final double? weight;
  final double? height;
  final double? area;
  final String? gender;
  final double? cancerGrade;
  final String? cancerName;
  final String? protocolName;
  final String? regimenName;
  final String? regimenDetails;
  final DateTime? dateTime;

  UserModel(
  {
   required this.patientName,
    required this.age,
    required this.gender,
    required this.cancerGrade,
    required this.cancerName,
    required this.protocolName,
    required this.regimenName,
    required this.regimenDetails,
    required this.dateTime,
    required this.weight,
    required this.height,
    required this.area,
}
  );

  String toParams() =>
      "?dateTime=$dateTime&patientName=$patientName&age=$age&height=$height&weight=$weight&area=$area&gender=$gender&cancerGrade=$cancerGrade&cancerName=$cancerName&protocolName=$protocolName&regimenName=$regimenName&regimenDetails=$regimenDetails";
}
