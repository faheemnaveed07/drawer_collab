import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Setting',),
        centerTitle: true,
      ),
      body: ListTile(
        leading: const Icon(Icons.settings),
        title:  Text(appbartext),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Tap action here
        },
      ),
    );
  }
}
