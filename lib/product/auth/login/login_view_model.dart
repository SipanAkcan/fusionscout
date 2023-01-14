import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fusionscout/core/manager/network_manager.dart';
import 'package:fusionscout/core/service/navigate.dart';
import 'package:fusionscout/core/util/style.dart';
import 'package:fusionscout/core/widget/snack_bar.dart';
import 'package:fusionscout/product/auth/login/model/login_model.dart';
import 'package:fusionscout/product/home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './login.dart';

abstract class LoginViewModel extends State<Login> {
  late SharedPreferences _preferences;
  var token;

  Future getLocalData() async {
    _preferences = await SharedPreferences.getInstance();
    _preferences.clear();
    _preferences.setString("token", token);
  }

  final NetworkManager _networkManager = NetworkManager();
  Dio dio = Dio();

  Future<bool?> loginRequest(String url, String email, String password) async {
    try {
      Response response = await dio.post(
        _networkManager.baseUrl + url,
        data: {"email": "eve.holt@reqres.in", "password": "cityslicka"},
      );

      // ignore: deprecated_member_use
      if (response.statusCode == HttpStatus.OK) {
        final responseBody = response.data;
        if (responseBody is Map<String, dynamic>) {
          var responseBodyData = LoginModel.fromJson(responseBody);
          token = _preferences.setString(
            "token",
            responseBodyData.token.toString(),
          );
          return true;
        }
      } else {}
    } catch (e) {
      return false;
    }
    return false;
  }

  Future<void> createRequest(
    TextEditingController emailController,
    TextEditingController passwordController,
    BuildContext context,
  ) async {
    var request = await loginRequest(
        "/api/login", emailController.text, passwordController.text);
    if (request == true) {
      // ignore: use_build_context_synchronously
      navigateWithoutBack(context, seconds: 0, widget: const Home());
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: MySnackBar(
              color: colorUtility.error,
              label: "Login Failed! Check your email or password"),
        ),
      );
    }
  }
}
