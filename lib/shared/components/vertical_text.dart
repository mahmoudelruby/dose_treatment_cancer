import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
   const VerticalText({Key? key, required this.text}) : super(key: key);
  final String text ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
