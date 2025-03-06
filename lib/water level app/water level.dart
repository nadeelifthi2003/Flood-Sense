// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

const Color cobaltBlue = Color(0xFF1044AB);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterLevelScreen(),
    );
  }
}

class WaterLevelScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _WaterLevelScreenState createState() => _WaterLevelScreenState();
}

class _WaterLevelScreenState extends State<WaterLevelScreen> {
  double waterLevel = 0.0; // Initial water level percentage

  void refreshWaterLevel() {
    setState(() {
      // Reset water level to 0 instead of incrementing
      waterLevel = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adds padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
          children: [
            const Text(
              'Water Level',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: cobaltBlue,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 130), // Increased spacing
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: CircularProgressIndicator(
                      value: waterLevel / 100,
                      strokeWidth: 8,
                      backgroundColor: Colors.grey.shade300,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.black),
                    ),
                  ),
                  Text(
                    '${waterLevel.toInt()}%',
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60), // Increased spacing
            Center(
              child: ElevatedButton.icon(
                onPressed: refreshWaterLevel,
                icon: const Icon(Icons.refresh, color: Colors.black),
                label: const Text('Refresh',
                    style: TextStyle(color: Colors.white, fontSize: 17.92)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: cobaltBlue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: cobaltBlue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shield), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),*/
    );
  }
}
