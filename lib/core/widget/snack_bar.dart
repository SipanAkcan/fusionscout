// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fusionscout/core/state/base_state.dart';

class MySnackBar extends StatefulWidget {
  MySnackBar({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);
  Color color;
  String label;
  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends BaseState<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(0.1),
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Center(
        child: Text(widget.label),
      ),
    );
  }
}
