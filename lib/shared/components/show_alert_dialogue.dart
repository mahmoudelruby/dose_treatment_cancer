import 'dart:io';

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
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                TextButton(
                  onPressed: defaultAction,
                  child: Text(
                    defaultActionText,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ));
  }
}
