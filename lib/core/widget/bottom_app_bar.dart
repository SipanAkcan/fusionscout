// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fusionscout/core/state/base_state.dart';

class MyBottomAppBar extends StatefulWidget {
  MyBottomAppBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  int currentIndex;

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends BaseState<MyBottomAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
            focusColor: colorUtility.transparent,
            hoverColor: colorUtility.transparent,
            splashColor: colorUtility.transparent,
            disabledColor: colorUtility.transparent,
            highlightColor: colorUtility.transparent,
            onPressed: () {
              /*navigateWithoutBack(context,
                  seconds: 0, widget: const HomeView());*/
            },
            icon: const Icon(
              Icons.home_rounded,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            focusColor: colorUtility.transparent,
            hoverColor: colorUtility.transparent,
            splashColor: colorUtility.transparent,
            disabledColor: colorUtility.transparent,
            highlightColor: colorUtility.transparent,
            onPressed: () {
              /*navigateWithoutBack(context,
                  seconds: 0, widget: const ProfileView());*/
            },
            icon: const Icon(
              Icons.person_rounded,
            ),
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            focusColor: colorUtility.transparent,
            hoverColor: colorUtility.transparent,
            splashColor: colorUtility.transparent,
            disabledColor: colorUtility.transparent,
            highlightColor: colorUtility.transparent,
            onPressed: () {
              /*navigateWithoutBack(context,
                  seconds: 0, widget: const SettingsView());*/
            },
            icon: const Icon(
              Icons.settings_rounded,
            ),
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            focusColor: colorUtility.transparent,
            hoverColor: colorUtility.transparent,
            splashColor: colorUtility.transparent,
            disabledColor: colorUtility.transparent,
            highlightColor: colorUtility.transparent,
            onPressed: () {
              /*navigateWithoutBack(context,
                  seconds: 0, widget: const LoginView());*/
            },
            icon: const Icon(
              Icons.exit_to_app_rounded,
            ),
          ),
          label: 'Log Out',
        ),
      ],
      unselectedIconTheme: IconThemeData(color: colorUtility.selectedDark),
      currentIndex: widget.currentIndex,
    );
  }
}
