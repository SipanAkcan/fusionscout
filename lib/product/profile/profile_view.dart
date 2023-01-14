// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:fusionscout/core/state/base_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/widget/app_bar.dart';
import '../../core/widget/drawer.dart';
import './profile_view_model.dart';

class ProfileView extends ProfileViewModel {
  late SharedPreferences preferences;
  var token;
  @override
  void initState() {
    super.initState();
    getLocalData();
  }

  Future getLocalData() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      token = preferences.getString("token");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Profile"),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: CircleAvatar(
                radius: 75,
              ),
            ),
          ),
          NameWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UsernameWidget(),
          ),
          Spacer(),
          TeamNameWidget(),
          Spacer(),
          EmailWidget(),
          Spacer(),
          PasswordWidget(),
          Spacer(
            flex: 15,
          ),
        ],
      ),
    );
  }
}

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends BaseState<PasswordWidget> {
  bool isObsecured = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dynamicWidth(0.9),
      height: dynamicHeight(0.07),
      decoration: BoxDecoration(
        color: colorUtility.selectedColor,
        borderRadius: BorderRadius.all(
          Radius.circular(35),
        ),
      ),
      child: Center(
          child: Row(
        children: [
          Spacer(),
          Text(
            "password",
            style: GoogleFonts.questrial(textStyle: labelStyle.label_dark),
          ),
          Spacer(),
          Center(
            child: IconButton(
              onPressed: () {},
              icon: IconButton(
                  splashColor: colorUtility.transparent,
                  focusColor: colorUtility.transparent,
                  hoverColor: colorUtility.transparent,
                  disabledColor: colorUtility.transparent,
                  highlightColor: colorUtility.transparent,
                  onPressed: () {
                    setState(() {
                      isObsecured = !isObsecured;
                    });
                  },
                  icon: isObsecured
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)),
            ),
          )
        ],
      )),
    );
  }
}

class EmailWidget extends StatefulWidget {
  const EmailWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends BaseState<EmailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dynamicWidth(0.9),
      height: dynamicHeight(0.07),
      decoration: BoxDecoration(
        color: colorUtility.selectedColor,
        borderRadius: BorderRadius.all(
          Radius.circular(35),
        ),
      ),
      child: Center(
          child: Text(
        "email",
        style: GoogleFonts.questrial(textStyle: labelStyle.label_dark),
      )),
    );
  }
}

class TeamNameWidget extends StatefulWidget {
  const TeamNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamNameWidget> createState() => _TeamNameWidgetState();
}

class _TeamNameWidgetState extends BaseState<TeamNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "teamname",
        style: GoogleFonts.jost().copyWith(fontSize: 24),
      ),
    );
  }
}

class UsernameWidget extends StatefulWidget {
  const UsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<UsernameWidget> createState() => _UsernameWidgetState();
}

class _UsernameWidgetState extends BaseState<UsernameWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "username",
        style: GoogleFonts.questrial(textStyle: labelStyle.label_dark),
      ),
    );
  }
}

class NameWidget extends StatefulWidget {
  const NameWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends BaseState<NameWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "name-surname",
        style: GoogleFonts.questrial(textStyle: titleStyle.title_dark),
      ),
    );
  }
}
