import 'package:flutter/material.dart';

import '../screens/about_page.dart';
import '../screens/contact_page.dart';
import '../screens/profile_page.dart';
import '../screens/setting_page.dart';
import '../utils/app_constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: drawerHeaderColor,
            ),
            child: Text(
              drawerHeaderText,
              style: TextStyle(
                color: drawerTextColor,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () {
              Navigator.pop(context);
               Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact Us'),
            onTap: () {
              // Contact Page par navigate karein
              Navigator.pop(context);

               Navigator.push(context, MaterialPageRoute(builder: (context) =>  ContactPage()));
            },
          ),
        ],
      ),
    );
  }
}
