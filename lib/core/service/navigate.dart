import 'package:flutter/material.dart';

void navigate(BuildContext context,
    {required int seconds, required Widget widget}) {
  Future.delayed(
      Duration(
        seconds: seconds,
      ), () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  });
}

void navigateWithoutBack(BuildContext context,
    {required int seconds, required Widget widget}) {
  Future.delayed(
      Duration(
        seconds: seconds,
      ), () {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
    );
  });
}
