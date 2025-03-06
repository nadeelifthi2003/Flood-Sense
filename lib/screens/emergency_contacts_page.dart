import 'package:flutter/material.dart';

class EmergencyContactsPage extends StatefulWidget {
  const EmergencyContactsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmergencyContactsPageState createState() => _EmergencyContactsPageState();
}

class _EmergencyContactsPageState extends State<EmergencyContactsPage> {
  final TextEditingController _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency Contacts"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _contactController,
              decoration: InputDecoration(labelText: "Add Emergency Contact"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save Contact Logic
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text("Save Contact"),
            ),
          ],
        ),
      ),
    );
  }
}
