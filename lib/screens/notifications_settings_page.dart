import 'package:flutter/material.dart';

class NotificationsSettingsPage extends StatefulWidget {
  const NotificationsSettingsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationsSettingsPageState createState() =>
      _NotificationsSettingsPageState();
}

class _NotificationsSettingsPageState extends State<NotificationsSettingsPage> {
  bool floodAlerts = true;
  bool evacuationAlerts = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Settings"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text("Flood Alerts"),
            subtitle: Text("Receive alerts about rising water levels"),
            value: floodAlerts,
            onChanged: (bool value) {
              setState(() {
                floodAlerts = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Evacuation Alerts"),
            subtitle: Text("Get notified when evacuation is necessary"),
            value: evacuationAlerts,
            onChanged: (bool value) {
              setState(() {
                evacuationAlerts = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
