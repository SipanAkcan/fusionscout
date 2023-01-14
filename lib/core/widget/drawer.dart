import 'package:flutter/material.dart';
import 'package:fusionscout/core/service/navigate.dart';
import 'package:fusionscout/core/state/base_state.dart';
import 'package:fusionscout/product/auth/login/login.dart';
import 'package:fusionscout/product/profile/profile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../product/home/home.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends BaseState<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: FusionScoutWidget(),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: HomeButton(),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ProfileButton(),
            ),
            Spacer(),
            QuitButton(),
          ],
        ),
      ),
    );
  }
}

class QuitButton extends StatefulWidget {
  const QuitButton({
    Key? key,
  }) : super(key: key);

  @override
  State<QuitButton> createState() => _QuitButtonState();
}

class _QuitButtonState extends BaseState<QuitButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          navigateWithoutBack(context, seconds: 0, widget: const Login()),
      child: Text(
        "Quit",
        style: GoogleFonts.questrial(textStyle: labelStyle.label_dark)
            .copyWith(fontSize: 25),
      ),
    );
  }
}

class ProfileButton extends StatefulWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends BaseState<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          navigateWithoutBack(context, seconds: 0, widget: const Profile()),
      child: Text(
        "Profile",
        style: GoogleFonts.questrial(textStyle: labelStyle.label_dark)
            .copyWith(fontSize: 25),
      ),
    );
  }
}

class HomeButton extends StatefulWidget {
  const HomeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends BaseState<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          navigateWithoutBack(context, seconds: 0, widget: const Home()),
      child: Text(
        "Home",
        style: GoogleFonts.questrial(textStyle: labelStyle.label_dark)
            .copyWith(fontSize: 25),
      ),
    );
  }
}

class FusionScoutWidget extends StatefulWidget {
  const FusionScoutWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FusionScoutWidget> createState() => _FusionScoutWidgetState();
}

class _FusionScoutWidgetState extends BaseState<FusionScoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      constants.appName,
      style: GoogleFonts.questrial(textStyle: titleStyle.title_dark),
    );
  }
}
