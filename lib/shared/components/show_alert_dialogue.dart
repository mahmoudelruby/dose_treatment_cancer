import 'dart:io';

import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';

Future<void> showAlertDialog(
  BuildContext context, {
  required String title,
  required String content,
  required String defaultActionText,
  required VoidCallback defaultAction,
  String? cancelActionText,
}) async {
  if (!Platform.isIOS) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                title,
              ),
              content: Text(content),
              actions: [
                if (cancelActionText != null)
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text(
                      cancelActionText,
                      style: TextStyle(color: mainColor),
                    ),
                  ),
                TextButton(
                  onPressed: defaultAction,
                  child: Text(
                    defaultActionText,
                    style: TextStyle(color: mainColor),
                  ),
                ),
              ],
            ));
  }
}
