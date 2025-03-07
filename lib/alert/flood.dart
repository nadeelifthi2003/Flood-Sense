import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FloodAlertScreen(),
    );
  }
}

class FloodAlertScreen extends StatefulWidget {
  const FloodAlertScreen({super.key});

  @override
  _FloodAlertScreenState createState() => _FloodAlertScreenState();
}

class _FloodAlertScreenState extends State<FloodAlertScreen> {
  String status = "Safe";
  Color statusColor = Colors.green;

  void updateStatus(String newStatus) {
    setState(() {
      status = newStatus;
      if (newStatus == "Safe") {
        statusColor = Colors.green;
      } else if (newStatus == "Caution") {
        statusColor = Colors.yellow;
      } else {
        statusColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flood Alert System"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    "Flood Alert",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1044AB)), // Changed color here
                  ),
                  const SizedBox(height: 25),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: statusColor,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Current Status: ", style: TextStyle(fontSize: 18)),
                      Text(
                        status,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    "pH Level",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1044AB)), // Changed color here
                  ),
                  const SizedBox(height: 15),
                  const Text("Click below to calculate pH", style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 15),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    child: const Text("Go", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => updateStatus("Safe"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                  child: const Text("Safe", style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  onPressed: () => updateStatus("Caution"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                  child: const Text("Caution", style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  onPressed: () => updateStatus("Danger"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                  child: const Text("Danger", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}