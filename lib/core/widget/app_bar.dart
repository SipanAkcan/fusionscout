import 'package:flutter/material.dart';
import 'package:fusionscout/core/constants/constants.dart';
import 'package:fusionscout/core/state/base_state.dart';
import 'package:fusionscout/core/util/style.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBar(String subtitle) {
  ProjectConstants constants = ProjectConstants();
  return AppBar(
    iconTheme: IconThemeData(color: colorUtility.black),
    backgroundColor: colorUtility.transparent,
    elevation: 0,
    title: Title(
      constants: constants,
      subtitle: subtitle,
    ),
  );
}

class Title extends StatefulWidget {
  Title({
    Key? key,
    required this.constants,
    required this.subtitle,
  }) : super(key: key);

  final ProjectConstants constants;
  String subtitle;

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends BaseState<Title> {
  @override
  Widget build(BuildContext context) {
    String appName = widget.constants.appName;
    String subtitle = widget.subtitle;
    return Text(
      "$appName - $subtitle",
      style: GoogleFonts.questrial(textStyle: titleStyle.title_dark)
          .copyWith(fontSize: 30),
    );
  }
}
