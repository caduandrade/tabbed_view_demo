import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

mixin SnackBarMixin {
  void showSnackBar(
      {required BuildContext context, required String msg, int seconds = 1}) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg), duration: Duration(seconds: seconds)));
  }
}
