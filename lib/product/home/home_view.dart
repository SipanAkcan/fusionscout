// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/widget/app_bar.dart';
import '../../core/widget/drawer.dart';
import './home_view_model.dart';

class HomeView extends HomeViewModel {
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
      appBar: appBar("Home"),
      drawer: const MyDrawer(),
      body: const Center(),
    );
  }
}
