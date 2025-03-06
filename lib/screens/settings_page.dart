import 'package:flutter/material.dart';
import 'notifications_settings_page.dart';
import 'profile_settings_page.dart';
import 'emergency_contacts_page.dart';
import 'alert_sensitivity_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          // General Settings
          SettingsSection(
            title: "General",
            tiles: [
              SettingsTile(
                title: "Notifications",
                subtitle: "Manage flood alerts",
                icon: Icons.notifications,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationsSettingsPage()));
                },
              ),
              SettingsTile(
                title: "Profile & Password",
                subtitle: "Update profile & change password",
                icon: Icons.person,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileSettingsPage()));
                },
              ),
            ],
          ),

          // Flood Management Settings
          SettingsSection(
            title: "Flood Management",
            tiles: [
              SettingsTile(
                title: "Emergency Contacts",
                subtitle: "Set up emergency numbers",
                icon: Icons.phone,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmergencyContactsPage()));
                },
              ),
              SettingsTile(
                title: "Flood Alerts Sensitivity",
                subtitle: "Adjust alert sensitivity",
                icon: Icons.warning,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AlertSensitivityPage()));
                },
              ),
            ],
          ),

          // Account Settings
          SettingsSection(
            title: "Account",
            tiles: [
              SettingsTile(
                title: "Logout",
                subtitle: "Sign out of your account",
                icon: Icons.exit_to_app,
                onTap: () {
                  // Logout action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> tiles;

  // ignore: use_key_in_widget_constructors
  const SettingsSection({required this.title, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ...tiles,
        Divider(),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const SettingsTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
