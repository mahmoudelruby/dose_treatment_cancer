
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.tegText,
    required this.hintText,
    required this.isPassword,
    this.suffixPressed,
    this.inputType,
    this.suffix,
  }) : super(key: key);
  TextEditingController controller;
  String tegText;
  TextInputType? inputType;
  String hintText;
  IconData? suffix;
  void Function()? suffixPressed;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tegText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 9.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
            child: TextFormField(
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),

              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                ),
                suffixIcon: IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(suffix),
                ),

              ),
              controller: controller,
              keyboardType: inputType,
              obscureText: isPassword,
            ),
          ),
        ],
      ),
    );
  }
}