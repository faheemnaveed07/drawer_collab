// lib/screens/home_page.dart

import 'package:drawer_ui_collab/model/my_drawer.dart';
import 'package:flutter/material.dart';
import '../utils/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle, style: TextStyle(color: appBarTextColor)),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: appBarTextColor),
      ),
      drawer:MyDrawer(),
      body: const Center(
        child: Text(
          welcomeText,
          style: welcomeTextStyle,
        ),
      ),
    );
  }
}