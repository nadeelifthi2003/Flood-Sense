import 'package:flutter/material.dart';
import 'sensors/water_level.dart'; // Corrected Import

void main() {
  runApp(const FloodSenseApp());
}

class FloodSenseApp extends StatelessWidget {
  const FloodSenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloodSense',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: WaterLevelScreen(), // Directly show the Water Level Page
    );
  }
}
