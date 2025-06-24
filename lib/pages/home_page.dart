// lib/screens/home_page.dart

import 'package:flutter/material.dart';
import '../utils/app_constants.dart';
import '../model/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          appBarTitle,
          style: TextStyle(color: appBarTextColor),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: appBarTextColor),
      ),
      drawer: const MyDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE3F2FD), Color(0xFFBBDEFB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/one.png'), // Ensure this image exists
            ),
            const SizedBox(height: 15),
            const Text(
              'Hello, John!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              welcomeText,
              style: welcomeTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.push(...); // Add navigation
              },
              icon: const Icon(Icons.person),
              label: const Text("Go to Profile"),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.push(...); // Add navigation
              },
              icon: const Icon(Icons.settings),
              label: const Text("Settings"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[700],
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
