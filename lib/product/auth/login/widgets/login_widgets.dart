// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fusionscout/core/state/base_state.dart';
import 'package:fusionscout/product/auth/login/constants/login_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatelessWidget {
  LoginConstants loginConstants = LoginConstants();
  SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(loginConstants.signUp));
  }
}

class EmailWidget extends StatefulWidget {
  EmailWidget({Key? key, required this.emailController}) : super(key: key);

  TextEditingController emailController;

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends BaseState<EmailWidget> {
  LoginConstants loginConstants = LoginConstants();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dynamicWidth(0.95),
      height: dynamicHeight(0.1),
      decoration: BoxDecoration(
        color: colorUtility.selectedColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: loginConstants.email,
              hintStyle: GoogleFonts.questrial(),
            ),
            controller: widget.emailController,
          ),
        ),
      ),
    );
  }
}

class PasswordWidget extends StatefulWidget {
  PasswordWidget({Key? key, required this.passwordController})
      : super(key: key);

  TextEditingController passwordController;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends BaseState<PasswordWidget> {
  bool isObsecured = true;
  LoginConstants loginConstants = LoginConstants();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dynamicWidth(0.95),
      height: dynamicHeight(0.1),
      decoration: BoxDecoration(
        color: colorUtility.selectedColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextField(
            obscureText: isObsecured,
            controller: widget.passwordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
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
              border: InputBorder.none,
              hintText: loginConstants.password,
              hintStyle: GoogleFonts.questrial(),
            ),
          ),
        ),
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

class WelcomeToWidget extends StatefulWidget {
  const WelcomeToWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeToWidget> createState() => _WelcomeToWidgetState();
}

class _WelcomeToWidgetState extends BaseState<WelcomeToWidget> {
  LoginConstants loginConstants = LoginConstants();
  @override
  Widget build(BuildContext context) {
    return Text(
      loginConstants.welcomeTo,
      style: GoogleFonts.questrial(textStyle: labelStyle.label_dark),
    );
  }
}

class ImageRowWidget extends StatefulWidget {
  const ImageRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageRowWidget> createState() => _ImageRowWidgetState();
}

class _ImageRowWidgetState extends BaseState<ImageRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60,
            width: 90,
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/FRC_Logo.svg/1200px-FRC_Logo.svg.png'),
          ),
        ),
        const Text(
          'X',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60,
            width: 90,
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/FRC_Logo.svg/1200px-FRC_Logo.svg.png'),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
