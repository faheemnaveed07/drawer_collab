import 'package:flutter/material.dart';
import '../utils/app_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          profileAppBarTitle, // Updated variable name
          style: TextStyle(color: appBarTextColor), // Updated variable name
        ),
        backgroundColor: primaryColor, // Updated variable name
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding), // Updated variable name
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --- Profile Avatar ---
              const CircleAvatar(
                radius: 60,
                backgroundColor: profileAvatarBgColor, // Updated variable name
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // --- User Name ---
              const Text(
                profileName, // Updated variable name
                style: profileNameTextStyle, // Updated variable name
              ),

              const SizedBox(height: 5),

              // --- User Email ---
              const Text(
                profileEmail, // Updated variable name
                style: profileEmailTextStyle, // Updated variable name
              ),

              const SizedBox(height: 30),

              const Divider(
                thickness: 1,
              ),

              const SizedBox(height: 10),

              // --- Options List ---
              _buildProfileOption(
                icon: Icons.edit,
                title: 'Edit Profile',
                onTap: () {
                  print('Edit Profile Tapped');
                },
              ),
              _buildProfileOption(
                icon: Icons.settings,
                title: 'Account Settings',
                onTap: () {
                  print('Settings Tapped');
                },
              ),
              _buildProfileOption(
                icon: Icons.notifications,
                title: 'Notifications',
                onTap: () {
                  print('Notifications Tapped');
                },
              ),
              _buildProfileOption(
                icon: Icons.logout,
                title: 'Log Out',
                color: dangerColor, // Updated variable name
                onTap: () {
                  print('Log Out Tapped');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: color ?? iconColor, // Updated variable name
      ),
      title: Text(
        title,
        style: listTileTextStyle.copyWith(color: color), // Updated variable name
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: iconColor, // Updated variable name
      ),
      onTap: onTap,
    );
  }
}