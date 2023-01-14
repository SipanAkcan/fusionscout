import 'package:flutter/material.dart';
import 'package:fusionscout/core/constants/constants.dart';
import 'package:fusionscout/core/util/color_utility.dart';
import 'package:fusionscout/core/util/style.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get theme => Theme.of(context);

  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(context).size.height * val;

  TitleStyle titleStyle = TitleStyle();
  LabelStyle labelStyle = LabelStyle();

  ColorUtility colorUtility = ColorUtility();
  ProjectConstants constants = ProjectConstants();
}
