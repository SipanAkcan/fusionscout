// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fusionscout/product/auth/login/constants/login_constants.dart';
import 'package:fusionscout/product/auth/login/widgets/login_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import './login_view_model.dart';

class LoginView extends LoginViewModel {
  final LoginConstants _loginConstants = LoginConstants();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getLocalData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: WelcomeToWidget()),
            const Center(child: FusionScoutWidget()),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EmailWidget(
                      emailController: _emailController,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PasswordWidget(
                    passwordController: _passwordController,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton.filled(
                  onPressed: () {
                    createRequest(
                        _emailController, _passwordController, context);
                  },
                  child: Text(
                    _loginConstants.login,
                    style: GoogleFonts.questrial(),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SignUpWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
