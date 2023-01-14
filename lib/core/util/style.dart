// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fusionscout/core/util/color_utility.dart';

ColorUtility colorUtility = ColorUtility();

double titleFontSize = 35;
double labelFontSize = 20;

class TitleStyle {
  TextStyle get title_dark => TextStyle(
        fontSize: titleFontSize,
        color: colorUtility.black,
      );
  TextStyle get title_light => TextStyle(
        fontSize: titleFontSize,
        color: colorUtility.black,
      );
}

class LabelStyle {
  TextStyle get label_dark => TextStyle(
        fontSize: labelFontSize,
        color: colorUtility.black,
      );
  TextStyle get label_light =>
      TextStyle(fontSize: labelFontSize, color: colorUtility.white);
}
