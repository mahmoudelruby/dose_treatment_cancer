import 'package:dose_treatment_cancer/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class FormController {
  late final void Function(String) callback;
  static const String URL ="https://script.google.com/macros/s/AKfycbyNYbXkurDI1zLe4T7Ya7hZaQIkShBxZAZL-JUV0CHhsJhyNuaiLmpxNnlwBFF6RGFp/exec";

      static const STATUS_SUCCESS = "SUCCESS";

  FormController(this.callback);

  void submitForm(UserModel userModel) async {
    try {
      await http.get(Uri.parse(URL + userModel.toParams())).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}